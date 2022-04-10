package main

import (
	"context"
	"fmt"
	"os"
	"path/filepath"
	"time"

	"github.com/jhillyerd/enmime"
	"github.com/olivere/elastic"
)

// Email struct provide data structure for json doc from/to ES
type Email struct {
	From         string    `json:"from"`
	To           []string  `json:"to,omitempty"`
	Subject      string    `json:"subject,omitempty"`
	Body         string    `json:"body,omitempty"`
	BodyLength   int       `json:"bodylength,omitempty"`
	InlineAttach bool      `json:"inline"`
	Attachment   bool      `json:"attachment"`
	Received     time.Time `json:"received,omitempty"`
}

func parseEmail(filename string, email *Email) (err error) {
	r2, err := os.Open(filename)
	if err != nil {
		fmt.Print(err)
		return
	}

	// Parse message body with enmime.
	env, err := enmime.ReadEnvelope(r2)
	if err != nil {
		//fmt.Print(err)
		return
	}

	if len(env.GetHeader("Date")) > 0 {
		email.Received, err = time.Parse("Mon, 02 Jan 2006 15:04:05 -0700", env.GetHeader("Date"))
	}
	email.Subject = env.GetHeader("Subject")
	email.Body = env.Text
	email.From = env.GetHeader("From")

	email.To = make([]string, 0, 1000)
	alist, _ := env.AddressList("To")
	for _, addr := range alist {
		email.To = append(email.To, addr.Address)
	}
	email.BodyLength = len(env.Text)
	email.InlineAttach = len(env.Inlines) > 0
	email.Attachment = len(env.Attachments) > 0

	return
}

func main() {
	// Create a client
	client, err := elastic.NewSimpleClient(elastic.SetURL("http://192.168.1.6:9200"))
	if err != nil {
		fmt.Printf("omg ES not working: %s", err)
		os.Exit(255)
		// Handle error
	}
	ctx := context.Background()

	n := 0
	err = filepath.Walk("data/gonuts/", func(path string, info os.FileInfo, err error) error {
		if err != nil {
			fmt.Printf("prevent panic by handling failure accessing a path %q: %v\n", path, err)
			return err
		}

		if !info.IsDir() {
			//fmt.Printf("visited file : %q\n", path)

			email := &Email{}
			parseEmail(string(path), email)
			//fmt.Printf("Email = %+v \n", email)

			put1, putErr := client.Index().
				Index("gonuts").
				Type("email").
				BodyJson(email).
				Do(ctx)

			if putErr != nil {
				// Handle error
				panic(putErr)
			}

			n++
			if n%1000 == 1 {
				fmt.Printf("\n>> Created %d doc: %s", n, put1.Id)
			}
		}
		return nil
	})
	if err != nil {
		fmt.Printf("error walking the path %v\n", err)
		return
	}
}

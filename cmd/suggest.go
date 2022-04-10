package main

import (
	"context"
	"encoding/json"
	"fmt"
	"os"

	"github.com/olivere/elastic"
)

func main() {
	// Create a client
	client, err := elastic.NewSimpleClient(elastic.SetURL("http://192.168.56.10:9200"))
	if err != nil {
		fmt.Printf("omg ES not working: %s", err)
		os.Exit(255)
		// Handle error
	}
	ctx := context.Background()

	s := elastic.NewCompletionSuggester("metric-suggest").
		Prefix("ESS.p").
		Field("metric_sugg")

	src, err := s.Source(true)
	if err != nil {
		fmt.Printf("%s\n", err)
		os.Exit(255)
	}
	data, err := json.Marshal(src)
	if err != nil {
		fmt.Printf("marshaling to JSON failed: %v", err)
	}
	got := string(data)
	fmt.Printf("%v\n", got)

	searchService := client.Search().
		Index("metrics").
		//SearchSource(ss).
		Suggester(s)

	searchResult, err := searchService.Do(ctx)
	if err != nil {
		panic(err)
	}

	suggestions := searchResult.Suggest["metric-suggest"][0].Options

	for i := range suggestions {
		fmt.Printf("%s\n", suggestions[i].Text)
	}
}

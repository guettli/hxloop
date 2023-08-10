package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/guettli/hxloop/static"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hi there, I love %s!", r.URL.Path[1:])
}

var port = 8080

func main() {
	http.Handle("/static/", http.StripPrefix("/static/", http.FileServer(http.FS(static.StaticFiles))))
	http.HandleFunc("/", handler)
	fmt.Printf("Starting server. Try http://127.0.0.1:%d\n", port)
	log.Fatal(http.ListenAndServe(":"+fmt.Sprint(port), nil))
}

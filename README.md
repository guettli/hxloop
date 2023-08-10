# hxloop: Build Dashboards with htmx.org

```
go run cmd/hxloop/main.go
```

Then open http://127.0.0.1:8080


# Next:

datastructures:

in URL via name /board/foo/

# Ideas

[breadcrumbs](https://getbootstrap.com/docs/5.3/components/breadcrumb/) like home/k8s/resources/myCRD/my-object

This means I need a sitemap. This should get loaded lazy, otherwise starting the server takes too long.

I need a django-like reverse() to get from the URL to a TreeNode.

Autocomplete would be nice. But fetching all objects from all resources could take some time.



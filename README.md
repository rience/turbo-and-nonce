# Turbo Drive and Nonce

This simple application shows problem in Firefox and Safari browsers when navigating between two pages, where second page is using inline stylesheet. There are two pages

* `/first/show`
* `/second/show`

Second page is using different layout (with different `<head />`) that has inline stylesheet, written like this

```
<style type='text/css' nonce="<%= content_security_policy_nonce %>">
  body {
    background-color: red
  }
</style>
```

**Scenario**

1. Run `bundle install`
2. Start server `bundle exec rails s`
3. Open http://localhost:3000/first/show
4. Click link "Go to Second"

Result: Background colour will not change. However, when you reload page it will.

**Workaround**

If you add `data-turbo-track=reload` to custom stylesheet it will work.

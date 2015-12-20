# Middleman-Edit-Forge

`middleman-edit-forge` is an extension for the [Middleman](http://middlemanapp.com/) static site generator that permit to add
a link to edit source code directly on some forges like GitHub, GitLab, or BitBucket.
 the use of the [Piwik](http://piwik.org/) web analytics platform.

## Installation

Just add `gem "middleman-edit-forge"` to your existing Gemfile and run `bundle install`.

## Configuration

```ruby
activate :edit_forge do |e|
    p.forge = 'github'
    p.project = 'example/example-site'
end
``` 

forge is one of the supported forge, 'github' is the default.

project is the project name, fully qualified (name/repo).

## Helper

The extension adds 1 new helper to Middleman that provides the html code linking to
the edition on the configured forge

```erb
<%= insert_link_edit_forge %>
```



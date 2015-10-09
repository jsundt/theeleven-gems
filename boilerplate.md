[back to overview](../../../tree/feature/mark2#the-eleven-gems)


# The Eleven Boilerplate
Default files and folders for ruby projects at The Eleven.

Also includes some useful vendor files that are used in a lot of projects.


### Gemfile

```ruby
gem 'theeleven-boilerplate', github: 'jsundt/theeleven-gems' #add for generator
```

Add line above to gemfile and execute: $ bundle


### Installation

**Only run in a new ruby app!**
This gem replace some of the files in your app, including the application layout, .css, and .js files. You will be asked to confirm before the files are overwritten.

```
cd your-new-project

rails generate theeleven:boilerplate:create
```

You'll need to add application__core.js to the asset initializer. A rails error will tell you how...


### Icon sets

The boilerplate includes a couple of default svg icon set images. Use with external svg file + svg4everybody polyfill. Or as inline svg by uncommenting the sprite in the layout file.

```erb
<!-- External svg -->
<svg class="icon">
  <use xlink:href="<%= asset_path 'te-social-icons.svg#social__twitter' %>"></use>
</svg>

<!-- Inline svg -->
<svg class="icon">
  <use xlink:href="#social__twitter"></use>
</svg>
```

*links to look at svg sprites are coming here soonish...*


### List of Vendors

* **modernizr** - v.3.1.0 custom [website](https://modernizr.com/)
* **jQuery.scrollTo** - version 2.1.3 [github](https://github.com/flesler/jquery.scrollTo)
* **svg4everybody** - version 2.0.0 [github](https://github.com/jonathantneal/svg4everybody)

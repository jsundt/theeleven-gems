[back](/)


# The Eleven Boilerplate
Default files and folders for ruby projects at The Eleven.

Also includes some useful vendor files that are used in a lot of projects.


### Gemfile

```ruby
gem 'theeleven-boilerplate', github: 'jsundt/theeleven-gems' #add for generator
```

And then execute: $ bundle


### Installation

**Only run in a new ruby app!**
This gem replace some of the files in your app, including the application layout, .css, and .js files. You will be asked to confirm before the files are overwritten.

```
cd your-new-project

rails generate theeleven:boilerplate:create
```


### List of Vendors

* **jQuery.scrollTo** - version 1.4.14 [github](https://github.com/flesler/jquery.scrollTo)
* **svg4everybody** - version 2.0.0 [github](https://github.com/jonathantneal/svg4everybody)

[back](/)


# Flexbox Grid
The Eleven's simple flexbox grid for modern browsers


### Gemfile

```ruby
gem 'theeleven-flex', github: 'jsundt/theeleven-gems' #add for flexbox
```

And then execute: $ bundle


### Installation

Add this line to your applications scss file after your project specific variables:

```scss
@import 'your-project-variables';

@import 'theeleven-flex/swolegrid';
```


### Overwritting variables

To get a list of the default variables in this version of flex run:

```
cd your-new-project

rails generate theeleven:flex:custom
```

This will generate a overrides.scss file in your /stylesheets/base/ folder. You can use this file or move the variables you use over to your own config file.

Remember to remove the default flags and **place your variables before** the flexbox grid scss file.

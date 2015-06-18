# vertical_timeline_rails

The `vertical_timeline_rails` integrates the [Vertical Timeline](http://codyhouse.co/gem/vertical-timeline) library with the [Rails assets pipeline](http://guides.rubyonrails.org/asset_pipeline.html).

This gem is compatible with Rails 3.1.1 and higher (including Rails 4).

## Installation

Add `vertical_timeline_rails` to your `Gemfile`:

```ruby
# Gemfile

gem 'vertical_timeline_rails'
```

Then run `$ bundle install`.

You can also install it yourself as:

```
$ gem install vertical-timeline-rails
```

## Configuration

You need to add JavaScript and stylesheet from Vertical Timeline this way:

```css
/* app/assets/stylesheets/application.css */

/*
 * ...
 *= require vertical-timeline
 * ...
 */
```

```js
// app/assets/javascripts/application.js

// ...
//= require vertical-timeline
// ...
```

Vertical Timeline provides a few SVG files from [Nucleo Library](https://nucleoapp.com). If you want to use them, don't forget to add SVG files to your precompile configuration :

```ruby
# config/initializers/assets.rb

# ...
Rails.application.config.assets.precompile += %w( *.svg )
# ...
```

## Usage

You must provide a title (`String`), a date (`Date`), an image (`String`) and a block.

```erb
<%= timeline_container('Awesome title', Date.today, 'cd-icon-picture.svg') do %>
  <p>Lorem ipsum dolor sit amet.</p>
  <%= link_to 'See item', '#', class: 'cd-read-more' %>
<% end %>
```

## Specs

`@TODO`

*Yes, I will write tests.*

## Changelog

**[0.1.0]** 2015-06-19: First version and readme for instructions.

## Contributing

1. Fork it ( https://github.com/rhannequin/vertical-timeline-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

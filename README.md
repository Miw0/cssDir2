Simple ruby script for compass to copy the generated css file to a different location.

After including, make sure to set the css_dir2 variable to the location where the css file needs to be copied.
(e.g. css_dir2 = "path/to/folder")

# Welcome to cssDir2

cssDir2 is a simple ruby script for compass to copy the generated css file to a different location.

# How to install?

1. Install [Compass](http://compass-style.org/)<br />
   `$ gem update --system`<br />
   `$ gem install compass`
2. Install cssDir2<br />
   `$ gem install cssDir2`
3. Require it in your config.rb<br />
   `require 'cssDir2'`<br />
4. That's it!

# How to use it?

Open up your __config.rb__ and create a variable where you specify the path to the location where you want cssDir2 to copy the generated css file to __based on the location of your sass file__.

```ruby
css_dir2 = "../path/to/directory"
```

When the specified directory doesn't exist, cssDir2 will create it.<br />
Now call cssDir2 and start watching your project with Compass!

```ruby
CssDir2.new(css_dir, css_dir2)
```

You could also skip the creation of a variable and pass in the path directly into the 2nd argument.

```ruby
CssDir2.new(css_dir, "../path/to/directory")
```

__An example config.rb file would look like the following:__

```ruby
# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "stylesheets"
sass_dir = "sass"
images_dir = "images"
javascripts_dir = "javascripts"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

# cssDir2
require 'cssDir2'

css_dir2 = "../css"

CssDir2.new(css_dir, css_dir2)
```
# Copies the generated css-file to another folder (folder gets created if it doesn't exist)
require "fileutils"
require "compass"

Compass.configuration.on_stylesheet_saved do |file|
    if File.exists?(file)
        directory = File.dirname(file) + "/" + css_dir2 + "/"

        if !File.exists?(directory) && !File.directory?(directory)
            Dir.mkdir(directory)
            puts ">>> Created directory " + css_dir2
        end

        FileUtils.cp(file, directory + File.basename(file))
        puts ">>> Copied " + File.basename(file) + " to " + css_dir2
    end
end

module Compass
    module Configuration
        def self.strip_trailing_separator(*args)
            Data.strip_trailing_separator(*args)
        end
    end
end

Compass::Configuration.add_configuration_property(
    :css_dir2,
    "Specify the path to where you want the CSS-File be copied based on your SCSS-File \n css_dir2 = 'path/to/folder'"
)
# Copies the generated css-file to another folder (folder gets created if it doesn't exist)
require "fileutils"

on_stylesheet_saved do |file|
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
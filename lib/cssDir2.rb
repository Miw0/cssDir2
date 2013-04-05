require 'fileutils'
require 'colorize'
require 'compass'

Compass.configuration.on_stylesheet_saved do |file|
    if File.exists?(file)
        directory = File.dirname(file) + "/" + css_dir2 + "/"

        if !File.exists?(directory) && !File.directory?(directory)
            Dir.mkdir(directory)
            puts "directory ".green + css_dir2 + "/"
        end

        basefile = File.basename(file)

        FileUtils.cp(file, directory + basefile)
        puts "copy ".blue + css_dir + "/" + basefile + " to " + css_dir2 + "/"+ basefile
    end
end
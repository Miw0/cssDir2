require 'fileutils'
require 'colorize'
require 'compass'

class CssDir2
    def initialize(css_dir, css_dir2)
        puts "cssDir2 is now running...".green

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
    end
end
Gem::Specification.new do |s|
    # Release Specific Information
    s.version = "1.0.0"
    s.date    = "2013-03-30"

    # Gem Details
    s.name        = "cssDir2"
    s.authors     = ["Michael 'Miw0' Worm"]
    s.summary     = %q{A Compass Extension to copy the generated css file to a different location.}
    s.description = %q{A Compass Extension to copy the generated css file to a different location.}
    s.email       = "work@michael-worm.de"
    s.homepage    = "http://www.michael-worm.de/"

    # Gem Files
    s.files  = %w(README.md)
    s.files += Dir.glob("lib/**/*.*")

    # Gem Bookkeeping
    s.rubygems_version = %q{1.3.6}
    s.add_dependency("compass", [" >= 0.12.2"])
end
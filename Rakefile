# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'iphone_testify'

task :default => 'test:run'

PROJ.name = 'iphone_testify'
PROJ.authors = 'Paul Wilson'
PROJ.email = 'paul.wilson@merecomplexities.com'
PROJ.url = 'http://github.com/paulanthonywilson/iphone_testify/'
PROJ.version = IphoneTestify::VERSION

PROJ.exclude << '\.gitignore'
PROJ.notes.exclude = %w(^README\.txt$ ^data/)
PROJ.readme_file = 'README.rdoc'

depend_on "paulanthonywilson-osx_watchfolder"
depend_on "rake"

# EOF

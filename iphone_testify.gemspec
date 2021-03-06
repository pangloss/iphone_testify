# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{iphone_testify}
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Wilson"]
  s.date = %q{2009-03-02}
  s.default_executable = %q{iphone_testify}
  s.description = %q{Utility to help set up and iPhone project for testing using code from {The Google Toolbox for Mac}[http://code.google.com/p/google-toolbox-for-mac/].}
  s.email = %q{paul.wilson@merecomplexities.com}
  s.executables = ["iphone_testify"]
  s.extra_rdoc_files = ["History.txt", "README.rdoc", "bin/iphone_testify", "skeleton/UnitTests/put_unit_tests_here.txt"]
  s.files = ["History.txt", "README.rdoc", "Rakefile", "bin/iphone_testify", "iphone_testify-0.0.2.gem", "iphone_testify-0.0.4.gem", "iphone_testify.gemspec", "lib/iphone_testify.rb", "lib/iphone_testify/setup.rb", "skeleton/.DS_Store", "skeleton/Rakefile", "skeleton/UnitTests/put_unit_tests_here.txt", "skeleton/autoiphonetest.rb", "skeleton/autotest_images/.DS_Store", "skeleton/autotest_images/fail.png", "skeleton/autotest_images/pass.png", "skeleton/google_testing/GTMDefines.h", "skeleton/google_testing/GTMIPhoneUnitTestDelegate.h", "skeleton/google_testing/GTMIPhoneUnitTestDelegate.m", "skeleton/google_testing/GTMIPhoneUnitTestMain.m", "skeleton/google_testing/GTMSenTestCase.h", "skeleton/google_testing/GTMSenTestCase.m", "skeleton/google_testing/GoogleToolboxForMac.license", "skeleton/google_testing/RunIPhoneUnitTest.sh", "test/test_helper.rb", "test/test_setup.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/paulanthonywilson/iphone_testify/}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ }
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Utility to help set up and iPhone project for testing using code from {The Google Toolbox for Mac}[http://code}
  s.test_files = ["test/test_helper.rb", "test/test_setup.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paulanthonywilson-osx_watchfolder>, [">= 1.0.1"])
      s.add_runtime_dependency(%q<rake>, [">= 0.8.3"])
      s.add_development_dependency(%q<bones>, [">= 2.4.0"])
    else
      s.add_dependency(%q<paulanthonywilson-osx_watchfolder>, [">= 1.0.1"])
      s.add_dependency(%q<rake>, [">= 0.8.3"])
      s.add_dependency(%q<bones>, [">= 2.4.0"])
    end
  else
    s.add_dependency(%q<paulanthonywilson-osx_watchfolder>, [">= 1.0.1"])
    s.add_dependency(%q<rake>, [">= 0.8.3"])
    s.add_dependency(%q<bones>, [">= 2.4.0"])
  end
end

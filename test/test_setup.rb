require 'test/unit'
require 'fileutils'
require 'tmpdir'
require File.expand_path(File.dirname(__FILE__)) + "/test_helper"

class TestSetup < Test::Unit::TestCase
  include FileUtils
  def setup
    @testdir = Dir.tmpdir + "/iphone_testify_setup_test"
    rm_rf @testdir
    mkdir @testdir
    cd @testdir
  end
  
  def teardown
    rm_rf @testdir
  end
  
  def test_skeleton_copied
    IphoneTestify::Setup::setup
    %w(Rakefile autoiphonetest.rb google_testing/ google_testing/GTMDefines.h).each do |file|
      assert File.exists?(@testdir + "/#{file}"), file
    end
  end
  
  def test_unit_test_directory_created
    IphoneTestify::Setup::setup
    assert File.exists?(@testdir + "/UnitTests"), "exists"
    assert File.directory?(@testdir + "/UnitTests"), "directory"
  end
  
  def test_ok_if_already_exists
    IphoneTestify::Setup::setup
    IphoneTestify::Setup::setup
    assert File.exists?(@testdir + "/UnitTests")
    assert File.exists?(@testdir + "/Rakefile")
  end

end
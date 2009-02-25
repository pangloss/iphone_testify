#!/usr/bin/env ruby

require 'rubygems'
require 'osx_watchfolder'
gem 'rake'


ARGV.clear

fork do
  ARGV << 'test_all'
  load 'rake'
end
OsxWatchfolder::FolderWatcher.new("Classes", "UnitTests") do 
  fork{load 'rake'}
end.start
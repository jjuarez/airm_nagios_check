require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

desc "Clean temporary data"
task :clean do

  FileUtils.remove_dir(File.expand_path("./pkg"), :force=>true)
end

task :default => :spec

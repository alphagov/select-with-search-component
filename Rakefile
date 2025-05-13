require "bundler/setup"
require "bundler/gem_tasks"
require "rubocop/rake_task"
require "minitest/test_task"

RuboCop::RakeTask.new

desc "Run all linters"
task :lint do
  sh "bundle exec rubocop"
  sh "bundle exec erb_lint --lint-all"
  sh "yarn run lint"
end

desc "Run Jasmine tests"
task :jasmine do
  sh "yarn run jasmine:ci"
end

Minitest::TestTask.create do |t|
  t.test_globs = %w[test/**/*_test.rb]
end

Rake::Task[:default].clear if Rake::Task.task_defined?(:default)
task default: %i[lint test jasmine]

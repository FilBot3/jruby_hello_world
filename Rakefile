require "bundler/gem_tasks"
require "rake/testtask"
require "warbler"

Warbler::Task.new

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

task :default => :spec

CATALINA_HOME = "C:/apache/tomcat-8.0.21"
CATALINA_WEBAPPS = "#{CATALINA_HOME}/webapps"
desc "Deploy the WAR to CATALINA_HOME"
task :deploy_war do
  puts "=> Deploying WAR to #{CATALINA_WEBAPPS}"
  sh "cp jruby_hello_world.war #{CATALINA_WEBAPPS}/"
end

desc "Clean deployed WAR File."
task :clean_deployed_war do
  puts "=> Cleaning up deployed WAR"
  sh "rm -rf #{CATALINA_WEBAPPS}/jruby_hello_world*"
end

require 'gem2deb/rake/testtask'

Gem2Deb::Rake::TestTask.new do |t|
  t.libs = ['test']
  t.test_files = FileList['test/devise/*_test.rb'] + FileList['test/devise/async/*_test.rb','test/devise/async/backend/base_test.rb','test/devise/async/backend/delayed_job_test.rb','test/devise/async/backend/sidekiq_test.rb','test/devise/async/backend/torquebox_test.rb']
end

namespace :db do
  task :teaclix do
    system "script/console #{Rails.root}/db/teaclix.rb"
  end
end

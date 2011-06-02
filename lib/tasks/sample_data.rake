require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Daniel Randall",
                 :email => "daniel@otherwhitenoise.com",
                 :password => "Pelican$",
                 :password_confirmation => "Pelican$")
    
    admin.toggle!(:admin)	

    other = User.create!(:name => "Editor in Chief",
                 :email => "editor@bythewaymag.com",
                 :password => "P0werfulPelican$",
                 :password_confirmation => "P0werfulPelican$")
    
    other.toggle!(:admin)	

  end
end

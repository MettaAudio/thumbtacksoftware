class Project < ActiveRecord::Base
  attr_accessible :platform, :description, :git, :image, :launch_date, :responsibilities, :technology, :title, :url

  scope :ror,     where(:platform => 'Ruby on Rails')
  scope :spree,   where(:platform => 'Spree Commerce / Ruby on Rails')
  scope :shopify, where(:platform => 'Shopify')
  scope :html,    where('(platform <> "Ruby on Rails" AND platform <> "Spree Commerce / Ruby on Rails" AND platform <> "Shopify") OR platform IS NULL')

end

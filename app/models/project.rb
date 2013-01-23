class Project < ActiveRecord::Base
  attr_accessible :platform, :description, :git, :image, :launch_date, :responsibilities, :technology, :title, :url

  scope :ror,     where(:platform => 'Ruby on Rails')
  scope :spree,   where(:platform => 'Spree Commerce / Ruby on Rails')
  scope :shopify, where(:platform => 'Shopify')
  scope :html,    where('platform NOT IN ("Ruby on Rails", "Spree Commerce / Ruby on Rails") OR platform IS NULL')

end

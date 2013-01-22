class Project < ActiveRecord::Base
  attr_accessible :description, :git, :image, :launch_date, :responsibilities, :technology, :title, :url

end

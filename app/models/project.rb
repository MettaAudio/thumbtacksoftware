class Project < ActiveRecord::Base
  attr_accessible :description, :git, :image, :launch_date, :responsibilities, :technology, :title, :url

  def launch_date
    self[:launch_date].strftime('%B %Y')
  end
end

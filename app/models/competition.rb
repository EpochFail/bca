class Competition < ActiveRecord::Base
  attr_accessible :description, :enddate, :name, :startdate
end

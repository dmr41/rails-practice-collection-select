class Location < ActiveRecord::Base

  has_many :employments
  has_many :job_titles, through: :employments
  has_many :organzations, through: :employments
  has_many :people, through: :employments

end

class JobTitle < ActiveRecord::Base

  has_many :employments
  has_many :locations, through: :employments
  has_many :organzations, through: :employments
  has_many :people, through: :employments

end

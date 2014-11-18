class Person < ActiveRecord::Base

  has_many :employments
  has_many :job_titles, through: :employments
  has_many :locations, through: :employments
  has_many :organzations, through: :employments

  validate  :full_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end


end

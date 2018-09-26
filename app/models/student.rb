class Student < ActiveRecord::Base

  validates :student_first_name, presence: true
  validates :student_last_name, presence: true
  
  def to_s
    self.first_name + " " + self.last_name
  end
end

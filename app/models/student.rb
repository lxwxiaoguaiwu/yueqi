class Student < ApplicationRecord
  belongs_to :user, :inverse_of => :student
  has_one :stucer, :dependent => :destroy, :inverse_of => :student
end

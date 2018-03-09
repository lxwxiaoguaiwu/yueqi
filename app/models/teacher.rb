class Teacher < ApplicationRecord
  belongs_to :user, :inverse_of => :teacher
  has_one :teacer, :dependent => :destroy, :inverse_of => :teacher

end

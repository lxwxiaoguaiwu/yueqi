class Institute < ApplicationRecord
  has_many :mingjias, :dependent => :destroy, :inverse_of => :institute
end

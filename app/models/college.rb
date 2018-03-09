class College < ApplicationRecord
  has_many :mingjias, :dependent => :destroy, :inverse_of => :college

end

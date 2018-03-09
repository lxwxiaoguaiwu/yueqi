class Art < ApplicationRecord
  has_many :mingjias, :dependent => :destroy, :inverse_of => :art

end

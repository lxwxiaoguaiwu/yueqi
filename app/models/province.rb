class Province < ApplicationRecord
  has_many :mingjias, :dependent => :destroy, :inverse_of => :province

end

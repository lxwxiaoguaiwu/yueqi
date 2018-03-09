class Orgnization < ApplicationRecord
  belongs_to :user, :inverse_of => :orgnization
  has_one :orgcer, :dependent => :destroy, :inverse_of => :orgnization
end

class Mingjia < ApplicationRecord
  belongs_to :art, :inverse_of => :mingjias
  belongs_to :college, :inverse_of => :mingjias
  belongs_to :institute, :inverse_of => :mingjias
  belongs_to :province, :inverse_of => :mingjias
  belongs_to :user, :inverse_of => :mingjia

  self.table_name = 'mingjia'

  has_attached_file :asset,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method:
  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }
end

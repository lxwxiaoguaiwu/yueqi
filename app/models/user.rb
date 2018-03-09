class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :student, :dependent => :destroy, :inverse_of => :user
  has_one :teacher, :dependent => :destroy, :inverse_of => :user
  has_one :orgnization, :dependent => :destroy, :inverse_of => :user
  has_one :profile, :dependent => :destroy, :inverse_of => :user
  has_one :mingjia, :dependent => :destroy, :inverse_of => :user


  has_attached_file :asset,
      :styles => {
        :thumb => "100x100#",
        :small  => "150x150>",
        :medium => "200x200" },default_url: ->(attachment) { ActionController::Base.helpers.asset_path('video/sctx_03.png') }
    validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
    # add a delete_<asset_name> method:
    attr_accessor :delete_asset
    before_validation { self.asset.clear if self.delete_asset == '1' }
end

class Profile < ApplicationRecord

  belongs_to :user, :inverse_of => :profile

  action_store :like, :content_builder, counter_cache: true
  action_store :follow, :content_builder
  action_store :follow, :profile
  action_store :follow, :profile, counter_cache: 'followers_count', profile_counter_cache: 'following_count'

end

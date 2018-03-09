class Postb < RailsAdminContentBuilder::ContentBuilder
  before_validation :ensure_category_has_a_value


  def raceb_enum
    # Do not select any value, or add any blank field. RailsAdmin will do it for you.
    ['展演通知', '活动通知']
    # alternatively
    # { green: 0, white: 1 }
    # [ %w(Green 0), %w(White 1)]
  end

  private

  def ensure_category_has_a_value
    if self.content_builder_category.nil?
      self.content_builder_category_id = 2
    end
  end
end

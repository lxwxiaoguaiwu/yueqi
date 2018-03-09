class Postd < RailsAdminContentBuilder::ContentBuilder
  before_validation :ensure_category_has_a_value

  def raced_enum
   # Do not select any value, or add any blank field. RailsAdmin will do it for you.
    ['培训公告', '资料下载']
   # alternatively
   # { green: 0, white: 1 }
   # [ %w(Green 0), %w(White 1)]
  end

  private

  def ensure_category_has_a_value
    if self.content_builder_category.nil?
      self.content_builder_category_id = 4
    end
  end
end

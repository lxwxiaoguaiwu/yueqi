class Postc < RailsAdminContentBuilder::ContentBuilder
  before_validation :ensure_category_has_a_value


  def racec_enum
    # Do not select any value, or add any blank field. RailsAdmin will do it for you.
    ['国际乐器演奏日', '大型演出', '社会活动与展演']
    # alternatively
    # { green: 0, white: 1 }
    # [ %w(Green 0), %w(White 1)]
  end

  private

  def ensure_category_has_a_value
    if self.content_builder_category.nil?
      self.content_builder_category_id = 3
    end
  end
end

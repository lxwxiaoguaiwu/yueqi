RailsAdmin.config do |config|
  config.actions do
    content_builder do
      only ['RailsAdminContentBuilder::ContentBuilder']
      #only ['ContentBuilder']
    end

    config.model 'RailsAdminContentBuilder::ContentBuilder' do
      navigation_label '新闻发布'
      label '新闻编辑器'
      list do
        field :id do
          label "序号"
        end
        field :race do
          label "类别"
        end
        field :title
        field :date_publish
        field :status
      end
      edit do
        field :title
        field :date_publish
        field :written_by
        field :asset
        field :content_builder_category
      end
    end

    config.model 'RailsAdminContentBuilder::ContentBuilderCategory' do
      navigation_label '新闻发布'
      label '新闻类别'
      list do
        field :id
        field :name
      end
      edit do
        field :name
      end
    end

    config.model 'RailsAdminContentBuilder::ContentBuilderImage' do
      visible false
    end
  end
end

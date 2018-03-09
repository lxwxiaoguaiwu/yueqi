RailsAdmin.config do |config|

  config.main_app_name = ["全国乐器教学","查询平台"]

  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except ['RailsAdminContentBuilder::ContentBuilder', 'RailsAdminContentBuilder::ContentBuilderCategory','Role']
    end
    export
    bulk_delete
    show
    edit do
      except ['RailsAdminContentBuilder::ContentBuilder', 'RailsAdminContentBuilder::ContentBuilderCategory','Role']
    end
    delete do
      except ['RailsAdminContentBuilder::ContentBuilder', 'RailsAdminContentBuilder::ContentBuilderCategory','Role']
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Posta' do
    label '新闻'
    list do
      field :id do
        label "序号"
      end
      field :title do
        label "标题"
      end
      field :race do
        label "类别"
      end
    end
    edit do
      field :title do
        label "标题"
      end
      field :race do
        label "类别"
      end
      field :date_publish do
        label "创建时间"
      end
      field :written_by do
        label "作者"
      end
      field :asset do
        label "上传图片"
      end
    end
  end

  config.model 'Postb' do
    label '通知'
    list do
      field :id do
        label "序号"
      end
      field :title do
        label "标题"
      end
      field :raceb do
        label "类别"
      end
    end
    edit do
      field :title do
        label "标题"
      end
      field :raceb do
        label "类别"
      end
      field :date_publish do
        label "创建时间"
      end
      field :written_by do
        label "作者"
      end
      field :asset do
        label "上传图片"
      end
    end
  end

  config.model 'Postc' do
    label '视频'
    list do
      field :id do
        label "序号"
      end
      field :title do
        label "标题"
      end
      field :racec do
        label "类别"
      end
    end
    edit do
      field :title do
        label "标题"
      end
      field :racec do
        label "类别"
      end
      field :date_publish do
        label "创建时间"
      end
      field :written_by do
        label "作者"
      end
      field :asset do
        label "上传图片"
      end
    end
  end

  config.model 'Postd' do
    label '培训'
    list do
      field :id do
        label "序号"
      end
      field :title do
        label "标题"
      end
      field :raced do
        label "类别"
      end
    end
    edit do
      field :title do
        label "标题"
      end
      field :raced do
        label "类别"
      end
      field :date_publish do
        label "创建时间"
      end
      field :written_by do
        label "作者"
      end
      field :asset do
        label "上传图片"
      end
    end
  end


  config.model Particle do
    navigation_label '发布审核'
    list do
      field :id
      field :title
      field :pstatus
      field :user
      field :updated_at
    end
    edit do
      field :title
      field :pstatus
      field :user
      field :updated_at
      field :desc, :ck_editor
    end
  end

  config.model Pimage do
    navigation_label '发布审核'
    list do
      field :id
      field :title
      field :pstatus
      field :user
      field :updated_at
      field :leibie
    end
    edit do
      field :title
      field :pstatus
      field :user
      field :updated_at
      field :asset
      field :desc
      field :leibie
    end
  end

  config.model Pvideo do
    navigation_label '发布审核'
    list do
      field :id
      field :title
      field :pstatus
      field :user
      field :updated_at
    end
    edit do
      field :title
      field :pstatus
      field :user
      field :updated_at
      field :source
      field :desc
    end
  end

  config.model Admin do
    navigation_label '用户管理'
    navigation_icon 'icon-user'
    list do
      field :id
      field :email
      field :sign_in_count
      field :current_sign_in_at
      field :last_sign_in_at
    end
    edit do
      field :email
      field :password
      field :password_confirmation
    end
  end

  config.model Profile do
    navigation_label '用户管理'
    navigation_icon 'icon-user'
  end

  config.model Comment do
    navigation_label '用户管理'
    navigation_icon 'icon-comment'
  end

  config.model Role do
    navigation_label '用户管理'
    navigation_icon 'icon-user'

  end

  config.model User do
    navigation_label '用户管理'
    navigation_icon 'icon-user'
    weight -5
    list do
      field :id
      field :email
      field :asset
      field :sign_in_count
      field :current_sign_in_at
      field :last_sign_in_at
    end
    edit do
      field :email
      field :password
      field :password_confirmation
    end
  end

  config.model Mingjia do
    navigation_label '名家管理'
    navigation_icon 'icon-user'
    weight -10
    list do
      field :id
      field :title
      field :asset
    end
    edit do
      field :title
      field :asset
      field :art
      field :province
      field :college
      field :institute
      field :user
      field :sex
      field :suozaidi
      field :yuezhong
      field :zhuceyuanxiao
      field :zigezhengshu
      field :gerenjianjie
      field :gerenchengjiu
    end
  end

  config.model Art do
    navigation_label '名家管理'
    list do
      field :id
      field :name
    end
    edit do
      field :name
      field :mingjias
    end
  end

  config.model College do
    navigation_label '名家管理'
    list do
      field :id
      field :name
    end
    edit do
      field :name
      field :mingjias
    end
  end

  config.model Institute do
    navigation_label '名家管理'
    list do
      field :id
      field :name
    end
    edit do
      field :name
      field :mingjias
    end
  end

  config.model Province do
    navigation_label '名家管理'
    list do
      field :id
      field :name
    end
    edit do
      field :name
      field :mingjias
    end
  end

  config.model Student do
    navigation_label '申请管理'
    list do
      field :id
      field :name
      field :user
      field :shenhe
      field :state
    end
    edit do
      field :name
      field :user
      field :shenhe
    end
  end

  config.model Teacher do
    navigation_label '申请管理'
    list do
      field :id
      field :name
      field :user
      field :shenhe
      field :state
    end
    edit do
      field :name
      field :user
      field :shenhe
    end
  end

  config.model Orgnization do
    navigation_label '申请管理'
    list do
      field :id
      field :name
      field :user
      field :shenhe
      field :state
    end
    edit do
      field :name
      field :user
      field :shenhe
    end
  end

  config.model Eduexp do
    navigation_label '申请管理'
    visible false
  end

  config.model Workexp do
    navigation_label '申请管理'
    visible false
  end

  config.model Orgcer do
    navigation_label '发证管理'
    list do
      field :id
      field :ems
      field :orgnization
      field :asset
    end
    edit do
      field :orgnization
      field :asset
    end
  end

  config.model Stucer do
    navigation_label '发证管理'
    list do
      field :id
      field :ems
      field :student
      field :asset
    end
    edit do
      field :student
      field :asset
    end
  end

  config.model Teacer do
    navigation_label '发证管理'
    list do
      field :id
      field :ems
      field :teacher
      field :asset
    end
    edit do
      field :asset
      field :teacher
    end
  end

  config.model Opinion do
    navigation_label '用户记录'
    list do
      field :id
      field :user
      field :updated_at
    end
    edit do
      field :content
      field :contact
      field :user
    end
  end

  config.model Message do
    navigation_label '用户记录'
    list do
      field :id
      field :user
      field :title
      field :updated_at
    end
    edit do
      field :title
      field :user
      field :source
    end
  end

  config.model Action do
    navigation_label '用户记录'
    list do
      field :id
      field :action_type
      field :action_option
      field :target_type
      field :target_id
      field :user_type
      field :user_id
    end
    edit do
      field :action_option
    end
  end

  config.model Stufee do
    navigation_label '缴费记录'
    list do
      field :id
      field :student
      field :amount
      field :fsource
      field :updated_at
    end
    edit do
      field :student
      field :amount
      field :fsource
      field :updated_at
    end
  end

  config.model Orgfee do
    navigation_label '缴费记录'
    list do
      field :id
      field :orgnization
      field :amount
      field :fsource
      field :updated_at
    end
    edit do
      field :orgnization
      field :amount
      field :fsource
      field :updated_at
    end
  end

  config.model Teafee do
    navigation_label '缴费记录'
    list do
      field :id
      field :teacher
      field :amount
      field :fsource
      field :updated_at
    end
    edit do
      field :teacher
      field :amount
      field :fsource
      field :updated_at
    end
  end

  config.model Slide do
    navigation_label '网站配置'
    list do
      field :id
      field :title
      field :asset
    end
    edit do
      field :title
      field :asset
      field :url
    end
  end

  config.model Peerurl do
    navigation_label '网站配置'
    list do
      field :id
      field :title
    end
    edit do
      field :title
      field :url
    end
  end

  config.model Post do
    visible false
  end

  config.model Proclaim do
     visible false
  end

  config.model Broadcast do
     visible false
  end

  config.model Notable do
     visible false
  end

  config.model Video do
     visible false
  end

  config.model Article do
     visible false
  end

  config.model Announce do
     visible false
  end

  config.model Trainning do
     visible false
  end

  config.model Zhuce do
     visible false
  end

  config.model ContentBuilder do
    visible false
  end
end

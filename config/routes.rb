Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  #devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'
  root 'welcome#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }

  resources :posts,:users,:students,:particles,:teachers,:orgnizations,:comments,:opinions,:eduexps,:workexps,:pimages,:pvideos

  post 'search/index', to:'search#index'

  post 'search/teacher', to:'search#teacher'

  post 'search/geren', to:'search#geren'

  post 'search/danwei', to:'search#danwei'

  post 'personalmodel/apply' , to:'personalmodel#apply'

  post 'personalmodel/pimages', to:'personalmodel#pimages'

  post 'personalmodel/pvideos', to:'personalmodel#pvideos'

  get 'newslist/newslist'

  get 'post/stara/:id' , to: 'posts#stara'

  get 'guanzhu/guanzhu/:id' , to: 'guanzhu#guanzhu'

  get 'newslist/wenzhanglist'

  get 'newslist/videolist'

  get 'announce/announce'

  get 'notable/notable'

  get 'video/video'

  get 'trainning/trainning'

  get 'register/register'

  get 'introduce/introduce'

  get 'introduceptjj/introduceptjj'

  get 'introducelxwm/introducelxwm'

  get 'newsdetails/newsdetails/:id', to: 'newsdetails#newsdetails'

  get 'announcedetails/announcedetails/:id', to: 'announcedetails#announcedetails'

  get 'notabledetails/notabledetails/:id', to: 'notabledetails#notabledetails'

  get 'videodetails/videodetails/:id', to: 'videodetails#videodetails'

  get 'trainningdetails/trainningdetails/:id', to: 'trainningdetails#trainningdetails'

  get 'registerdetails/registerdetails/:id', to: 'registerdetails#registerdetails'

  get 'personalmodel',to: 'personalmodel#index'
  post 'personalmodel/personalmodel',to: 'personalmodel#personalmodel'
  post 'personalmodel',to: 'users#update'

  get 'personalmodel/zhucetongdao', to: 'personalmodel#zhucetongdao'

  get 'applicationprocess',to: 'applicationprocess#index'

  get 'agreement',to: 'agreement#index'

  get 'mypage',to: 'mypage#index'

  get 'personalmodel/userpage', to: 'personalmodel#userpage'

  get 'personalmodel/userinfo', to: 'personalmodel#userpage'

  get 'personalmodel/userimg', to: 'personalmodel#userpage'

  get 'personalmodel/uservideo', to: 'personalmodel#userpage'

  get 'personalmodel/userarticle', to: 'personalmodel#userpage'

  get 'personalmodel/follow', to: 'personalmodel#userpage'

  get 'personalmodel/usernews', to: 'personalmodel#userpage'

  get 'personalmodel/opinion', to: 'personalmodel#userpage'

  get 'personalmodel/process', to: 'personalmodel#userpage'

  get 'personalmodel/agreement', to: 'personalmodel#userpage'

  get 'personalmodel/table', to: 'personalmodel#userpage'

  get 'personalmodel/teachertable', to: 'personalmodel#userpage'

  get 'personalmodel/orgnizationtable', to: 'personalmodel#userpage'

  get 'zhucetongdao/table', to: 'zhucetongdao#table'

  get 'zhucetongdao/teachertable', to: 'zhucetongdao#teachertable'

  get 'zhucetongdao/orgnizationtable', to: 'zhucetongdao#orgnizationtable'

  get 'search/index', to: 'search#index'

  get 'search/teacher', to: 'search#teacher'

  get 'search/geren', to: 'search#geren'

  get 'search/danwei', to: 'search#danwei'

  get 'search/quanzhan', to:'search#quanzhan'

  get 'action/follow', to:'action#follow'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

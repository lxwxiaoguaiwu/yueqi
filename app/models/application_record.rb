class ApplicationRecord < ActiveRecord::Base
  #abstract_class就是一个继承ActiveRecord::Base的抽象类，作用就是为整个应用程序模型提供一个自己的基类
  self.abstract_class = true
end

class AddScerToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :gender, :boolean
    add_column :students, :minzu, :string
    add_column :students, :birthday, :datetime
    add_column :students, :idcard, :integer
    add_column :students, :hometown, :string
    add_column :students, :stype, :string
    add_column :students, :wenhua, :string
    add_column :students, :zhuanye, :string
    add_column :students, :suozaidi, :string
    add_column :students, :worktime, :datetime
    add_column :students, :mobile, :string
    add_column :students, :address, :string
    add_column :students, :worktel, :string
    add_column :students, :zipcode, :string
    add_column :students, :wechat, :string
    add_column :students, :email, :string
    add_column :students, :company, :string
    add_column :students, :duty, :string
    add_column :students, :colledge, :string
    add_column :students, :wstatus, :string
  end
end

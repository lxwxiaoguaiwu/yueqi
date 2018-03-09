class AddScerToTeacher < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :gender, :boolean
    add_column :teachers, :minzu, :string
    add_column :teachers, :birthday, :datetime
    add_column :teachers, :idcard, :integer
    add_column :teachers, :hometown, :string
    add_column :teachers, :stype, :string
    add_column :teachers, :wenhua, :string
    add_column :teachers, :zhuanye, :string
    add_column :teachers, :suozaidi, :string
    add_column :teachers, :worktime, :datetime
    add_column :teachers, :mobile, :string
    add_column :teachers, :address, :string
    add_column :teachers, :worktel, :string
    add_column :teachers, :zipcode, :string
    add_column :teachers, :wechat, :string
    add_column :teachers, :email, :string
    add_column :teachers, :company, :string
    add_column :teachers, :duty, :string
    add_column :teachers, :colledge, :string
    add_column :teachers, :wstatus, :string
  end
end

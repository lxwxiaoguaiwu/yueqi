# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171113074219) do

  create_table "actions", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "action_type", null: false
    t.string "action_option"
    t.string "target_type"
    t.integer "target_id"
    t.string "user_type"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["target_type", "target_id", "action_type"], name: "index_actions_on_target_type_and_target_id_and_action_type"
    t.index ["user_type", "user_id", "action_type"], name: "index_actions_on_user_type_and_user_id_and_action_type"
  end

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "admins_roles", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "admin_id"
    t.bigint "role_id"
    t.index ["admin_id", "role_id"], name: "index_admins_roles_on_admin_id_and_role_id"
    t.index ["admin_id"], name: "index_admins_roles_on_admin_id"
    t.index ["role_id"], name: "index_admins_roles_on_role_id"
  end

  create_table "announces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "broadcasts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "colleges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "commentable_id"
    t.string "commentable_type"
    t.string "title"
    t.text "body"
    t.string "subject"
    t.integer "user_id", null: false
    t.integer "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "content_builder_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_builder_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "image"
    t.bigint "content_builder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_builder_id"], name: "index_content_builder_images_on_content_builder_id"
  end

  create_table "content_builders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "written_by"
    t.datetime "date_publish"
    t.text "content"
    t.boolean "status", default: false
    t.string "slug"
    t.text "summary"
    t.bigint "content_builder_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
    t.string "race"
    t.string "type"
    t.string "raceb"
    t.string "racec"
    t.string "raced"
    t.integer "likes_count", default: 0
    t.integer "stars_count", default: 0
    t.integer "following_count", default: 0
    t.index ["content_builder_category_id"], name: "index_content_builders_on_content_builder_category_id"
  end

  create_table "eduexps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "sedate"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_eduexps_on_user_id"
  end

  create_table "institutes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "source"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "mingjia", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
    t.bigint "art_id"
    t.bigint "college_id"
    t.bigint "province_id"
    t.bigint "institute_id"
    t.string "sex"
    t.string "suozaidi"
    t.string "yuezhong"
    t.string "zhuceyuanxiao"
    t.string "zigezhengshu"
    t.text "gerenjianjie"
    t.text "gerenchengjiu"
    t.bigint "user_id"
    t.index ["art_id"], name: "index_mingjia_on_art_id"
    t.index ["college_id"], name: "index_mingjia_on_college_id"
    t.index ["institute_id"], name: "index_mingjia_on_institute_id"
    t.index ["province_id"], name: "index_mingjia_on_province_id"
    t.index ["user_id"], name: "index_mingjia_on_user_id"
  end

  create_table "notables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
  end

  create_table "opinions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "content"
    t.string "contact"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_opinions_on_user_id"
  end

  create_table "orgcers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean "ems"
    t.bigint "orgnization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
    t.index ["orgnization_id"], name: "index_orgcers_on_orgnization_id", unique: true
  end

  create_table "orgfees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float "amount", limit: 24
    t.string "fsource"
    t.bigint "orgnization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orgnization_id"], name: "index_orgfees_on_orgnization_id"
  end

  create_table "orgnizations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "shenhe"
    t.string "state"
    t.index ["user_id"], name: "index_orgnizations_on_user_id", unique: true
  end

  create_table "particles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.datetime "publish"
    t.string "pstatus"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_particles_on_user_id"
  end

  create_table "peerurls", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pimages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.string "pstatus"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ptype"
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
    t.string "leibie"
    t.index ["user_id"], name: "index_pimages_on_user_id"
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
    t.integer "likes_count", default: 0
    t.integer "stars_count", default: 0
  end

  create_table "proclaims", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "followers_count", default: 0
    t.integer "following_count", default: 0
    t.integer "star_content_builders_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id", unique: true
  end

  create_table "provinces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pvideos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.string "pstatus"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source"
    t.index ["user_id"], name: "index_pvideos_on_user_id"
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "slides", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
  end

  create_table "stucers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean "ems"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id"
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
    t.index ["student_id"], name: "index_stucers_on_student_id", unique: true
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.bigint "user_id"
    t.boolean "gender"
    t.string "minzu"
    t.datetime "birthday"
    t.integer "idcard"
    t.string "hometown"
    t.string "stype"
    t.string "wenhua"
    t.string "zhuanye"
    t.string "suozaidi"
    t.datetime "worktime"
    t.string "mobile"
    t.string "address"
    t.string "worktel"
    t.string "zipcode"
    t.string "wechat"
    t.string "email"
    t.string "company"
    t.string "duty"
    t.string "colledge"
    t.string "wstatus"
    t.string "shenhe"
    t.string "state"
    t.index ["user_id"], name: "index_students_on_user_id", unique: true
  end

  create_table "stufees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float "amount", limit: 24
    t.string "fsource"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_stufees_on_student_id"
  end

  create_table "teacers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean "ems"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
    t.index ["teacher_id"], name: "index_teacers_on_teacher_id", unique: true
  end

  create_table "teachers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "gender"
    t.string "minzu"
    t.datetime "birthday"
    t.integer "idcard"
    t.string "hometown"
    t.string "stype"
    t.string "wenhua"
    t.string "zhuanye"
    t.string "suozaidi"
    t.datetime "worktime"
    t.string "mobile"
    t.string "address"
    t.string "worktel"
    t.string "zipcode"
    t.string "wechat"
    t.string "email"
    t.string "company"
    t.string "duty"
    t.string "colledge"
    t.string "wstatus"
    t.string "shenhe"
    t.string "state"
    t.index ["user_id"], name: "index_teachers_on_user_id", unique: true
  end

  create_table "teafees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float "amount", limit: 24
    t.string "fsource"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_teafees_on_teacher_id"
  end

  create_table "trainnings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
    t.integer "star_posts_count", default: 0
    t.integer "followers_count", default: 0
    t.integer "following_count", default: 0
    t.integer "star_content_builders_count", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
  end

  create_table "workexps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "sedate"
    t.string "content"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "distinct"
    t.string "duty"
    t.bigint "user_id"
    t.index ["teacher_id"], name: "index_workexps_on_teacher_id"
    t.index ["user_id"], name: "index_workexps_on_user_id"
  end

  create_table "zhuces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "content_builder_images", "content_builders"
  add_foreign_key "content_builders", "content_builder_categories"
  add_foreign_key "eduexps", "users"
  add_foreign_key "messages", "users"
  add_foreign_key "mingjia", "arts"
  add_foreign_key "mingjia", "colleges"
  add_foreign_key "mingjia", "institutes"
  add_foreign_key "mingjia", "provinces"
  add_foreign_key "mingjia", "users"
  add_foreign_key "opinions", "users"
  add_foreign_key "orgcers", "orgnizations"
  add_foreign_key "orgfees", "orgnizations"
  add_foreign_key "orgnizations", "users"
  add_foreign_key "particles", "users"
  add_foreign_key "pimages", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "pvideos", "users"
  add_foreign_key "stucers", "students"
  add_foreign_key "students", "users"
  add_foreign_key "stufees", "students"
  add_foreign_key "teacers", "teachers"
  add_foreign_key "teachers", "users"
  add_foreign_key "teafees", "teachers"
  add_foreign_key "workexps", "teachers"
  add_foreign_key "workexps", "users"
end

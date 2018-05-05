Rails.application.config.assets.version = "1.0"
Rails.application.config.assets.paths << Rails.root.join("node_modules")

Rails.application.config.assets.precompile += %w( static_pages.scss
  user_footer.scss login.scss validate.scss managers/manager.scss notification.scss
  header.scss)

Rails.application.config.assets.precompile += %w( static_pages.js
  login_custom.js upload_picture.js validates/change_pass.js managers/manager.js
  show_hide.js edit_mark.js remarking.js change_aspiration.js edit_style_major.js
  managers/change_register.js filter_major.js statistic_results.js edit_target.js chat_channel.js chat_channel_manager.js chat_room_list_manager.js register_new.js)

Rails.application.config.assets.precompile += %w( ckeditor/filebrowser/images/gal_del.png )
Rails.application.config.assets.precompile += %w( ckeditor/* )

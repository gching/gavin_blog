RailsAdmin.config do |config|
  config.main_app_name = ["Gavin Ching's Blog", "Control Panel"]
  config.model Post do
  edit do
    field :title, :rich_picker do
  config({
    :allowed_styles => [:original],
    :view_mode => "list"
  })
end
    field :content, :rich_editor do
      config({
        :insert_many => true
      })
    end
  end
end
end
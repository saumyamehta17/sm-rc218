#class LayoutGenerator < Rails::Generators::NamedBase
# make it Base instead of NamedBase now see rails g layout --help
class LayoutGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :layout_name,type: :string,  default: 'application_demo'
  #if want to exclude stylesheet
  class_option :stylesheet, type: :boolean, default: true, desc: "include stylesheets"

  #it will excuted as you run layout generator
  def generator_layout
    #puts "Hey this working"
    #copy_file 'stylesheet.css', "app/assets/stylesheets/#{file_name}.css"
    #condition if want to create or not stylesheet
    copy_file 'stylesheet.css', "app/assets/stylesheets/#{file_name}.css" if options.stylesheet?
    #now template file
    template 'layout.html.erb', "app/views/layouts/#{file_name}.html.erb"
  end

  private # private methods so that it should not execute when generator execute
  def file_name
    layout_name.underscore
  end
end

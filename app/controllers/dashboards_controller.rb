class DashboardsController < ApplicationController
  layout 'dashboard'

  def dashboard
    @title = t(:dashboard)
    @main_menu = t(:dashboard)
    @current_user = current_user
  end

  def user_management
    @title = t(:user_management)
    @main_menu = t(:user_management)
    @current_user = current_user
    @users = User.all

  end

  def access_control_management
    @title = t(:access_control)
    @main_menu = t(:access_control)
    @current_user = current_user
    # Rails.application.eager_load!
    # @models = ActiveRecord::Base.descendants
    # @models.delete_at(0)
    # @models.delete_at(0)
    # @roles = Role.all
    # @users = User.all    
    @role = Role.new
  end

  def get_models
    Rails.application.eager_load!
    @models = ActiveRecord::Base.descendants
    @models.delete_at(0)
    @models.delete_at(0)
    response = {}
    @models.each do |model|
      if model.name == "User"
        response[model.name] = model.column_names[0, 14].to_json
      else 
        response[model.name] = model.column_names.to_json
      end
    end
    render json: response
  end

  def add_content
    @title = t(:add_content)
    @main_menu = t(:content_managment)
    @submenu = t(:add_content)
    @current_user = current_user
  end

  def my_contents
    @title = t(:my_contents)
    @main_menu = t(:content_managment)
    @submenu = t(:my_contents)
    @current_user = current_user
  end

  def editorial
    @title = t(:editorial)
    @main_menu = t(:content_managment)
    @submenu = t(:editorial)
    @current_user = current_user
  end

end


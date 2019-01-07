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
  end

  def access_control_management
    @title = t(:access_control)
    @main_menu = t(:access_control)
    @current_user = current_user
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


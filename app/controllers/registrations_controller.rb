class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:info] = 'You are not allowed to be here, much apologies :). -Gavin Ching'
    redirect_to root_path
  end

  def create
    flash[:info] = 'You are not allowed to be here, much apologies :). -Gavin Ching'
    redirect_to root_path
  end
end
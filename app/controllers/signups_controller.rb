class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def index
    @signups = Signup.all
  end

  def show
    @signup = Signup.find(params[:id])
  end

  def create
    @signup = Signup.new(signup_params)
    if (@signup.save)
      redirect_to @signup
    else
      render 'new'
    end
  end

  private def signup_params
    params.require(:Happiness).permit(:first_name, :email)
  end

end

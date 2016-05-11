class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    if params[:user][:photo]
      req = Cloudinary::Uploader.upload( params[:user][:photo] )
      @user.photo = req["url"]
    end

    @user = User.new(user_params)


    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    req = Cloudinary::Uploader.upload( params[:user][:photo] ) if params[:user][:photo]
    user = @current_user
    user.photo = req["url"] if req
    user.update user_params
    redirect_to user_path
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def current_user
    render json: @current_user.to_json()
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:id, :name_first, :name_last, :postcode, :email, :password, :password_confirmation, :admin)
    end
end

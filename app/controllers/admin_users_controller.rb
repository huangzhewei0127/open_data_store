class AdminUsersController < AdminController
  before_action :set_admin_user, only: [:show, :edit, :update, :destroy]

  # GET /admin_users
  # GET /admin_users.json
  def index
    @users = User.all
  end

  # GET /admin_users/1
  # GET /admin_users/1.json
  def show
  end

  # GET /admin_users/1/edit
  def edit
  end

  # PATCH/PUT /admin_users/1
  # PATCH/PUT /admin_users/1.json
  def update
    respond_to do |format|
      if @user.update(admin_user_params)
        format.html { redirect_to admin_user_path(@user), notice: 'Admin user was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /admin_users/1
  # DELETE /admin_users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: 'Admin user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_user_params
      params.require(:user).permit(:name, :avatar, :phone, :email, :password_digest, :is_admin)
    end
end

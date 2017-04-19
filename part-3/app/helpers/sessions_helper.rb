helpers do

  def login
    session[:id]=@user.id
  end

  def logout
    session[:id]=nil
  end

  def current_user
    User.find_by(id: session[:id])
  end
end

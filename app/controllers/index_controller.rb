class IndexController < ApplicationController
  def home
    @users = User.all
    respond_to do |format|
      format.html
      format.pdf
    end
  end

  def test
    respond_to do |format|
      format.html
    end
  end
end

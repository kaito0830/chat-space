class MessagesController < ApplicationController
  def index
    @user = User.all
  end
end

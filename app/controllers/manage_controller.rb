class ManageController < ApplicationController
  def index

  	# se nao logou, vai pra login
  	if user_signed_in?

  	else
     redirect_to unauthenticated_root
  	end
  end
end

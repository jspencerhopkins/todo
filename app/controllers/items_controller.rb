class ItemsController < ApplicationController


	def index
		@items = Item.new
	end

	def create
		@item = Item.create(params.require(:item).permit(:description))
		redirect_to root_url
	end

end

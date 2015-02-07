class ItemsController < ApplicationController


	def index
		@items = Item.new
		@all_items = Item.all
	end

	def create
		@item = Item.create(item_params)
		redirect_to root_url
	end


	private
	def item_params
		params.require(:item).permit(:description, :completed)
	end

end

class ItemsController < ApplicationController


	def index
		@items = Item.new
		@all_items = Item.all
	end

	def create
		@item = Item.create(item_params)
		redirect_to root_url
	end

	def update
	  @item = Item.find(params[:id])
	  @item.update(item_params)
	 	redirect_to root_url
	end

	def edit
		@item = Item.find(params[:id])
	end


	private
	def item_params
		params.require(:item).permit(:description, :complete)
	end

end

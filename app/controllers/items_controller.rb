class ItemsController < ApplicationController


	def index
		@items = Item.new
		@all_items = Item.all
		@itemCount = Item.count
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

	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to root_url
	end

	def active
	end

	def completed
	end

	private
	def item_params
		params.require(:item).permit(:description, :complete)
	end

end

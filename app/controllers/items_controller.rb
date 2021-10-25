class ItemsController < ApplicationController

    def index
        @items = Item.all
    end

    def new

    end

    def show
        @item = Item.find(params[:id])
    end

    def create
        @item = Item.new(item_params)
        if item_params["imported"] == "0"
            @item.imported = false
        else
            @item.imported = true
        end
        if @item.save
            redirect_to "/baskets/#{@item.basket_id}"
        else
            flash.alert = "Invalid entry"
            redirect_to "/baskets/#{@item.basket_id}"
        end
    end

    def destroy
        @item = Item.find(params[:id])
        basket_id = @item.basket_id
        @item.delete
        redirect_to "/baskets/#{basket_id}"
    end
 
    private

    def item_params
        params.require(:item).permit(:name,:category,:imported,:basket_id,:price,:quantity)
    end
end

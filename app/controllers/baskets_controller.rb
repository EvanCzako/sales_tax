class BasketsController < ApplicationController

    def index
        @baskets = Basket.all
    end

    def new

    end

    def show
        @basket = Basket.find(params[:id])
    end

    def create
        @basket = Basket.new(basket_params)
        @basket.save
        redirect_to @basket
    end
 
    private

    def basket_params
        params.require(:basket).permit(:title)
    end
end

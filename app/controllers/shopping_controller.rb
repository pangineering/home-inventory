class ShoppingController < ApplicationController
    def index
        @shopping = Shopping.all
    end

    def new
        @shopping = Shopping.new
    end
    
end



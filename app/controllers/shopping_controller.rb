class ShoppingController < ApplicationController
    def index
        @shopping = Shopping.all
    end
end

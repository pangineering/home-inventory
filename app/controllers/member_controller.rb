class MemberController < ApplicationController
    def index
        @member = Member.all
    end

    def show
        @member = Member.find(params[:id])
    end
    
    def new
        @member = Member.new
    end
    
    def create
        @member = Member.new(memberparams)
        if @member.save
          redirect_to @member
        else
          render :new, status: :unprocessable_entity
        end
    end
    
    def edit
        @member = Member.find(params[:id])
    end
    
    def update
        @member = Member.find(params[:id])
    
        if @member.update(memberparams)
          redirect_to @member
        else
          render :edit, status: :unprocessable_entity
        end
    end
    
    private
        def memberparams
          params.require(:member).permit(:name, :role, :gender )
        end
        
end

class BrandsController < ApplicationController
    
    def show
        @brand = Brand.find(params[:id])
    end

    def index
        @brands = Brand.all
    end

    def new
        @brand = Brand.new
    end

    def edit
        @brand = Brand.find(params[:id])
    end

    def create
        @brand = Brand.new(params.require(:brand).permit(:brand_name, :origin_country))
        if @brand.save
            flash[:notice] = "Brand Inserted Successfully!!"
            redirect_to @brand
        else
            render 'new'
        end
    end

    def update
       @brand = Brand.find(params[:id])
       if @brand.update(params.require(:brand).permit(:brand_name, :origin_country))
            flash[:notice] = "Brand was updated Successfully!!"
            redirect_to brands_path
        else
            render 'edit'
        end 
    end
end
class DevicesController < ApplicationController

    def index
        @brand = Brand.find(params[:id])
        @devices = @brand.devices
    end

    def show
        @device = Device.find(params[:id])
    end

    def new
        @dev = Device.new
    end

    def edit
        @dev = Device.find(params[:id])
    end

    def create
        @dev = Brand.new(params.require(:device).permit(:brand_name,:device_name,:screen_size,:camera,:battery,:brand_id))
        if @dev.save
            flash[:notice] = "Device Inserted Succesfully."
            redirect_to @dev
        else
            render 'new'
        end
    end

    def update
        @dev = Device.find(params[:id])
        if @dev.update(params.require(:device).permit(:brand_name,:device_name,:screen_size,:camera,:battery,:brand_id))
            flash[:notice] = "Device Updated Succesfully."
            redirect_to devices_path
        else
            render 'edit'
        end
    end
end
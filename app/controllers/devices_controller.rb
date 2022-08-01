class DevicesController < ApplicationController

    def index
        @brand = Brand.find(params[:brand_id])
        @devices = @brand.devices
    end

    def show
        @device = Device.find(params[:id])
    end

    def new
        @device = Device.new
    end

    def edit
        @device = Device.find(params[:id])
    end

    def create
        @device = Brand.new(params.require(:device).permit(:brand_name,:device_name,:screen_size,:camera,:battery,:brand_id))
        if @device.save
            flash[:notice] = "Device Inserted Succesfully."
            redirect_to @device
        else
            render 'new'
        end
    end

    def update
        @device = Device.find(params[:id])
        if @device.update(params.require(:device).permit(:brand_name,:device_name,:screen_size,:camera,:battery,:brand_id))
            flash[:notice] = "Device Updated Succesfully."
            redirect_to devices_path
        else
            render 'edit'
        end
    end
end
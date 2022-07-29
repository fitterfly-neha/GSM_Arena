class DevicesController < ApplicationController
    def show1
        @device = Device.find(params[:id])
    end

    def index
        #@dev = Device.all
        @brand = Brand.find(params[:id])
        @devices = @brand.devices
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
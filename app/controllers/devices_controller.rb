class DeviceController < BrandsController
    def show1
        @dev = Device.find(params[:id])
    end
end
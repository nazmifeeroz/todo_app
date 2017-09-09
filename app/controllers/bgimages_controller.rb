class BgimagesController < ApplicationController

	def update
		img = Bgimage.find(params[:id])
		img_params = params[:bgimage].permit(:imgname)
		
		img.update(img_params)
		flash[:success] = "Background applied!"
		redirect_to root_path

	end


end
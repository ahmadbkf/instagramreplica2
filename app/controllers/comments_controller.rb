class CommentsController < ApplicationController
	def create
		@pic = Pic.find(params[:id])
		@comment = @pic.comments.create(params[:comment].permit(:name , :body))
		redirect_to pic_path(@pic)
	end
end

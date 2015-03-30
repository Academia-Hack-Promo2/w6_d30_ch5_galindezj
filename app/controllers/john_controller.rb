class JohnController < ApplicationController
	def index
		full = Johntodo.all
		render json: full
	end

	def create
		insert = Johntodo.new(parameters)

		if insert.save
			render json: insert
		else
			render json: {message: "Lo siento, intenta de nuevo chaval!"}
		end
	end

	def show
		locate = Johntodo.find(params[:id])
		render json: locate
	end

	def update
		modernize = Johntodo.update(params[:id], parameters)
		render json: modernize
	end

	def destroy
	    shadow = Johntodo.find(params[:id])
		remove = Johntodo.delete(params[:id])
		render json: shadow
	end

	private
	def parameters
		params.require(:john).permit(:text, :done)
	end
end

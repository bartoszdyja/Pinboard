class PinsController < ApplicationController
	before_action :find_pin, only: [:show, :edit, :update]
	before_action :all_pins, only: [:index]

	def index
	end

	def show
	end

	def titles
		@pins = Pin.all
	end

	def update
		@pin.update(pin_params_2)
		redirect_to @pin, notice: "Pin updated"
	end


	def new
		@pin = Pin.new
	end

	def create
		@pin = Pin.new(pin_params)
		if @pin.save
			redirect_to @pin, notice: "Pin was successfully created #{Pin.all.count}"
		end
	end

	def destroy
		Pin.find(params[:id]).destroy
		redirect_to root_path
	end

	private

	def pin_params
		params.require(:pin).permit(:title, :description)	
	end

	def pin_params_2
		params.require(:pin).permit(:title, :description)	
	end

	def find_pin
		@pin = Pin.find(params[:id])
	end

	def all_pins
		@pins = Pin.all
	end
end

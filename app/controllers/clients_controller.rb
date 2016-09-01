class ClientsController < ApplicationController
	def index
			@clients = current_user.clients.all
	end

	def show
			@client = current_user.clients.find(params[:id])
	end


	def new
	end

	def create
		@client = current_user.clients.new(client_params)
		if @client.save
			redirect_to @client
		else
			render action: 'new'
		end
	end

	def edit
		@client = Client.find(params[:id])
	end

	def update
		@client = Client.find(params[:id])
		if @client.update(client_params)
			redirect_to @client
		else
			render action: 'edit'
		end
	end

	def destroy
		@client = current_user.clients.find(params[:id])
		@client.destroy
		
		redirect_to clients_path
	end

	private

	def client_params
		params.require(:client).permit(:client, :databird, :group, :phone, :email, :address, :city, :country, :comment)		
	end
end

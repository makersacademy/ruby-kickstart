require 'sinatra'
include CaesarCipher

get "/" do
	erb :home
end

get "/encrypt" do
	@message = params[:message]
	@code = encrypt @encryption
	erb :encrypt
end

get "/decrypt" do
	@encryption = params[:enc_message]
	@message = encrypt @encryption
	erb :decrypt
end
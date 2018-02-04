require "sinatra"

def gen_username (lastname, firstname, middlename="")
		username = (firstname[0] + (middlename[0]||"") + lastname[0,5]).downcase
	end


get '/:lastname/:firstname' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	username = gen_username(lastname, firstname)
	"#{firstname} #{lastname}'s username is #{username}"
	end

get '/:lastname/:firstname/:middlename' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	middlename = params[:middlename]
	username = gen_username(lastname, firstname, middlename)
	"#{firstname} #{middlename} #{lastname}'s username is #{username}"
	end
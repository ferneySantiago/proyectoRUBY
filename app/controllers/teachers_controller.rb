class TeachersControlles < ApplicationController
	set :views, File.join( APP_ROOT ,'app','views','Teachers')

	Tilt.register Tilt::ERBTemplate,"html.erb"

	get "/" do
		@teachers = Teachers.all
		erb :index

	end

	get '/:id' do
		id = params[:id].to_i
		@teacher =  Teachers.all[id]
		erb :show
	end

	


end

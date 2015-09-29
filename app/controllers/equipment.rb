
get '/users/:id/equipment/new' do
	@user = User.find_by_id(params[:id])
	erb :'equipment/new'
end

post '/users/:id/equipment' do
	user = User.find_by_id(params[:id])
	equipment = Equipment.new(
		typ: params[:typ],
		year: params[:year],
		make: params[:make],
		info: params[:info],
		user_id: params[:user_id]
		)
	if equipment.save
		redirect "/users/#{user.id}/equipment"
	else
		redirect "/users/#{user.id}/equipment/new"
	end
end

get '/users/:id/equipment' do
	@user = User.find(params[:id].to_i)
	@equipment = @user.equipment
	erb :'users/equipment'
end

get '/equipment' do
	@equipment = Equipment.all
	erb :'equipment/all_equipment'
end

get '/equipment/:id' do
	@equipment = Equipment.find_by_id(params[:id])
	erb :'/equipment/item'
end

get '/equipment/:id/edit' do
	@equipment = Equipment.find_by_id(params[:id])
	erb :'equipment/edit_equipment'
end

post '/equipment/:id/update' do
	equipment = Equipment.find_by_id(params[:id])
	equipment.year = params[:year]
	equipment.make = params[:make]
	equipment.info = params[:info]
	equipment.save
	redirect '/equipment/#{equipment.id}'

end

post '/equipment/:id' do
	equipment = Equipment.find_by_id(params[:id])
	equipment.destroy
	redirect '/equipment'
end

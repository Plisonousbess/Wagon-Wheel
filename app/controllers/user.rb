get '/' do
	erb :index
end

get '/users/new' do
	erb :'users/signup'
end

post '/users/create' do
	user = User.new(params)
	if user.save
		session[:user_id] = user.id
		redirect "/users/#{user.id}"
	else
		redirect "/users/new"
	end
end

get '/login' do
	erb :'users/login'
end

post '/sessions/create' do
	user = User.find_by_email(params[:email])
	if user.nil?
    redirect '/login'
  elsif user.password == params[:password]
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect '/login'
  end
end


get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/users/:id' do
	@user = User.find_by_id(params[:id])
  	erb :'users/profile'
end

get '/users/:id/edit' do
  @user = User.find_by_id(params[:id])
  if current_user == @user
    erb :'users/edit_user'
  else
    redirect "/users/#{session[:user_id]}"
  end
end

post '/users/:id/update' do
  user = User.find_by_id(params[:id])
  user.name = params[:name]
  user.email = params[:email]
  user.password = params[:password]
  user.location = params[:location]
  user.save
  redirect "/users/#{user.id}"
end

post '/users/delete' do
  user = User.find_by_id(params[:id])
  user.destroy
  redirect "/"
end

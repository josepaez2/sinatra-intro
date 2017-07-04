# Index
get '/' do
  @notes = Note.all
  erb :index
end

# New
get '/notes/new' do
  erb :new
end

# Show
get '/notes/:id' do
  @note = Note.find_by(id: params[:id])
  erb :show
end

# Create
post '/notes' do
  @note = Note.new(params[:note])
  if @note.save
    status 302
    redirect "/notes/#{@note.id}"
  else
    @errors = @note.errors.full_messages
    erb :new
  end
end

# Edit
get '/notes/:id/edit' do
  @note = Note.find_by(id: params[:id])
  erb :edit
end

# Update
patch '/notes/:id' do
  note = Note.find_by(id: params[:id])
  note.update(title: params[:title], content: params[:content],quantity: params[:quantity])
  redirect "/notes/#{note.id}"
end

# Destroy
get '/notes/:id/delete' do
  note = Note.find_by(id: params[:id])
  note.destroy
  redirect '/'
end

# shotgun
# shotgun -p 4567 #o el que yo quiera
# rack





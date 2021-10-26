require_relative 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end
end
post '/gossips/new/' do
  puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"
end
post '/gossips/new/' do
  Gossip.new(les_entrées_du_gossip).save
  redirect '/'
        puts "Salut, je suis dans le serveur"
        puts "Ceci est le contenu du hash params: #{params}"
        puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author: #{params["gossip_author"]}"
        puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
        puts "Ca déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
end
get '/gossips/:id' do 
        
  puts "voici le numéro du potin que tu veux : #{params['id']} !"
  erb :show , locals: {gossip: Gossip.all[params[:id].to_i ], id: params[:id].to_i}
     
end

get '/gossips/id/edit/' do
  erb :edit
end

post '/gossips/id/edit/' do 
  
  redirect '/'
end




end
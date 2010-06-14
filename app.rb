def is_it_burning_man?
  (Date.parse('2010-08-30')..Date.parse('2010-09-06')).member?(Date.today)
end

get '/' do
  haml :index, :locals => { :answer => is_it_burning_man? ? 'YES!' : 'NO' }
end
def is_it_burningman?
  burningman_week = ["2010-08-30","2010-08-31","2010-09-01","2010-09-02","2010-09-03","2010-09-04","2010-09-05","2010-09-06"]
  
  burningman_week.each { |d| return true if Date.today.to_s.match(d) }
  false
end

get '/' do
  haml :index, :locals => { :answer => is_it_burningman? ? 'YES!' : 'NO' }
end
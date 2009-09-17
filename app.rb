def is_it_burningman?
  burningman_week = ["2010-08-30","2010-08-31","2010-09-01","2010-09-02","2010-09-03","2010-09-04","2010-09-05","2010-09-06"]
  
  burningman_week.each do |day|
    if Date.today.to_s.match day
      @answer = "YES!"
      return
    else
      @answer = "NO"
    end
  end
end

get '/' do
  is_it_burningman?
  haml :index, :locals => { :answer => @answer }
end
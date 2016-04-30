require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
	data.each do |seasons, season_data|
  		if seasons==season 
  			season_data.each do |person|
  				if person["status"]==="Winner"
  					return person["name"].split[0]
  				end 
  				
  			end 
  		end 
  	end 		 
end

def get_contestant_name(data, occupation)
	data.each do |seasons, season_data|
  		season_data.each do |person|
  			if person["occupation"]===occupation
  				return person["name"]
  			end 
  				
  		end 
  	end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count=0
  data.each do |seasons, season_data|
  		season_data.each do |person|
  			if person["hometown"]===hometown
  				count+=1
  			end 
  				
  		end 
  	end 
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |seasons, season_data|
  		season_data.each do |person|
  			if person["hometown"]===hometown
  				return person["occupation"]
  			end 
  				
  		end 
  	end 
end

def get_average_age_for_season(data, season)
  # code here
  count=0.0
  sum=0.0
  	data.each do |seasons, season_data|
  		if seasons==season 
  			season_data.each do |person|
  				sum+=person["age"].to_f
  				count+=1.0
  			end 
  		end 
  	end 
  	(sum/count).round
end

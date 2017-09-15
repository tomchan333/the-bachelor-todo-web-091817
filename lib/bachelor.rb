require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |stathash|
    if stathash["status"] == "Winner"
      return stathash["name"].split.first
    end
  end
end
  # code here
  #data.each do |season, stathash|
  #  stathash.each do |details|
  #    if details[:"status"] == "winner" && details[:"season"] == season
  #      name << details[:"name"].split.first
  #    end
  #  end
  #end


def get_contestant_name(data, occupation)
  # code here
  ######
  data.each do |season, stathash|
    stathash.each do |bla|
      if bla["occupation"] == occupation
        return bla["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  number = 0
  data.each do |season, stathash|
    stathash.each do |stat|
      if stat["hometown"] == hometown
        number += 1
      end
    end
  end
number
end



  def count_contestants_by_hometown(data, hometown)
    # code here
    number = 0
    data.each do |season, stathash|
      stathash.each do |stat|
        if stat["hometown"] == hometown
          number += 1
        end
      end
    end
    number
  end


def get_occupation(data, hometown)
  # code here
  data.each do |season, stathash|
     stathash.each do |stat|
       if stat["hometown"] == hometown
         return stat["occupation"]
       end
     end
   end
  end

def get_average_age_for_season(data, season)
  # code here
  number = 0
  age_total = 0
  data[season].each do |stathash|
    age_total += stathash["age"].to_f
    number += 1
  end
  return (age_total/number).round
end

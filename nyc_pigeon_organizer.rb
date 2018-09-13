def nyc_pigeon_organizer(data)
  #makes new hash
  new_hash = {}
  #loops facts with values
  data.each do |facts, values|
    
    values.each do |value, pigeon_name|
      pigeon_name.each do |pigeon|
         new_hash[pigeon] ||= {} 
        new_hash[pigeon][facts] ||= [] 
        new_hash[pigeon][facts] << value.to_s 
      end 
    end 
  end 
  new_hash
end
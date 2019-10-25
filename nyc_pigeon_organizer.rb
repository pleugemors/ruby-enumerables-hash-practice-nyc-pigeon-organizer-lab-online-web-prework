def nyc_pigeon_organizer(data)
  # write your code here!
  # Variables -------------------------------------------------
  key1_name = []
  info_hash= {}
  values = []
  name_array = []
  
  key1_name = data.keys 
  
  #go through keys to get values
  #use values to make key1_hashes
  
  row = 0
  while row < key1_name.size do 
    values = data[key1_name[row]].keys
    row2 = 0 
    while row2 < values.size do 
      name_array = data[key1_name[row]][values[row2]]
      row3 = 0 
      while row3 < name_array.size do 
        if info_hash.has_key?(name_array[row3])
          if info_hash[name_array[row3]].has_key?(key1_name[row])
            if info_hash[name_array[row3]][key1_name[row]]== values[row2]
            else
              info_hash[name_array[row3]][key1_name[row]] << "#{values[row2]}"
            end
          else
            info_hash[name_array[row3]][key1_name[row]]= "#{values[row2]}"
          end
        else
          info_hash[name_array[row3]]= {key1_name[row] => []}
          info_hash[name_array[row3]][key1_name[row]] << "#{values[row2]}"
        end
        row3 += 1 
      end
      row2 += 1 
    end
    row += 1 
  end
  
  info_hash
end

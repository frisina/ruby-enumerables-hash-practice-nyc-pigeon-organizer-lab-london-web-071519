def nyc_pigeon_organizer(data)
  # write your code here!
  new_data = {} #declare empty hashes

  data.each do |attribute_category, data_hash|
    values.each do |value, array|
      array.each do |name|
        if hash[name] == nil
          hash[name] = {}
          hash[name][attribute_category] = []
        else
          hash[name][attribute_category] = []
        end
      end
    end
  end

  hash.each do |name, values|
    values.each do |hashvalue, array|
      data.each do |attribute_category, values|
        values.each do |value, array|

          array.each do |element|
            if element == name &&hashvalue == attribute_category
              hash[name][hashvalue] << value.to_s
            end
          end
        end
      end
    end
  end
hash

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |category, attribute_hash|
    attribute_hash.each do |attribute, names_array|
      names_array.each do |name|
        if new_hash == {} || new_hash.has_key?(name) == false
          new_hash[name] = {}
          new_hash[name][category] = [attribute.to_s]
        elsif new_hash[name].has_key?(category)
          new_hash[name][category] << attribute.to_s
        elsif new_hash.has_key?(name) && new_hash[name].has_key?(category) == false
          new_hash[name][category] = [attribute.to_s]
        end
      end
    end
  end
  new_hash
end

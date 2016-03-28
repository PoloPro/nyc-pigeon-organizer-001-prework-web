def nyc_pigeon_organizer(pigeon_data)

  organized_data = {}

  pigeon_data.each do |field, option_hash|
    option_hash.each do |option, name_array|
      name_array.each do |name|
        if organized_data.has_key?(name)
          if organized_data[name].has_key?(field)
            organized_data[name][field] << option.to_s
          else
            organized_data[name][field] = [option.to_s]
          end
        else
          organized_data[name] = {field => [option.to_s]}
        end
      end
    end
  end

  organized_data

end
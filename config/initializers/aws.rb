if Rails.env.developement?
	config = "#{Rails.root}/config/aws.yml"
	if File.exists? config
		aws = YAML.load_file(config)
		aws.each { |key, value| ENV [key] = value }
	else
		raise 'Missing file aws.yml'
	end
end
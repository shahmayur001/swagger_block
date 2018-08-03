class API < Grape::API
	prefix 'api'
	format :json
	version 'v1', using: :path

	before do
	    header['Access-Control-Allow-Origin'] = '*'
	    header['Access-Control-Request-Method'] = '*'
	end

	



	

	add_swagger_documentation	api_version: 'v1',                          
	                          info: {
													    title: "Swagger-block",
													    description: "Swagger-block"												    
	  												}
end
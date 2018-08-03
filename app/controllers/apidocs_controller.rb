class ApidocsController < ApplicationController
include Swagger::Blocks

  swagger_root host: 'localhost:3000' do
    key :swagger, '2.0'
    info do
      key :version, '1.0.0'
      key :title, 'Swagger Block demo'
      key :description, 'A sample API that uses a petstore as an example to ' \
                        'demonstrate features in the swagger-2.0 specification'
      contact do
        key :name, 'Mayur Shah'
      end
      license do
        key :name, 'Codal'
      end
    end
    tag do
      key :name, 'student'
      key :description, 'Students operations'
      externalDocs do
        key :description, 'Find more info here'
        key :url, 'https://swagger.io'
      end
    end
    key :host, 'localhost:3000'
    key :basePath, '/api'
    key :consumes, ['application/json']
    key :produces, ['application/json']
  end

  # A list of all classes that have swagger_* declarations.
  SWAGGERED_CLASSES = [
    StudentsController,
    Student,
    self,
  ].freeze

  def index
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end
end

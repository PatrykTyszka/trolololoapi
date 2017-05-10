# frozen_string_literal: true
module Api
  class ApiController < ActionController::Base
    include Knock::Authenticable

    def render_errors(errors, status)
      render json: { errors: ErrorsParser.parse(errors)}, status: status
    end
  end # class ApiController
end # module Api

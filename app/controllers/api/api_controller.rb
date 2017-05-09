# frozen_string_literal: true
module Api
  class ApiController < ActionController::Base
    include Knock::Authenticable
  end # class ApiController
end # module Api

# frozen_string_literal: true
module Api
  module V1
    class BoardSerializer < ActiveModel::Serializer
      attributes :id, :title
    end # AdmonitionSerializer
  end # module V1
end # module Api

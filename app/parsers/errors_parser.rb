class ErrorsParser
  ERROR_MESSAGE_MAPPER = {
    "can't be blank" => 'required'
  }
  def initialize(errors)
    @errors = errors
  end

  def self.parse(errors)
    new(errors).parse
  end

  def parse
    @errors.each_with_object({}) do |(key, value), result|
      result[key] = ERROR_MESSAGE_MAPPER[value]
    end
  end
end

class ResponseProcessor
  def process(response, entity)
    return entity.new(response) if response.is_a?(Hash)

    if response.is_a?(Array)
      response.map { |h| entity.new(h) if h.is_a?(Hash) }
    end
  end

  def map(params, mapping = {})
    return params if mapping.empty?

    params.each_with_object({}) do |(k, v), hash|
      hash[mapping[k] ? mapping[k] : k] = v
    end
  end
end

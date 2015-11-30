class DNSMessage
  attr_reader :queries, :resource_records

  def initialize(queries = [], resource_records = []) 
    @queries = queries
    @resource_records = resource_records
  end

end

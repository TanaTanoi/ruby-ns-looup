class ResourceRecord
  attr_reader :name, :type, :resource_record_class, :time_to_live

  def initialize(name, type, resource_record_class, time_to_live, data_length, data)
    @name = name
    @type = type
    @resource_record_class = resource_record_class
    @time_to_live = time_to_live
    @data_length = data_length
    @data = data
  end


end

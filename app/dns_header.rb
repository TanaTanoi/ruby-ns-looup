class DNSHeader
  MEANING_OF_LIFE = 42
  attr_reader :id, :question_count, :answer_resource_record_count, :authority_resource_record_count, :additional_resource_record_count, :flags  

  def initialize(id = MEANING_OF_LIFE, question_count = 1, answer_resource_record_count = 0, authority_resource_record_count = 0, additional_resource_record_count = 0, **flags)
    @id = id
    @question_count = question_count
    @answer_resource_record_count = answer_resource_record_count
    @authority_resource_record_count = authority_resource_record_count
    @additional_resource_record_count = additional_resource_record_count
    @flags = flags
  end

end

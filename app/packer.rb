#packer.rb
require_relative 'header_structure'

class Packer
  NULL_TERMINATOR = 0

  RECORD = { a: 1 }
  CLASS = { in: 1 }

  def encode_header(header)
    encode_id(header.id) +
    encode_flags(header.flags) +
    encode_count(header.question_count) +
    encode_count(header.answer_resource_record_count) +
    encode_count(header.authority_resource_record_count) +
    encode_count(header.additional_resource_record_count)
  end

  def encode_message(message)
    encoded_messages = message.queries.map do |question|
      encode_question(question)
    end.join
  end

  def encode_question(question)
    encode_address(question.address) +
    encode_type(question.type) +
    encode_class(question.question_class)
  end

  private

  def encode_flags(flags = 0)
    [0].pack("n")
  end

  def encode_count(header)
    [header].pack("n*")
  end

  def encode_type(type = :a)
    [RECORD[type]].pack("n")
  end

  def encode_class(q_class = :in)
    [CLASS[q_class]].pack("n")
  end

  def encode_id(id)
    [id].pack("n")
  end

  def encode_address(address)
    labels = address.split(".")
    encoded_address = []
    labels.each do |label|
      encoded_address.push(label.length)
      encoded_address.push(label)
    end
    encoded_address.push(NULL_TERMINATOR)

    packstring = create_pack_template(encoded_address)
    encoded_address.pack(packstring)
  end


  def create_pack_template(address)
    address.map do
      |c| c.is_a?(Numeric) ? "c" : "a" + c.length.to_s
    end.join
  end

end

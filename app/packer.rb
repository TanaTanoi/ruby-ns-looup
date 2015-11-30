#packer.rb
require_relative 'header_structure'
class Packer
  NULL_TERMINATOR = 0

  def encode_header(id, address)
    encode_id(id) + encode_flags + encode_counts + encode_address(address) + encode_type + encode_class
  end

  def encode_flags
    [0].pack("n")
  end

  def encode_counts
    [1,0,0,0].pack("n*")
  end

  def encode_type
    [1].pack("n")
  end

  def encode_class
    [1].pack("n")
  end

  def encode_id(id)
    [id].pack("n")
  end

  def encode_address(address)
    labels = address.split(".")
    array = []
    labels.each do |label|
      array.push(label.length)
      array.push(label)
    end
    array.push(NULL_TERMINATOR)
    packstring = array.map { |c| c.is_a?(Numeric) ? "c" : "a"+c.length.to_s }.join
    array.pack(packstring)
  end
end

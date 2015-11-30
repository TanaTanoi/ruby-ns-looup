#packer.rb

class Packer
  def address_to_hex_buffer(address)
    sections = address.split(".")
    sections.map! do |label|
      length = label.length.to_s(16)
      hex_buffer = label.unpack('U*').collect{|x| x.to_s(16) }
      hex_buffer.unshift(length)
    end
    sections.flatten
  end

end

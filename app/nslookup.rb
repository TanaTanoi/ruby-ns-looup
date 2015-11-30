require 'socket' 
require_relative 'packer'
require_relative 'dns_header'
require_relative 'dns_message'
require_relative 'question'

DNS_DEFAULT_PORT = 53

address = ARGV[0]
dns_server_address = ARGV[1]
record_type = ARGV[2].downcase.to_sym
question_class = :in

header = DNSHeader.new
question = Question.new(address, record_type, question_class)
message = DNSMessage.new([question])

packer = Packer.new
dns_request  = packer.encode_header(header) + packer.encode_message(message)

udp_socket = UDPSocket.new
udp_socket.connect(dns_server_address, DNS_DEFAULT_PORT) 
udp_socket.send(dns_request, 0)

puts udp_socket.recvfrom(10000)


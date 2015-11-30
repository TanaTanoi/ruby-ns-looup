#packer_spec.rb
require_relative '../packer'
RSpec.describe "packer" do

  # describe "#address_to_hex_buffer" do
  #   address = "google.com"
  #   subject { Packer.new.address_to_hex_buffer(address) }
  #
  #
  #   context "when google.com is the address" do
  #       it { is_expected.to eq "6 67 6f 67 6c 65 3 63 6f 6d".split }
  #   end
  # end
  subject(:packer) { Packer.new }

  describe "#encode_address" do
    address = "powershop.co.nz"
    result =  "\tpowershop\x02co\x02nz\x00".force_encoding('ASCII-8BIT')
    subject { packer.encode_address(address) }

    it { is_expected.to eq result }
  end

  describe "#encode_id" do
    id = 1234
    result = "\x04\xD2".force_encoding("ASCII-8BIT")
    subject { packer.encode_id(id) }

    it { is_expected.to eq result }
  end

  describe "#encode_header" do
    id = 1234
    address = "powershop.co.nz"
    result = "\x04\xD2\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\tpowershop\x02co\x02nz\x00\x00\x01\x00\x01".force_encoding('ASCII-8BIT')
    subject { packer.encode_header(id,address) }

    it { is_expected.to eq result }
  end
end

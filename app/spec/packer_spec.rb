#packer_spec.rb
require_relative '../packer'
RSpec.describe "packer" do

  describe "#address_to_hex_buffer" do
    address = "google.com"
    subject { Packer.new.address_to_hex_buffer(address) }


    context "when google.com is the address" do
        it { is_expected.to eq "6 67 6f 67 6c 65 3 63 6f 6d".split }
    end
  end
end

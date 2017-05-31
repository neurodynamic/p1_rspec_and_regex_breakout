require 'rspec'

describe '#standardize_phone_number' do
  let(:basic_phone_number) { "(555) 555-5555" }

  it "should not change an already standardized phone number" do
    output = standardize_phone_number(basic_phone_number)
    
    expect(output).to eq(basic_phone_number)
  end

  it "should throw an error if there is no valid phone number"

  it "should change XXX-XXX-XXXX numbers to (XXX) XXX-XXXX format"

  it "should change XXX.XXX.XXXX numbers to (XXX) XXX-XXXX format"

  it "should ignore extra numbers"
end
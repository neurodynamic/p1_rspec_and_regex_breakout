require 'rspec'
require_relative '../phone_numbers'


describe '#standardize_phone_number' do

  let(:basic_phone_number) { "(555) 555-5555" }
  let(:invalid_number) { "fjhdskhfdjkshjkdsf" }
  let(:dash_separated_number) { "555-555-5555" }

  it "doesn't change an already standardized phone number" do
    output = standardize_phone_number(basic_phone_number)

    expect(output).to eq(basic_phone_number)
  end

  it "throws an error if there is no valid phone number" do
    expect { standardize_phone_number(invalid_number) }.to raise_error(InvalidPhoneNumberError)
  end

  it "changes XXX-XXX-XXXX numbers to (XXX) XXX-XXXX format" do
    output = standardize_phone_number(dash_separated_number)

    expect(output).to eq(basic_phone_number)
  end

  it "changes XXX.XXX.XXXX numbers to (XXX) XXX-XXXX format"

  it "ignores extra numbers"
end
require "rails_helper"

RSpec.describe UserInformation, "validations" do
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:prefix) }
  it { is_expected.to validate_presence_of(:suffix) }
  it { is_expected.to validate_presence_of(:address) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:zip_code) }
  it { is_expected.to validate_presence_of(:phone_number) }
  it { should validate_length_of(:zip_code).is_equal_to(5) }
  it { should validate_length_of(:phone_number).is_equal_to(10) }
end

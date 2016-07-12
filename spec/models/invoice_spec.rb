require 'rails_helper'

RSpec.describe Invoice, "validations" do
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:labor) }
  it { is_expected.to validate_presence_of(:tax) }
  it { is_expected.to validate_presence_of(:total) }
end

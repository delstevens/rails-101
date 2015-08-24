require 'rails_helper'

RSpec.describe Inquiry, type: :model do
  it 'gets and sets the attributes of the model: name, email, subject, and message' do
    inquiry = Inquiry.new
    inquiry.name = "Del"
    inquiry.email = "del@eda.com"
    inquiry.subject = "Complaint"
    inquiry.message = "How many controllers does one app need?"

    expect(inquiry.name).to eq("Del")
    expect(inquiry.email).to eq("del@eda.com")
    expect(inquiry.subject).to eq("Complaint")
    expect(inquiry.message).to eq("How many controllers does one app need?")
  end

end


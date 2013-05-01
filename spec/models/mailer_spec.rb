require 'spec_helper'

describe Mailer do
  before do
    @mailer = Mailer.new(company_name: "Mailer Company", contact_name: "Mailer Contact", address: "Mailer Address", 
                         telephone: "123-456-789", email: "mailer@example.com", description: "something to say")
  end
  
  subject { @mailer }
  
  it { should respond_to(:company_name) }
  it { should respond_to(:contact_name) }
  it { should respond_to(:address) }
  it { should respond_to(:telephone) }
  it { should respond_to(:email) }
  it { should respond_to(:description) }
  
  it { should be_valid}
  
  describe "when contact name is not present" do
    before { @mailer.contact_name = " " }
    it { should_not be_valid }
  end
  describe "when company name is too long" do
    before { @mailer.company_name = "a" * 51 }
    it { should_not be_valid }
  end
  describe "when contact name is too long" do
    before { @mailer.contact_name = "a" * 41 }
    it { should_not be_valid }
  end
  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @mailer.email = invalid_address
        @mailer.should_not be_valid
      end
    end
  end
  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.com A_USER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @mailer.email = valid_address
        @mailer.should be_valid
      end
    end
  end
end
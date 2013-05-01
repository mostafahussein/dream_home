require 'spec_helper'

describe "Mailer pages" do
  
 subject { page }
 
 
 describe "mail us" do
     before { visit mailus_path }
     let(:submit) { "Send my Mail"}
     
      describe "with invalid information" do
       it "should not send a mail" do
         expect { click_button submit }.not_to change(Mailer, :count)
         end
     end
     
     describe "with valid information" do
       before do
         fill_in "Company name", with: "Mailer Company"
         fill_in "Contact name", with: "Mailer Contact"
         fill_in "Address",      with: "Mailer Address"
         fill_in "Telephone",    with: "123-456-789"
         fill_in "Email",        with: "mailer@example.com"
         fill_in "Description",  with: "something to say"
       end
       
       it "should send a mail" do
         expect { click_button submit }.to change(Mailer, :count).by(1)
       end
     end
   end
 end
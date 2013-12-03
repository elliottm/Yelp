require "spec_helper"

describe RestaurantMailer do
  describe "notify_owner" do
    let(:mail) { RestaurantMailer.notify_owner }

    it "renders the headers" do
      mail.subject.should eq("Notify owner")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end

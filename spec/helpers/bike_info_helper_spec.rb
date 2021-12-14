require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the BikeInfoHelperHelper. For example:
#
# describe BikeInfoHelperHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe BikeInfoHelper, type: :helper do
  it "can list site name" do
    # result = Youbike::BikeInfo.call(keyword: '南港')

    fake_data = [
      {site_name: '南港1', bike_amount: 10},
      {site_name: '南港2', bike_amount: 15},
    ]

    all_bikes = double("bikessssss")
    allow(all_bikes).to receive(:map).and_return(fake_data)

    expect(site_list(all_bikes).count).to be 2
  end
end

module Youbike
  class BikeInfo < ApplicationService
    def initialize(keyword: nil, uri: nil)
      @keyword = keyword || ''
      @uri = uri || 'https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json'
    end

    def call
      uri = URI(@uri)
      sites = JSON.parse(Net::HTTP.get(uri))

      if not @keyword.empty?
        sites = sites.filter { |site| site['sna'].include?(@keyword) }
      end

      sites.map { |site| { site_name: site['sna'].delete_prefix('YouBike2.0_'),
                           bike_amount: site['sbi'] } }
    end
  end
end

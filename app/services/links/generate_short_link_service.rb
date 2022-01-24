class Links::GenerateShortLinkService < ApplicationService

 def initialize(params)
   @long_link = params[:link]["long_link"]
 end

 def call
   test
 end

 def test
  code = loop do
    encoded = SecureRandom.urlsafe_base64(8, false)
    break encoded unless Link.exists?(short_link: encoded)
  end
  link_a = Link.create(long_link: @long_link, short_link: code)
 end
end


#def generate_short_url(business)
#    link = "#{ENV['DASHBOARD_URL']}/session_login?jwt=#{auth_token}"
#    code = loop do
#      encoded = SecureRandom.urlsafe_base64(8, false)
#      break encoded unless UserBusinessLink.exists?(short_link: encoded)
#    end
#    UserBusinessLink.create(business_id: @business_id, short_link: code, long_link: link, message_type: @message_type)
#    "#{ENV['DASHBOARD_URL']}/url/#{code}"
#  end

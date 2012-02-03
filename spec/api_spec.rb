require 'rubygems'
require 'httparty'
require File.expand_path('../../lib/producteev/api.rb', __FILE__)
require File.expand_path('../spec_helper.rb', __FILE__)

describe Producteev::Api do
   before do
     Producteev::Api.instance.api_set("123","123")
   end

   it "should generate the correct signature with 3 inputs" do
    data = { :password => "asdasd", :page => "1", :email => "test@test.com"}
    sign = "f287c3869cfe040db57340ca0656f6e8"
    Producteev::Api.instance.generate_signature(data).should == sign
  end

  it "should generate the correct signature with 0 inputs" do
    sign = "202cb962ac59075b964b07152d234b70"
    Producteev::Api.instance.generate_signature("").should == sign
  end

  it "should generate the correct signature with an hash/hash input" do
    data = { :password => "asdasd", :page => "1", :email => "test@test.com", 
            :data => {:data1 =>"test", :data2 => "test2"}}
    sign = "f287c3869cfe040db57340ca0656f6e8"
    Producteev::Api.instance.generate_signature(data).should == sign
  end

end
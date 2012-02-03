require 'rubygems'
require 'httparty'
require File.expand_path('../../lib/producteev/validator.rb', __FILE__)
require File.expand_path('../spec_helper.rb', __FILE__)

describe Producteev::Validator do
   
   it "it should return true if the required fields are there" do
    data = { :one => "", :two => ""}
    Producteev::Validator.validate(data,data).should == true
  end

   it "it should raise ValidatioException if the required fields missing" do
    data = { :one => "", :two => ""}
    data2 = { :one => ""}
    lambda { 
        Producteev::Validator.validate(data,data2)
        }.should raise_error(Producteev::ValidationException)
  end

end
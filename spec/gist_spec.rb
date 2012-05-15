require_relative 'spec_helper'

describe Gister::Gist do
  
  describe "#public_gists" do
    before do
      
    end
    
    it "should request all the public gists" do
      subject.public_gists
    end
  end
  
  describe "#gists" do
    context "when you are logged in" do
      it "should request all of your gists" do
        
      end
    end
    context "when you are not logged in" do
      it "should request all the public gists" do
        
      end
    end
  end
  
  
end

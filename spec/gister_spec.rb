require_relative 'spec_helper'

describe Gister::Gister do

  before do
    subject.stub(:connection) { connection }
  end

  let(:connection) { mock('conection') }

  describe "#public_gists" do
    before do
      connection.should_receive(:get).with('/gists') { [ 'results' ] }
    end

    it "should request all the public gists" do
      subject.public_gists
    end
    
    it "should return some gists" do
      subject.public_gists.should be_kind_of(Enumerable)
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

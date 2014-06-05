require 'spec_helper'

describe Bronto::Thesaurus do
  
	context "when a word is entered" do
	 	before do
      @thesaurus = Bronto::Thesaurus.new
	 		@response = @thesaurus.lookup("fish")
	 	end

		context "when it returns a hash of synonym strings grouped by part of speech" do
      it "has verb and noun keys" do
        expect(@response).to have_key :verb
        expect(@response).to have_key :noun
      end

      it "has hashes whose keys are :syn" do
        expect(@response[:verb]).to have_key :syn
        expect(@response[:noun]).to have_key :syn
      end

      it "contains arrays of strings" do
        expect(
          @response[:verb][:syn].map {|s| s.class}.uniq.first
        ).to(eq(String))
        expect(
          @response[:noun][:syn].map {|s| s.class}.uniq.first
        ).to(eq(String))
      end
    end
  end

end

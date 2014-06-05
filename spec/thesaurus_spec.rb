require 'spec_helper'

describe Bronto::Thesaurus do
  
	context 'when a word is entered' do
	 	before do
      @thesaurus = Bronto::Thesaurus.new
	 		@response = @thesaurus.lookup("fish")
	 	end

		it 'returns a hash of synonyms grouped by part of speech' do
      fish_response = {
        verb: {
          syn: [
            "angle", 
            "catch",
            "fish", 
            "grab", 
            "look for", 
            "search", 
            "seek", 
            "take hold of"
          ]
        },
        noun: {
          syn: [
            "aquatic vertebrate",
            "fish",
            "food",
            "individual",
            "mortal",
            "person",
            "pisces",
            "pisces the fishes",
            "solid food",
            "somebody",
            "someone",
            "soul"
          ]
        }
      }

      expect(@response).to eq fish_response
    end
  end

end

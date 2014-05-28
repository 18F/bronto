require 'spec_helper'

describe BrontoGem do
  
	context 'when a word is entered' do
	 	before do
	 		@response = BrontoGem.lookup("fish")
	 	end

		it 'returns a hash of synoyms grouped by part of speech' do
      fish_response = {
        verb: {
          syn: ["angle", "catch", "grab", "look for", "search", "seek", "take hold of"]
        },
        noun: {
          syn: [
            "aquatic vertebrate",
           "food",
           "individual",
           "mortal",
           "person",
           "pisces",
           "pisces the fishes",
           "solid food",
           "somebody",
           "someone",
           "soul"]
        }
      }
      
      expect(@response).to eq fish_response
		end

	end
  
end
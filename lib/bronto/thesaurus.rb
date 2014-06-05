require 'wordnet'
require 'wordnet-defaultdb'

$lex = WordNet::Lexicon.new

module Bronto
  class Thesaurus
    def lookup(word)
      query = word.downcase
      synonyms = get_synonyms query
      return nil if synonyms.nil? # check out early if nothing is found
    
      hash = {}
    
      if synonyms
        synonyms.each do |synonym|
          hash[synonym.last] = {syn: [] } unless hash.member?(synonym.last)
          hash[synonym.last][:syn] << synonym.first
        end
      end
      
      hash.keys.each do |key1|
        val1 = hash[key1]
        val1.sort! if val1.respond_to? :sort!
        
        val1.keys.each do |key2|
          val2 = hash[key1][key2]
          val2.sort! if val2.respond_to? :sort! 
        end
      end
    
      hash
    end
    
    private
    
    def get_synonyms(query)
      synsets = $lex.lookup_synsets(query)

      words = []
    
      synsets.each do |synset|
        synset.words.map {|word| words << [word.lemma, synset.part_of_speech.to_sym] unless word.lemma == query}
      
        synset.hypernyms.each do |hypernym|
          hypernym.words.map {|word| words << [word.lemma, synset.part_of_speech.to_sym] unless word.lemma == query}
        end
      end

      synonyms = words.sort_by {|word| word.first }.uniq!
      synonyms
    end
  end
  
end
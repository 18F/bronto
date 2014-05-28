require 'wordnet'
require 'wordnet-defaultdb'

$lex = WordNet::Lexicon.new

module BrontoGem
  def self.lookup(word)
    query = word.downcase
    synsets = $lex.lookup_synsets(query)

    words = []
    
    synsets.each do |synset|
      synset.words.map {|word| words << [word.lemma, synset.part_of_speech.to_sym] unless word.lemma == query}
      
      synset.hypernyms.each do |hypernym|
        hypernym.words.map {|word| words << [word.lemma, synset.part_of_speech.to_sym] unless word.lemma == query}
      end
    end

    synonyms = words.sort_by {|word| word.first }.uniq!
    
    return nil if synonyms.nil? # check out early if nothing is found
    
    hash = {}
    
    if synonyms
      synonyms.each do |synonym|
        hash[synonym.last] = {syn: [] } unless hash.member?(synonym.last)
        hash[synonym.last][:syn] << synonym.first
      end
    end
    
    hash
  end
end
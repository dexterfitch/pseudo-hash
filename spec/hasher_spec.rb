require('rspec')
require('hasher')

describe(MyHash) do

  describe('#fetch_value') do
    it('retrieves a value corresponding to a given key') do
      test_hash = MyHash.new()
      test_hash.store('kitten', 'cute')
      expect(test_hash.fetch_value('kitten')).to(eq('cute'))
    end

    it('returns an error message if the key wasn\'t found') do
      test_hash = MyHash.new()
      test_hash.store('kitten', 'cute')
      expect(test_hash.fetch_value('puppy')).to(eq('Sorry, that wasn\'t found!'))
    end
  end

  describe('#fetch_key') do
    it('retrieves a key corresponding to a given value') do
      test_hash = MyHash.new()
      test_hash.store('kitten', 'cute')
      expect(test_hash.fetch_key('kitten')).to(eq('cute'))
    end

    it('returns an error message if the value wasn\'t found') do
      test_hash = MyHash.new()
      test_hash.store('kitten', 'cute')
      expect(test_hash.fetch_key('awesome')).to(eq('Sorry, that wasn\'t found!'))
    end
  end

  describe('#keys') do
    it('retrieves a list of all stored keys') do
      test_hash = MyHash.new()
      test_hash.store('puppy', 'awesome')
      expect(test_hash.keys()).to(eq(["puppy"]))
    end
  end

  describe('#values') do
    it('retrieves a list of all stored values') do
      test_hash = MyHash.new()
      test_hash.store('puppy', 'awesome')
      expect(test_hash.values()).to(eq(["awesome"]))
    end
  end

  describe('#merge') do
    it('combines two created hashes') do
      test_hash_1 = MyHash.new()
      test_hash_2 = MyHash.new()
      test_hash_1.store('puppy', 'awesome')
      test_hash_2.store('kitten', 'cute')
      expect(test_hash_1.merge(test_hash_2)).to(eq(["puppy","awesome","kitten","cute"]))
    end
  end

end

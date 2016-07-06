require('rspec')
require('tamagotchi')

describe(Tamagotchi) do

  describe('#initialize') do
    it('instantiates a tamagotchi object') do
      pet = Tamagotchi.new('gootchi-goo')
      expect(pet.class).to eq(Tamagotchi)
    end

    it('creates a tamagotchi pet object with a name') do
      pet = Tamagotchi.new('gootchi')
      expect(pet.name()).to eq('gootchi')
    end
  end

  describe('.time_passes') do
    it('advances time randomly amount of time between one to three hours inclusive') do
      start_time = Tamagotchi.display_time()
      Tamagotchi.time_passes()
      end_time = Tamagotchi.display_time()
      expect(1 <= (end_time - start_time) && (end_time - start_time) <= 3)
    end
  end

  describe('.display_time') do
    it('displays the current value of Tamagotchi clock as an integer') do
      expect(Tamagotchi.display_time().class).to eq(Fixnum)
    end
  end

  describe('#feed') do
    it('feed state changes from fed to hungry when from 6 to 12 hours have passed since last feeding') do
      pet = Tamagotchi.new("gootchi")
      start_feed_state = pet.show_feed_state()
      time_passed = 0
      while Tamagotchi.display_time() < 6 do
        Tamagotchi.time_passes()
      end
      expect(pet.display_feed_state()).to eq('hungry')
    end
  end
end

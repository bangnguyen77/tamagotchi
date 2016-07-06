class Tamagotchi

@@clock = 0

  define_method(:initialize) do |name|
    @name = name
    @feed_state = 'hungry'
    @last_fed = 0
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:time_passes) do
    @@clock += rand(1..3)
  end

  define_singleton_method(:display_time) do
    @@clock
  end

  define_method(:feed) do
    Tamagotchi.time_passes()
    @last_fed = Tamagotchi.display_time()
    Tamagotchi.update_states()
  end

  define_singleton_method(:update_states) do

  end

end

class Metronome
    attr_accessor :bpm

    def initialize bpm
        @bpm = bpm
    end

    def run
        Thread.new do
            loop do
                puts "\a"
                sleep 60.0/@bpm
            end
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    metronome = Metronome.new 60
    metronome.run

    line = gets.chomp
    while line.length > 0
        bpm = line.to_f
        metronome.bpm = bpm
        line = gets.chomp
    end
end

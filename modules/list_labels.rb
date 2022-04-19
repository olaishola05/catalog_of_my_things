module ListLabels
    
    def list_all_labels(@labels)
        puts 'Sorry there is no label available' if @labels.empty?
        @label.each { |label| puts "Title: #{label.title}, Color: #{label.color}" }
      end    
end
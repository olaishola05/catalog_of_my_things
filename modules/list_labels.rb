module ListLabels
  def list_all_labels(labels)
    puts 'Sorry there is no label available' if labels.empty?

    puts
    labels.each_with_index { |label, index| puts "#{index}: [Label] Title: #{label.title}, Color: #{label.color}" }
    puts
  end
end

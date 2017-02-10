words = IO.read("test_text.txt")

domain_pattern = /@\w*.\w*/
domains = words.scan(domain_pattern)
domain_frequency = Hash.new(0)
domains.each do |domain|
  domain_frequency[domain] += 1
end

p domain_frequency

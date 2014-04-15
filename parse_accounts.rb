require 'json'

accounts = []
l=File.readlines('accounts.txt')
l.each do |a|
  (num, des)=a.split(/\. /)
  accounts << { number: num, description: des.chop }
end

puts accounts.to_json

require 'json'


#country code      : iso country code, 2 characters
#postal code       : varchar(20)
#place name        : varchar(180)
#admin name1       : 1. order subdivision (state) varchar(100)
#admin code1       : 1. order subdivision (state) varchar(20)
#admin name2       : 2. order subdivision (county/province) varchar(100)
#admin code2       : 2. order subdivision (county/province) varchar(20)
#admin name3       : 3. order subdivision (community) varchar(100)
#admin code3       : 3. order subdivision (community) varchar(20)
#latitude          : estimated latitude (wgs84)
#longitude         : estimated longitude (wgs84)
#accuracy          : accuracy of lat/lng from 1=estimated to 6=centroid

postal = []
l=File.readlines('ES.txt')
l.each do |a|
  (country_code,
   postal_code,
   admin_name1,
   admin_code1,
   admin_name2,
   admin_code2,
  admin_name3,
  admin_code3,
  latitude,
  longitude,
  accuracy)=a.split(/\t/)
  postal << { country_code: country_code,
   postal_code: postal_code,
   admin_name1: admin_name1,
   admin_code1: admin_code1,
   admin_name2: admin_name2,
   admin_code2: admin_code2,
  admin_name3: admin_name3,
  admin_code3: admin_code3,
  latitude: latitude,
  longitude: longitude,
  accuracy: accuracy}
end

puts postal.to_json

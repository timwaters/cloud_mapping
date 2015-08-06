# Expand Expire List Script takes in a filename to an osm2pgsql expiry list 
# and calculates the other tiles above that that need to be expired.
#
# Used to process an expiry list from osm2pgsql to tilestache-clean.py 
# Because osm2pgsql does not include the redundant tiles in the list and 
# because tilestache-clean.py only removes the tiles specified in the list
# 
#For example given 
#19/330266/167941
#18/165133/83971
#will produce an much expanded list
#10/165133/83970
#10/82566/41985
#11/165133/83970
#11/82566/41985
#12/165133/83970
#12/82566/41985
#13/165133/83970
#...
#18/165133/83970
#18/165133/83971
#19/330266/167941
#
# Usage "ruby expand_expire_list.rb test_expire.list"
#

# Tim Waters 2015

filename = ARGV[0]

$tiles = []
def expire_tile(z,x,y)
    unless $tiles.include?("#{z}/#{x}/#{y}")
       $tiles << "#{z}/#{x}/#{y}"
    end
end

File.foreach(filename) do | line |

    z,x,y = line.split("/").map(&:to_i)

    z.downto(11) do |zoom|
        zoom = zoom - 1
        z2,x2,y2 = zoom, x/2, y/2
        expire_tile(z2,x2,y2)
    end

    expire_tile(z,x,y)

end #File line

puts $tiles 


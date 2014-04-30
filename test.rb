#! /usr/bin/env ruby

$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'lib/discogs'

wrapper = Discogs::Wrapper.new("buntine-test-app")

artist = wrapper.get_artist("Master's Hammer")
release = wrapper.get_release("611973")
master_release = wrapper.get_master_release("6119")
search_results = wrapper.search("Necrovore")

puts release.title
puts artist.name
puts artist.releases[0].title
puts artist.releases[0].release_type
puts release.styles.inspect
puts artist.releases[0].year
puts artist.releases[1].title
puts master_release.main_release
puts master_release.styles

puts search_results.total_results
puts search_results.total_pages
puts search_results.current_page

puts search_results.exact[0].type
puts search_results.exact[0].title

puts search_results.exact(:label)

puts search_results.results[3].title

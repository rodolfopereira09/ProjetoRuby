require 'rest-client'
require 'json'


responsemake = RestClient.get('http://desafioonline.webmotors.com.br/api/OnlineChallenge/Make')
puts "response code: #{responsemake.code}"
puts "response headers: #{responsemake.headers}"
puts "response body: #{responsemake.body}"

responsemodel = RestClient.get('http://desafioonline.webmotors.com.br/api/OnlineChallenge/Model?MakeID=2')
puts "response code: #{responsemodel.code}"
puts "response headers: #{responsemodel.headers}"
puts "response body: #{responsemodel.body}"


responseversion = RestClient.get('http://desafioonline.webmotors.com.br/api/OnlineChallenge/Version?ModelID=1')
puts "response code: #{responseversion.code}"
puts "response headers: #{responseversion.headers}"
puts "response body: #{responseversion.body}"

responseveich = RestClient.get('http://desafioonline.webmotors.com.br/api/OnlineChallenge/Vehicles?Page=1')
puts "response code: #{responseveich.code}"
puts "response headers: #{responseveich.headers}"
puts "response body: #{responseveich.body}"
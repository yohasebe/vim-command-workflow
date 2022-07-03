require 'json'

locale  = ARGV[0] || "en_us"
fcurrent = File.dirname(__FILE__)
dcurrent = File.expand_path(fcurrent)
cheatsheet = File.read(File.join(dcurrent, "compiled", locale + ".json"))

print cheatsheet

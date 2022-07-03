require 'json'

locale       = ARGV[0] || "en_us"
fixed_order  = /\A(?:True|true|T|t)\z/ =~ ARGV[1] ? true : false
separator    = ARGV[2] || "⎯"

fcurrent = File.dirname(__FILE__)
dcurrent = File.expand_path(fcurrent)

json = File.open(File.join(dcurrent, "compiled", locale + ".json"))
cheatsheet = JSON.load(json)

items = []
cheatsheet.each do |v|
  item = {
    "title": "#{v['desc']}".capitalize,
    "subtitle": "#{v['category']} #{separator} #{v['key']}",
    "arg": [v['ascript']],
    "icon": {
      "type": "file",
      "path": File.join(dcurrent, "img", "#{v['catcode']}.png")
    },
    "match": "#{v['search']} #{v['category']} #{v['key']}"
  }
  item["uid"] = v['catcode'] + "-" + v['category'] unless fixed_order
  items << item
end

result = {"items" => items}.to_json
print result

$:.unshift File.dirname(__FILE__)
require 'template.rb'
require 'json'

class Hash
  def deep_merge(*others)
    self.clone.deep_merge!(*others)
  end

  def deep_merge!(*others)
    _child_merge = -> (_, self_val, other_val){
      if self_val.instance_of?(Hash) && other_val.instance_of?(Hash)
        self_val.merge other_val, &_child_merge
      else
        other_val
      end
    }
    self.merge! *others, &_child_merge
  end
end

def preprocess(json)
  results = json.gsub(/<[^<>]+>([^<>]+)<\/[^<>]+>/){$1}
  results.gsub!(/'\(\)'/){""}
  results.gsub!(/\([^\(\)]+\)/){""}
  results
end

def convert(items)
  {
    "items" => items.map do |v|
      ref_only = v['ref_only'] ? " (Reference only)" : ""
      {
        "title": "#{v['desc']}".capitalize,
        "subtitle": "#{v['category']}#{ref_only} ⎯  #{v['key']}",
        "arg": [v['ascript']],
        "icon": {
          "type": "file",
          "path": File.join("img", "#{v['catcode']}.png")
        },
        "match": "#{v['search']} #{v['category']} #{v['key']}"
      }
    end
  }
end

fcurrent = File.dirname(__FILE__)
dcurrent = File.expand_path(fcurrent)

base_json= File.read(File.join(dcurrent, "base.json"))
base_data  = JSON.parse(base_json)
en_json= File.read(File.join(dcurrent, "locales", "en_us.json"))
en_data  = JSON.parse(preprocess(en_json))
en_data = base_data.deep_merge en_data

Dir.foreach(File.join(dcurrent, "locales")) do |item|
  next if File.extname(item) != ".json"
  locale = File.basename(item, ".json")
  locale_json= File.read(File.join(dcurrent, "locales", item))
  locale_data  = JSON.parse(preprocess(locale_json))
  data = base_data.deep_merge locale_data
  applied = apply_template(en_data, data)
  compiled = convert(applied)
  fcompiled = File.join(dcurrent, "compiled", locale + ".json")
  File.open(fcompiled, "w") do |f|
    f.write compiled.to_json
  end
end


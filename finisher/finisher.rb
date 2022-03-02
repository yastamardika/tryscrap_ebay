collections = Datahen::Client::ScraperJobOutput.new.collections("tryscrap_ebay")
collection = collections.find{|collection| collection['collection'] == "products" }
if collection
  total = collection["outputs"]
   outputs << {
     "_collection" => "summary",
     "total_listings" => total
   }
else
   puts "no listings collection found"
end
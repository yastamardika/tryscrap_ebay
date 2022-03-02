html = Nokogiri.HTML(content)
price = html.css('#prcIsum').text 
price = html.css('[itemprop="price"]').text if price.strip == '' 
price = html.css('#prcIsum_bidPrice').text if price.strip == '' 
raise 'something happend!' if price.strip == ''

outputs <<{
    _collection: "products",
    url: page['url'],
    name: page['vars']['name']
}
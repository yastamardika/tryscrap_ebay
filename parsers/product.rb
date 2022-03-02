html = Nokogiri.HTML(content)
price = html.css('#prcIsum').text 
raise 'something happend!' if price.strip == ''

outputs <<{
    _collection: "products",
    url: page['url'],
    name: page['vars']['name']
}
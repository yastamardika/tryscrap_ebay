html = Nokogiri.HTML(content)
price = html.css('#prcIsum').text 
price = html.css('.display-price').text if price.strip == '' 
raise 'something happend!' if price.strip == ''

outputs <<{
    _collection: "products",
    url: page['url'],
    name: page['vars']['name']
}
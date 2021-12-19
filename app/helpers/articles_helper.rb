require 'rubygems'
require 'readability'
require 'open-uri'

module ArticlesHelper
  def get_articles(pageNumber)
    $cache = ActiveSupport::Cache::MemoryStore.new(expires_in: 5.minutes) if $cache.nil?
    url = "#{ENV['REMOTE_HOST_URL']}?p=#{pageNumber}"
    unless $cache.read(url)
      source = Nokogiri::HTML(URI.open(url))
      articles = []
      tr_list = source.css('//table.itemlist/tr').to_a
      tr_list = tr_list.slice(0, tr_list.length - tr_list.length % 3)
      tr_list.in_groups_of(3, false).each do |group|
        article = {
          id: 0,
          title: '',
          subtitle: '',
          url: ''
        }
        group.each_with_index do |tr, index|
          if (index % 3).zero?
            article[:id] = tr.attribute('id').value
            article[:title] = tr.at_css('td[3]').text
            article[:url] = tr.at_css('td[3] a').attribute('href').value
          elsif index % 3 == 1
            article[:subtitle] = tr.text
          end
        end
        articles.push(article)
      end

      $cache.write(url, articles)
    end
    $cache.read(url)
  end
end

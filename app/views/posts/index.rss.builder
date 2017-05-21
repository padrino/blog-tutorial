xml.instruct!
xml.rss "version" => "2.0", "xmlns:dc" => "http://dublincore.org/documents/dc-xml-guidelines/" do
  xml.channel do
    xml.title "Padrino Blog"
    xml.description "The fantastic padrino sample blog"
    xml.link url_for(:posts, :index)

    for post in @posts
      xml.item do
        xml.title post.title
        xml.description post.body
        xml.pubDate post.created_at
        xml.link url_for(:posts, :show, :id => post.id)
      end
    end
  end
end

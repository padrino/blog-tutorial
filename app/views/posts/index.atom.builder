xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  xml.title   "Padrino Sample Blog"
  xml.link    "rel" => "self", "href" => url_for(:posts, :index)
  xml.id      url_for(:posts, :index)
  xml.updated @posts.first.created_at.strftime "%Y-%m-%dT%H:%M:%SZ" if @posts.any?
  xml.author  { xml.name "Padrino Team" }

  @posts.each do |post|
    xml.entry do
      xml.title   post.title
      xml.link    "rel" => "alternate", "href" => url_for(:posts, :show, :id => post)
      xml.id      url_for(:posts, :show, :id => post)
      xml.updated post.created_at.strftime "%Y-%m-%dT%H:%M:%SZ"
      xml.author  {}
    end
  end
end

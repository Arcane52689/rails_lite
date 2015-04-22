module RouteHelper

  def link_to(url, text)
    <<-HTML
      <a href="#{url}">#{text}</a>
    HTML
  end

  def button_to(url, text, method = "get")
    <<-HTML
      <form class="button" action="#{url}" method="post">
        <input type="hidden" name="_method" value="#{method}">
        <button>#{text}</button>
      </form>
    HTML
  end


end

module ApplicationHelper
    def title
    base_title = "Lnclass Education"
    if @title.nil?
      base_title
    else
      "#{@title} • #{base_title}"
    end
  end
end

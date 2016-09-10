class Template
  attr_accessor :title, :subtitle, :body, :footer
  def initialize(title, subtitle, body, footer)
    @title = title
    @subtitle = subtitle
    @body = body
    @footer = footer
  end

  def render
    "
    #{@title}
    #{@subtitle}
    ---
    #{@body}
    ---
    #{@footer}
    "
  end

  def clone
    Template.new(@title, @subtitle, @body, @footer)
  end
end

original = Template.new('Title', 'SubTitle', 'Lorem Ipsum', 'Footer')
puts original.render

variation = original.clone
variation.title = 'New Title'
puts variation.render

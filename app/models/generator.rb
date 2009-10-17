class Generator

  attr_reader :name, :variables_with_defaults, :headline_template, :text_template, :headline, :text

  def initialize(name, variables_with_defaults, headline_template, text_template)
    @name = name
    @variables_with_defaults = variables_with_defaults
    @headline_template = headline_template
    @text_template = text_template
  end

  def render(values)
    render_clone = self.clone
    render_clone.store_rendered_templates(values)
    render_clone
  end

  def store_rendered_templates(values)
    @headline = Generator.render_with_context(headline_template, values)
    @text     = Generator.render_with_context(text_template, values)
  end
  protected :store_rendered_templates

  def preview
    render(self.variables_with_defaults)
  end

  def self.render_with_context(template, context)
    rendered_template = template

    context.each do |var_name, val|
      rendered_template.gsub!("{{#{var_name}}}", val.to_s)
    end

    rendered_template
  end

  DESCRIPTIONS = {
    :who => "Who is it?",
    :what => "What are they?"
    }

  cattr_accessor :all
  self.all = []
  self.all << Generator.new("you're a poo!", {:who => "Raffi", :what => "A poo"}, "{{who}} is {{what}}!", "Last night it was revealed that {{who}} is indeed {{what}}.\nThey were unavailable for comment,but it is believed they will be holding a press conference later today")
end

class MessagesController < ApplicationController
  layout 'mr_layout', :only=>[:with_layout]
  def index
    render :text=>"Hello World: #{Time.now.xmlschema}"
  end
  
  def with_template
  end
  
  def with_layout
    render :action => "with_template"
  end
  
  def silly_partials
    if num = params[:the_number]
      @the_number = num.to_i
    else
      @the_number = rand(20)
    end
  end
end

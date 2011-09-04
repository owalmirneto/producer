module ApplicationHelper


  def error_messages_for(resource)
      render :partial => 'shared/error_messages',
        :locals => { :resource => resource }
  end
end


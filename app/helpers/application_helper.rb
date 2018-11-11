module ApplicationHelper

  def logged_in?
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
	def flash_class(level)
	    case level
	        when :notice
	        	"alert alert-info"
	        when :success 
				"alert alert-success"
	        when :error 
	        	"alert alert-danger"
	        when :alert 
	        	"alert alert-danger"
	        else
	        	""
	    end
	end

end

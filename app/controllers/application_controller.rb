class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_student
    Student.find_by_id(session[:student_id])
  end

  helper_method :current_student


  def authorize
     if current_student.nil?
       redirect_to login_path
     end
  end
end

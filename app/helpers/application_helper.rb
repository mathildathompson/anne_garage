module ApplicationHelper
  def intellinav
    links = ''
    if @current_user
      links += "<li>#{ link_to('Log out ' + @current_user.first_name, login_path, :method => :delete, :confirm => 'Really log out?') }</li>
      <li>#{ link_to('New Garage Sale', new_sale_path) }</li><li>#{ link_to('Find a Garage Sale', search_path) }</li><li>#{ link_to('F.A.Q', faq_path) }</li>"
    else
      links += "<li>#{ link_to('Sign up', new_user_path) }</li>
       <li>#{ link_to('Sign in', login_path) }</li>"
    end
    links
  end
end
class ApplicationController < ActionController::Base
    http_basic_authenticate_with name: "Rahulgupta", password: "Rahul4486@"

end

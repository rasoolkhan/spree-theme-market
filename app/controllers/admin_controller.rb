class AdminController < ApplicationController 
  http_basic_authenticate_with name: "tracy", password: "super_secure"  
end

Rails.application.routes.draw do
  get("/", { :controller => "route", :action => "rules" })
  get("/rock", { :controller => "route", :action => "rock" })
  get("/paper", { :controller => "route", :action => "paper" })
  get("/scissors", { :controller => "route", :action => "scissors" })
end

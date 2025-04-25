Rails.application.routes.draw do


  get("/", { :controller => "dice", :action => "home"})
  
  get("/dice/:num/:side", { :controller => "dice", :action => "quant_side" })

end

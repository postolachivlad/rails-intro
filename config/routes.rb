Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "pages#home"
  #
  # Generic syntax:
  # verb "path", to: "controller#action"
  get "about", to: "pages#about", as: :about
  get "contact", to: "pages#contact"
  # get("about", { to: "pages#about", as: :about })
end

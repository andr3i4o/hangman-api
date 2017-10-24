Rails.application.routes.draw do
	mount_devise_token_auth_for 'User', at: 'auth'

	resources :categories

	get 'word' => 'words#word'
end

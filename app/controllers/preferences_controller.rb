class PreferencesController < GOauthController
  def get_update
    @preferences.set_preferences(params)
    cookies[:preferences] = ActiveSupport::JSON.encode(@preferences.hash)
    #@preferences.save
    #puts cookies[:preferences]
    render text: "#{@preferences.hash} #{params}"
  end
  
  def get_persisted_preferences_files
    render text: @gapi.count_preferences
  end
end
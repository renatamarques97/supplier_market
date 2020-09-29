class ApplicationController < ActionController::Base
  before_action :set_language

  def set_locale
    set_language
    redirect_to root_path
  end

  private

  def set_language
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  def default_url_options(options = {})
    p options if options != {}
    { locale: I18n.locale }.merge options
  end
end

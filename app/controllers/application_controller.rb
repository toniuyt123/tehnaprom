class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_sessions
  def CSVread(file)
	CSV.parse(text_file.content, converters: :numeric)
  end
end

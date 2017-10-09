class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_sessions
  def CSVread(file)
	txtfile = TextFile.new({name: file.original_filename, content: file.read})
	txtfile.save
	CSV.parse(text_file.content, converters: :numeric)
  end
end

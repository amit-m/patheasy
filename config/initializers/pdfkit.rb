PDFKit.configure do |config|
#config.wkhtmltopdf = 'C:\Program Files\wkhtmltopdf\wkhtmltopdf .exe'
#config.wkhtmltopdf = '/usr/bin/wkhtmltopdf'
config.wkhtmltopdf = '/usr/bin/wkhtmltopdf'
config.default_options[:quiet] = false
config.default_options = {
:page_size => 'Legal',
:print_media_type => true
}
# config.root_url = "http://localhost" # Use only if your external hostname is unavailable on the server.
end

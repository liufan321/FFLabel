Pod::Spec.new do |s|
  s.name         = "FFLabel"
  s.version      = "0.0.1"
s.summary      = "An interactive UILabel, can detect URLs, @username, #topic# automatically."
  s.homepage     = "https://github.com/liufan321/FFLabel"
  s.license      = "MIT"
  s.author       = { "Fan Liu" => "liufan321@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/liufan321/FFLabel.git", :tag => s.version }
  s.source_files = "FFLabel/Source/*.swift"
  s.requires_arc = true
end

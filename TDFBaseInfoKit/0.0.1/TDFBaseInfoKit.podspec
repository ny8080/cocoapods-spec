Pod::Spec.new do |s|
  s.name         = "TDFBaseInfoKit"
  s.version      = "0.0.1"
  s.summary      = "TDFBaseInfoKit"

  s.description  = <<-DESC
  TDFBaseInfoKit 存储app基本信息
                   DESC

  s.homepage     = "https://github.com/ny8080/ADBaseInfoKit"

  s.license      = "LICENSE"
  s.author             = { "shanmei" => "shanmei@2dfire.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ny8080/ADBaseInfoKit.git", tag: s.version }

  s.source_files = 'Class/*'
  s.public_header_files = 'Class/*.h'
end

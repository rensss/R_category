Pod::Spec.new do |s|

  s.name         = "R_category"
  s.version      = "0.0.1"
  s.summary      = "一个简单的分类扩展."
  s.description  = <<-DESC
                a simple demo
                DESC
  s.homepage     = "https://github.com/rensss/R_category"
  s.license      = "MIT"
  s.author       = { "v587" => "renzzz@qq.com" }
  s.platform     = :ios
  s.ios.deployment_target = "5.0"

  s.source       = { :git => "https://github.com/rensss/R_category.git", :tag => "0.0.1" }

  s.source_files  = "Classes", "Classes/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"

  s.requires_arc = true
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end

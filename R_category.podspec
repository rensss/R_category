Pod::Spec.new do |s|

  s.name         = "R_category"
  s.version      = "0.0.9"
  s.summary      = "一个简单的分类扩展."
  s.description  = <<-DESC
                a simple category
                      DESC
  s.homepage     = "https://github.com/rensss/R_category"
  s.license      = 'MIT'
  s.author       = { "v587" => "renzzz@qq.com" }
  s.platform     = :ios
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/rensss/R_category.git", :tag => "0.0.9" }
  s.source_files  = "Category_Class", "Category_Class/*.{h,m}"
  s.requires_arc = true

end

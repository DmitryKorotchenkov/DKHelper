Pod::Spec.new do |spec|
    spec.name = 'DKHelper'
    spec.version = '1.1.1'
    spec.platform = :ios
    spec.source = { :git => 'https://github.com/DmitryKorotchenkov/DKHelper.git' }
    spec.source_files = 'Classes'
    spec.requires_arc = true
end
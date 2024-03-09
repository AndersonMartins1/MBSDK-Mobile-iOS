# SPDX-License-Identifier: MIT

# Define a Cocoapod specification for the MBMobileSDK project
Pod::Spec.new do |s|
    # Name of the pod
    s.name = "MBMobileSDK"
    
    # Version of the pod
    s.version = "3.0.0"
    
    # Summary of the pod
    s.summary = "MBMobileSDK"
    
    # Description of the pod
    s.description = "MBMobileSDK is a public Pod of MBition GmbH"
    
    # Homepage URL
    s.homepage = "https://mbition.io"
    
    # License type
    s.license = 'MIT'
    
    # Author information
    s.author = { "MBition GmbH" => "info_mbition@daimler.com" }
    
    # Source code repository
    s.source = { :git => "https://github.com/Daimler/MBSDK-Mobile-iOS.git", :tag => String(s.version) }
    
    # Platform and deployment target
    s.platform = :ios, '12.0'
    
    # Swift version compatibility
    s.swift_version = ['5.0', '5.1', '5.2', '5.3']

    # Source files to be included in the pod
    s.source_files = 'MBMobileSDK/MBMobileSDK/**/*.{swift,xib}'

    # Internal dependencies
    s.dependency 'MBCommonKit', '~> 3.0'
    s.dependency 'MBNetworkKit', '~> 3.0'
    s.dependency 'MBRealmKit', '~> 3.0'

    # Public dependencies
    s.dependency 'SwiftKeychainWrapper', '~> 4.0'
    s.dependency 'SwiftProtobuf', '~> 1.0'
    s.dependency 'ZIPFoundation', '~> 0.9'

    # Fix for RLMNotificationToken
    s.dependency 'Realm', '~> 10.1'
end

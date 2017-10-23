
platform :ios, :deployment_target => "9.0"

def swift_pods
    use_frameworks!
    pod 'SnapKit', '3.2.0'
end

def testing_pods
    use_frameworks!
    pod 'Nimble'
end

target 'Callbacks' do
    swift_pods
end

target 'CallbacksTests' do
    swift_pods
    testing_pods
end

target 'CallbacksUITests' do
    testing_pods
end




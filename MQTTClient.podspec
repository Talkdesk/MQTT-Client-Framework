Pod::Spec.new do |mqttc|
	mqttc.name         = "MQTTClient"
	mqttc.version      = "0.15.3"
	mqttc.summary      = "iOS, macOS and tvOS native ObjectiveC MQTT Client Framework"
	mqttc.homepage     = "https://github.com/novastone-media/MQTT-Client-Framework"
	mqttc.license      = { :type => "EPLv1", :file => "LICENSE" }
	mqttc.author       = { "novastonemedia" => "ios@novastonemedia.com" }
	mqttc.source       = {
		:git => "https://github.com/novastone-media/MQTT-Client-Framework.git",
		:tag => "0.15.2",
		:submodules => true
	}

	mqttc.requires_arc = true
	mqttc.platform = :ios, "6.1", :osx, "10.10", :tvos, "9.0"
	mqttc.ios.deployment_target = "6.1"
	mqttc.osx.deployment_target = "10.10"
	mqttc.tvos.deployment_target = "9.0"
	mqttc.default_subspec = 'Core'

	mqttc.subspec 'Core' do |core|
		core.dependency 'MQTTClient/Min'
		core.dependency 'MQTTClient/Manager'
	end

	mqttc.subspec 'Min' do |min|
		min.source_files =	"MQTTClient/MQTTClient/Minimal/**/MQTTCFSocketDecoder.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTCFSocketEncoder.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTCFSocketTransport.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTCoreDataPersistence.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTDecoder.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTInMemoryPersistence.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTLog.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTStrict.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTClient.h",
					"MQTTClient/MQTTClient/Minimal/**/MQTTMessage.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTPersistence.h",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSSLSecurityPolicy.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSSLSecurityPolicyDecoder.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSSLSecurityPolicyEncoder.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSSLSecurityPolicyTransport.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTProperties.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSession.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSessionLegacy.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSessionSynchron.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTTransport.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/GCDTimer.{h,m}"
	end

	mqttc.subspec 'MinL' do |minl|
		minl.dependency 'CocoaLumberjack'

		minl.source_files =	"MQTTClient/MQTTClient/Minimal/**/MQTTCFSocketDecoder.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTCFSocketEncoder.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTCFSocketTransport.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTCoreDataPersistence.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTDecoder.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTInMemoryPersistence.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTLog.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTStrict.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTClient.h",
					"MQTTClient/MQTTClient/Minimal/**/MQTTMessage.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTPersistence.h",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSSLSecurityPolicy.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSSLSecurityPolicyDecoder.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSSLSecurityPolicyEncoder.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSSLSecurityPolicyTransport.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTProperties.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSession.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSessionLegacy.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTSessionSynchron.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/MQTTTransport.{h,m}",
					"MQTTClient/MQTTClient/Minimal/**/GCDTimer.{h,m}"
		minl.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LUMBERJACK=1' }
	end

	mqttc.subspec 'Manager' do |manager|
		manager.source_files =	"MQTTClient/MQTTClient/SessionManager/MQTTSessionManager.{h,m}", 
					"MQTTClient/MQTTClient/SessionManager/ReconnectTimer.{h,m}",
					"MQTTClient/MQTTClient/SessionManager/ForegroundReconnection.{h,m}"
		manager.dependency 'MQTTClient/Min'
	end

	mqttc.subspec 'ManagerL' do |managerl|
		manager.source_files =	"MQTTClient/MQTTClient/SessionManager/MQTTSessionManager.{h,m}", 
					"MQTTClient/MQTTClient/SessionManager/ReconnectTimer.{h,m}",
					"MQTTClient/MQTTClient/SessionManager/ForegroundReconnection.{h,m}"
		managerl.dependency 'MQTTClient/MinL'
		managerl.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LUMBERJACK=1' }
	end

	mqttc.subspec 'Websocket' do |ws|
		ws.source_files = "MQTTClient/MQTTClient/Websocket/*.{h,m}"
		ws.dependency 'SocketRocket'
		ws.dependency 'MQTTClient/Min'
		ws.requires_arc = true
		ws.libraries = "icucore"
	end

	mqttc.subspec 'WebsocketL' do |wsl|
		wsl.source_files = "MQTTClient/MQTTClient/Websocket/*.{h,m}"
		wsl.dependency 'SocketRocket'
		wsl.dependency 'MQTTClient/MinL'
		wsl.requires_arc = true
		wsl.libraries = "icucore"
		wsl.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LUMBERJACK=1' }
	end
end

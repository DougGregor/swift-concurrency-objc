
@available(iOS 8.0, watchOS 2.0, tvOS 10.0, *)
let HMCharacteristicPropertySupportsEventNotification: String

@available(iOS 8.0, watchOS 2.0, tvOS 10.0, *)
var HMCharacteristicPropertySupportsEventNotification: String


// MARK: - SwiftUI Additions


// Available when SwiftUI is imported with HomeKit
@available(iOS 14.0, tvOS 14.0, watchOS 7.0, *)
@available(macOS, unavailable)
struct CameraView : View {
  init(source: HMCameraSource)
}


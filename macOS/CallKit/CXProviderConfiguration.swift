
@available(macOS 11.0, *)
class CXProviderConfiguration : NSObject, NSCopying {
  @available(macOS, introduced: 11.0, deprecated: 11.0, message: "No longer supported")
  var localizedName: String? { get }
  var ringtoneSound: String?
  var iconTemplateImageData: Data?
  var maximumCallGroups: Int
  var maximumCallsPerCallGroup: Int
  @available(macOS 11.0, *)
  var includesCallsInRecents: Bool
  var supportsVideo: Bool
  var __supportedHandleTypes: Set<NSNumber>
  @available(macOS, introduced: 16.0, deprecated: 16.0)
  convenience init(localizedName: String)
}

@available(iOS 10.0, macCatalyst 13.0, macOS 11.0, *)
extension CXProviderConfiguration {
  @nonobjc final var supportedHandleTypes: Set<CXHandle.HandleType>
}

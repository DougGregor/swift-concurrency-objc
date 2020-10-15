
@available(iOS 10.0, *)
class CXProviderConfiguration : NSObject, NSCopying {
  @available(iOS, introduced: 10.0, deprecated: 14.0, message: "No longer supported")
  var localizedName: String? { get }
  var ringtoneSound: String?
  var iconTemplateImageData: Data?
  var maximumCallGroups: Int
  var maximumCallsPerCallGroup: Int
  @available(iOS 11.0, *)
  var includesCallsInRecents: Bool
  var supportsVideo: Bool
  var __supportedHandleTypes: Set<NSNumber>
  @available(iOS, introduced: 10.0, deprecated: 14.0)
  convenience init(localizedName: String)
}

@available(iOS 10.0, macCatalyst 13.0, macOS 11.0, *)
extension CXProviderConfiguration {
  @nonobjc final var supportedHandleTypes: Set<CXHandle.HandleType>
}

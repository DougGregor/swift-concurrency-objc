
extension NSFileProviderRequest {
  struct ApplicationIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: UUID)
    init(rawValue: UUID)
    var _rawValue: NSUUID
    var rawValue: UUID { get }
  }
  struct AttributionReason : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
@available(macOS 11.0, *)
class NSFileProviderRequest : NSObject {
  var requestingApplicationIdentifier: NSFileProviderRequest.ApplicationIdentifier { get }
  var isSystemRequest: Bool { get }
  var isFileViewerRequest: Bool { get }
  var requestingExecutable: URL? { get }
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  func lookupRequestingApplicationIdentifier(_ app: NSFileProviderRequest.ApplicationIdentifier, reason: NSFileProviderRequest.AttributionReason, completionHandler: @escaping (URL?, Error?) -> Void)
}

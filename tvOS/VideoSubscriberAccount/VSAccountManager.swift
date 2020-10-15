
@available(tvOS 13.0, *)
let VSOpenTVProviderSettingsURLString: String
@available(tvOS 10.0, *)
enum VSAccountAccessStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case granted
}
@available(tvOS 10.0, *)
struct VSCheckAccessOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VSCheckAccessOption {
  @available(tvOS 10.0, *)
  static let prompt: VSCheckAccessOption
}
@available(tvOS 10.0, *)
class VSAccountManager : NSObject {
  weak var delegate: @sil_weak VSAccountManagerDelegate?
  func checkAccessStatus(options: [VSCheckAccessOption : Any] = [:], completionHandler: @escaping (VSAccountAccessStatus, Error?) -> Void)
  func checkAccessStatus(options: [VSCheckAccessOption : Any] = [:]) async throws -> VSAccountAccessStatus
  func enqueue(_ request: VSAccountMetadataRequest, completionHandler: @escaping (VSAccountMetadata?, Error?) -> Void) -> VSAccountManagerResult
}
@available(tvOS 10.0, *)
protocol VSAccountManagerDelegate : NSObjectProtocol {
  optional func accountManager(_ accountManager: VSAccountManager, shouldAuthenticateAccountProviderWithIdentifier accountProviderIdentifier: String) -> Bool
}

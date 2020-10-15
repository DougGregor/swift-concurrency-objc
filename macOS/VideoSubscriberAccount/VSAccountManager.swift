
enum VSAccountAccessStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case granted
}
struct VSCheckAccessOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VSCheckAccessOption {
  static let prompt: VSCheckAccessOption
}
class VSAccountManager : NSObject {
  weak var delegate: @sil_weak VSAccountManagerDelegate?
}
protocol VSAccountManagerDelegate : NSObjectProtocol {
  optional func accountManager(_ accountManager: VSAccountManager, shouldAuthenticateAccountProviderWithIdentifier accountProviderIdentifier: String) -> Bool
}

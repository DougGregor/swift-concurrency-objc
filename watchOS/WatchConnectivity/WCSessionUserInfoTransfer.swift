
@available(watchOS 2.0, *)
class WCSessionUserInfoTransfer : NSObject, NSSecureCoding {
  var userInfo: [String : Any] { get }
  var isTransferring: Bool { get }
  func cancel()
}


@available(iOS 9.0, *)
class WCSessionUserInfoTransfer : NSObject, NSSecureCoding {
  var isCurrentComplicationInfo: Bool { get }
  var userInfo: [String : Any] { get }
  var isTransferring: Bool { get }
  func cancel()
}

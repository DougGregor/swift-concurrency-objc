
@available(iOS 14.0, *)
class NISession : NSObject {
  class var isSupported: Bool { get }
  weak var delegate: @sil_weak NISessionDelegate?
  var delegateQueue: DispatchQueue?
  @NSCopying var discoveryToken: NIDiscoveryToken? { get }
  @NSCopying var configuration: NIConfiguration? { get }
  func run(_ configuration: NIConfiguration)
  func pause()
  func invalidate()
}
extension NINearbyObject {
  @available(iOS 14.0, *)
  enum RemovalReason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case timeout
    case peerEnded
  }
}
@available(iOS 14.0, *)
protocol NISessionDelegate : NSObjectProtocol {
  @asyncHandler optional func session(_ session: NISession, didUpdate nearbyObjects: [NINearbyObject])
  @asyncHandler optional func session(_ session: NISession, didRemove nearbyObjects: [NINearbyObject], reason: NINearbyObject.RemovalReason)
  optional func sessionWasSuspended(_ session: NISession)
  optional func sessionSuspensionEnded(_ session: NISession)
  @asyncHandler optional func session(_ session: NISession, didInvalidateWith error: Error)
}

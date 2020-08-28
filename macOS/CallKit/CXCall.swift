
@available(macOS 11.0, *)
class CXCall : NSObject {
  var uuid: UUID { get }
  var isOutgoing: Bool { get }
  var isOnHold: Bool { get }
  var hasConnected: Bool { get }
  var hasEnded: Bool { get }
}

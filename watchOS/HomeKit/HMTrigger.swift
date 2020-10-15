
@available(watchOS 2.0, *)
class HMTrigger : NSObject {
  var name: String { get }
  var isEnabled: Bool { get }
  var actionSets: [HMActionSet] { get }
  var lastFireDate: Date? { get }
  @available(watchOS 2.0, *)
  var uniqueIdentifier: UUID { get }
}

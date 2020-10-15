
@available(tvOS 10.0, *)
class HMTrigger : NSObject {
  var name: String { get }
  var isEnabled: Bool { get }
  var actionSets: [HMActionSet] { get }
  var lastFireDate: Date? { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
}

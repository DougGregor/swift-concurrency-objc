
@available(iOS 8.0, *)
class HMUser : NSObject {
  var name: String { get }
  @available(iOS 9.0, *)
  var uniqueIdentifier: UUID { get }
}

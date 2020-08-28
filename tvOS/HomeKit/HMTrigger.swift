
@available(tvOS 10.0, *)
class HMTrigger : NSObject {
  var name: String { get }
  var isEnabled: Bool { get }
  var actionSets: [HMActionSet] { get }
  var lastFireDate: Date? { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
  func updateName(_ name: String, completionHandler completion: @escaping (Error?) -> Void)
  func updateName(_ name: String) async throws
  func addActionSet(_ actionSet: HMActionSet, completionHandler completion: @escaping (Error?) -> Void)
  func addActionSet(_ actionSet: HMActionSet) async throws
  func removeActionSet(_ actionSet: HMActionSet, completionHandler completion: @escaping (Error?) -> Void)
  func removeActionSet(_ actionSet: HMActionSet) async throws
  func enable(_ enable: Bool, completionHandler completion: @escaping (Error?) -> Void)
  func enable(_ enable: Bool) async throws
}

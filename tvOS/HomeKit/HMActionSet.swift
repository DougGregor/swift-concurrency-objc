
@available(tvOS 10.0, *)
class HMActionSet : NSObject {
  var name: String { get }
  var actions: Set<HMAction> { get }
  var isExecuting: Bool { get }
  @available(tvOS 9.0, *)
  var actionSetType: String { get }
  @available(tvOS 9.0, *)
  var uniqueIdentifier: UUID { get }
  @available(tvOS 10.0, *)
  var lastExecutionDate: Date? { get }
  func updateName(_ name: String, completionHandler completion: @escaping HMErrorBlock)
  func addAction(_ action: HMAction, completionHandler completion: @escaping HMErrorBlock)
  func removeAction(_ action: HMAction, completionHandler completion: @escaping HMErrorBlock)
}
@available(tvOS 10.0, *)
let HMActionSetTypeWakeUp: String
@available(tvOS 10.0, *)
let HMActionSetTypeSleep: String
@available(tvOS 10.0, *)
let HMActionSetTypeHomeDeparture: String
@available(tvOS 10.0, *)
let HMActionSetTypeHomeArrival: String
@available(tvOS 10.0, *)
let HMActionSetTypeUserDefined: String
@available(tvOS 10.0, *)
let HMActionSetTypeTriggerOwned: String

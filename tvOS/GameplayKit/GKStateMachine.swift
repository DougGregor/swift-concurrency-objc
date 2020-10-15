
@available(tvOS 9.0, *)
class GKStateMachine : NSObject {
  var currentState: GKState? { get }
  init(states: [GKState])
  func update(deltaTime sec: TimeInterval)
  func canEnterState(_ stateClass: AnyClass) -> Bool
  func enter(_ stateClass: AnyClass) -> Bool
}

@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
extension GKStateMachine {
  func state<StateType>(forClass stateClass: StateType.Type) -> StateType? where StateType : GKState
}


@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
extension GKPath {
  convenience init(points: [SIMD2<Float>], radius: Float, cyclical: Bool)
}

@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
extension GKPath {
  convenience init(points: [SIMD3<Float>], radius: Float, cyclical: Bool)
}

@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
extension GKPolygonObstacle {
  convenience init(points: [SIMD2<Float>])
}

@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
extension GKEntity {
  func component<ComponentType>(ofType componentClass: ComponentType.Type) -> ComponentType? where ComponentType : GKComponent
  func removeComponent<ComponentType>(ofType componentClass: ComponentType.Type) where ComponentType : GKComponent
}

@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
extension GKStateMachine {
  func state<StateType>(forClass stateClass: StateType.Type) -> StateType? where StateType : GKState
}


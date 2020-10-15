
@available(macOS 10.11, *)
class GKEntity : NSObject, NSCopying, NSSecureCoding {
  func update(deltaTime seconds: TimeInterval)
  var components: [GKComponent] { get }
  func addComponent(_ component: GKComponent)
  func __removeComponent(for componentClass: AnyClass)
  func __component(for componentClass: AnyClass) -> GKComponent?
}

@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
extension GKEntity {
  func component<ComponentType>(ofType componentClass: ComponentType.Type) -> ComponentType? where ComponentType : GKComponent
  func removeComponent<ComponentType>(ofType componentClass: ComponentType.Type) where ComponentType : GKComponent
}

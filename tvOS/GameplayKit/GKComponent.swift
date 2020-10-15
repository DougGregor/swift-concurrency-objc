
@available(tvOS 9.0, *)
class GKComponent : NSObject, NSCopying, NSSecureCoding {
  weak var entity: @sil_weak GKEntity? { get }
  func update(deltaTime seconds: TimeInterval)
  func didAddToEntity()
  func willRemoveFromEntity()
}
@available(tvOS 9.0, *)
class GKComponentSystem<ComponentType> : NSObject, NSFastEnumeration where ComponentType : GKComponent {
  var componentClass: AnyClass { get }
  var components: [ComponentType] { get }
  subscript(idx: Int) -> ComponentType { get }
  init(componentClass cls: AnyClass)
  func addComponent(_ component: ComponentType)
  func addComponent(foundIn entity: GKEntity)
  func removeComponent(foundIn entity: GKEntity)
  func removeComponent(_ component: ComponentType)
  func update(deltaTime seconds: TimeInterval)
  func classForGenericArgument(at index: Int) -> AnyClass
}

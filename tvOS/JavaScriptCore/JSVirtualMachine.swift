
@available(tvOS 7.0, *)
class JSVirtualMachine : NSObject {
  func addManagedReference(_ object: Any!, withOwner owner: Any!)
  func removeManagedReference(_ object: Any!, withOwner owner: Any!)
}

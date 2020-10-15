
@available(macOS 10.5, *)
class SBElementArray : NSMutableArray {
  func object(withName name: String) -> Any
  func object(withID identifier: Any) -> Any
  func object(atLocation location: Any) -> Any
  func array(byApplying selector: Selector) -> [Any]
  func array(byApplying aSelector: Selector, with argument: Any) -> [Any]
  func get() -> [Any]?
}

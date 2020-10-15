
@available(macOS 10.5, *)
class NSPointerArray : NSObject, NSFastEnumeration, NSCopying, NSSecureCoding {
  init(options: NSPointerFunctions.Options = [])
  init(pointerFunctions functions: NSPointerFunctions)
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  func pointer(at index: Int) -> UnsafeMutableRawPointer?
  func addPointer(_ pointer: UnsafeMutableRawPointer?)
  func removePointer(at index: Int)
  func insertPointer(_ item: UnsafeMutableRawPointer?, at index: Int)
  func replacePointer(at index: Int, withPointer item: UnsafeMutableRawPointer?)
  func compact()
  var count: Int
}
extension NSPointerArray {
  @available(macOS 10.8, *)
  class func strongObjects() -> NSPointerArray
  @available(macOS 10.8, *)
  class func weakObjects() -> NSPointerArray
  var allObjects: [Any] { get }
}

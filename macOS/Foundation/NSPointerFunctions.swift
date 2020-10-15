
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
extension NSPointerFunctions {
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    @available(macOS 10.5, *)
    static var strongMemory: NSPointerFunctions.Options { get }
    @available(macOS 10.5, *)
    static var opaqueMemory: NSPointerFunctions.Options { get }
    @available(macOS 10.5, *)
    static var mallocMemory: NSPointerFunctions.Options { get }
    @available(macOS 10.5, *)
    static var machVirtualMemory: NSPointerFunctions.Options { get }
    @available(macOS 10.8, *)
    static var weakMemory: NSPointerFunctions.Options { get }
    @available(macOS 10.5, *)
    static var objectPersonality: NSPointerFunctions.Options { get }
    @available(macOS 10.5, *)
    static var opaquePersonality: NSPointerFunctions.Options { get }
    @available(macOS 10.5, *)
    static var objectPointerPersonality: NSPointerFunctions.Options { get }
    @available(macOS 10.5, *)
    static var cStringPersonality: NSPointerFunctions.Options { get }
    @available(macOS 10.5, *)
    static var structPersonality: NSPointerFunctions.Options { get }
    @available(macOS 10.5, *)
    static var integerPersonality: NSPointerFunctions.Options { get }
    @available(macOS 10.5, *)
    static var copyIn: NSPointerFunctions.Options { get }
  }
}
@available(macOS 10.5, *)
class NSPointerFunctions : NSObject, NSCopying {
  init(options: NSPointerFunctions.Options = [])
  var hashFunction: (@convention(c) (UnsafeRawPointer, (@convention(c) (UnsafeRawPointer) -> Int)?) -> Int)?
  var isEqualFunction: (@convention(c) (UnsafeRawPointer, UnsafeRawPointer, (@convention(c) (UnsafeRawPointer) -> Int)?) -> ObjCBool)?
  var sizeFunction: (@convention(c) (UnsafeRawPointer) -> Int)?
  var descriptionFunction: (@convention(c) (UnsafeRawPointer) -> String?)?
  var relinquishFunction: (@convention(c) (UnsafeRawPointer, (@convention(c) (UnsafeRawPointer) -> Int)?) -> Void)?
  var acquireFunction: (@convention(c) (UnsafeRawPointer, (@convention(c) (UnsafeRawPointer) -> Int)?, ObjCBool) -> UnsafeMutableRawPointer)?
  @available(macOS, introduced: 10.5, deprecated: 10.12, message: "Garbage collection no longer supported")
  var usesStrongWriteBarrier: Bool
  @available(macOS, introduced: 10.5, deprecated: 10.12, message: "Garbage collection no longer supported")
  var usesWeakReadAndWriteBarriers: Bool
}

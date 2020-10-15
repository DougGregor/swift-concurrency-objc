
struct NSFastEnumerationState {
  var state: UInt
  var itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>?
  var mutationsPtr: UnsafeMutablePointer<UInt>?
  var extra: (UInt, UInt, UInt, UInt, UInt)
  init()
  init(state: UInt, itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>?, mutationsPtr: UnsafeMutablePointer<UInt>?, extra: (UInt, UInt, UInt, UInt, UInt))
}
protocol NSFastEnumeration {
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class NSEnumerator : NSObject, NSFastEnumeration {
  func nextObject() -> Any?
}

extension NSEnumerator : Sequence {
}
extension NSEnumerator {
  var allObjects: [Any] { get }
}

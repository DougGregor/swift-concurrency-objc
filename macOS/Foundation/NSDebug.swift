
var NSDebugEnabled: ObjCBool
var NSZombieEnabled: ObjCBool
var NSDeallocateZombies: ObjCBool
func NSIsFreedObject(_ anObject: Any!) -> Bool
func NSFrameAddress(_ frame: Int) -> UnsafeMutableRawPointer!
func NSReturnAddress(_ frame: Int) -> UnsafeMutableRawPointer!
func NSCountFrames() -> Int
extension NSAutoreleasePool {
  class func showPools()
}
var NSKeepAllocationStatistics: ObjCBool
var NSObjectAutoreleasedEvent: Int32 { get }
var NSObjectExtraRefIncrementedEvent: Int32 { get }
var NSObjectExtraRefDecrementedEvent: Int32 { get }
var NSObjectInternalRefIncrementedEvent: Int32 { get }
var NSObjectInternalRefDecrementedEvent: Int32 { get }
func NSRecordAllocationEvent(_ eventType: Int32, _ object: Any!)


@available(watchOS 6.0, *)
class CMMemoryPool : _CFObject {
}
var kCMMemoryPoolError_AllocationFailed: OSStatus { get }
var kCMMemoryPoolError_InvalidParameter: OSStatus { get }
@available(watchOS 6.0, *)
func CMMemoryPoolGetTypeID() -> CFTypeID
@available(watchOS 6.0, *)
let kCMMemoryPoolOption_AgeOutPeriod: CFString
@available(watchOS 6.0, *)
func CMMemoryPoolCreate(options: CFDictionary?) -> CMMemoryPool
@available(watchOS 6.0, *)
func CMMemoryPoolGetAllocator(_ pool: CMMemoryPool) -> CFAllocator
@available(watchOS 6.0, *)
func CMMemoryPoolFlush(_ pool: CMMemoryPool)
@available(watchOS 6.0, *)
func CMMemoryPoolInvalidate(_ pool: CMMemoryPool)

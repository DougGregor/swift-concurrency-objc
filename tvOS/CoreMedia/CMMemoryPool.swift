
@available(tvOS 9.0, *)
class CMMemoryPool : _CFObject {
}
var kCMMemoryPoolError_AllocationFailed: OSStatus { get }
var kCMMemoryPoolError_InvalidParameter: OSStatus { get }
@available(tvOS 9.0, *)
func CMMemoryPoolGetTypeID() -> CFTypeID
@available(tvOS 9.0, *)
let kCMMemoryPoolOption_AgeOutPeriod: CFString
@available(tvOS 9.0, *)
func CMMemoryPoolCreate(options: CFDictionary?) -> CMMemoryPool
@available(tvOS 9.0, *)
func CMMemoryPoolGetAllocator(_ pool: CMMemoryPool) -> CFAllocator
@available(tvOS 9.0, *)
func CMMemoryPoolFlush(_ pool: CMMemoryPool)
@available(tvOS 9.0, *)
func CMMemoryPoolInvalidate(_ pool: CMMemoryPool)

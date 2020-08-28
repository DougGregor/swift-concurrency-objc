
@available(macOS 10.8, *)
class CMMemoryPool : _CFObject {
}
var kCMMemoryPoolError_AllocationFailed: OSStatus { get }
var kCMMemoryPoolError_InvalidParameter: OSStatus { get }
@available(macOS 10.8, *)
func CMMemoryPoolGetTypeID() -> CFTypeID
@available(macOS 10.8, *)
let kCMMemoryPoolOption_AgeOutPeriod: CFString
@available(macOS 10.8, *)
func CMMemoryPoolCreate(options: CFDictionary?) -> CMMemoryPool
@available(macOS 10.8, *)
func CMMemoryPoolGetAllocator(_ pool: CMMemoryPool) -> CFAllocator
@available(macOS 10.8, *)
func CMMemoryPoolFlush(_ pool: CMMemoryPool)
@available(macOS 10.8, *)
func CMMemoryPoolInvalidate(_ pool: CMMemoryPool)

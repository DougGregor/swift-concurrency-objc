
class VTMultiPassStorage : _CFObject {
}
@available(tvOS 10.2, *)
func VTMultiPassStorageGetTypeID() -> CFTypeID
@available(tvOS 10.2, *)
func VTMultiPassStorageCreate(allocator: CFAllocator?, fileURL: CFURL?, timeRange: CMTimeRange, options: CFDictionary?, multiPassStorageOut: UnsafeMutablePointer<VTMultiPassStorage?>) -> OSStatus
let kVTMultiPassStorageCreationOption_DoNotDelete: CFString
@available(tvOS 10.2, *)
func VTMultiPassStorageClose(_ multiPassStorage: VTMultiPassStorage) -> OSStatus


class VTMultiPassStorage : _CFObject {
}
@available(iOS 8.0, *)
func VTMultiPassStorageGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func VTMultiPassStorageCreate(allocator: CFAllocator?, fileURL: CFURL?, timeRange: CMTimeRange, options: CFDictionary?, multiPassStorageOut: UnsafeMutablePointer<VTMultiPassStorage?>) -> OSStatus
let kVTMultiPassStorageCreationOption_DoNotDelete: CFString
@available(iOS 8.0, *)
func VTMultiPassStorageClose(_ multiPassStorage: VTMultiPassStorage) -> OSStatus

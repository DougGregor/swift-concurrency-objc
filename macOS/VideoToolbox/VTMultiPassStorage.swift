
class VTMultiPassStorage : _CFObject {
}
@available(macOS 10.10, *)
func VTMultiPassStorageGetTypeID() -> CFTypeID
@available(macOS 10.10, *)
func VTMultiPassStorageCreate(allocator: CFAllocator?, fileURL: CFURL?, timeRange: CMTimeRange, options: CFDictionary?, multiPassStorageOut: UnsafeMutablePointer<VTMultiPassStorage?>) -> OSStatus
let kVTMultiPassStorageCreationOption_DoNotDelete: CFString
@available(macOS 10.10, *)
func VTMultiPassStorageClose(_ multiPassStorage: VTMultiPassStorage) -> OSStatus

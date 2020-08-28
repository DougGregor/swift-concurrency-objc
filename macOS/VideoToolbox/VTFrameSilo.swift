
class VTFrameSilo : _CFObject {
}
@available(macOS 10.10, *)
func VTFrameSiloGetTypeID() -> CFTypeID
@available(macOS 10.10, *)
func VTFrameSiloCreate(allocator: CFAllocator?, fileURL: CFURL?, timeRange: CMTimeRange, options: CFDictionary?, frameSiloOut: UnsafeMutablePointer<VTFrameSilo?>) -> OSStatus
@available(macOS 10.10, *)
func VTFrameSiloAddSampleBuffer(_ silo: VTFrameSilo, sampleBuffer: CMSampleBuffer) -> OSStatus
@available(macOS 10.10, *)
func VTFrameSiloSetTimeRangesForNextPass(_ silo: VTFrameSilo, timeRangeCount: CMItemCount, timeRangeArray: UnsafePointer<CMTimeRange>) -> OSStatus
@available(macOS 10.10, *)
func VTFrameSiloGetProgressOfCurrentPass(_ silo: VTFrameSilo, progressOut: UnsafeMutablePointer<Float32>) -> OSStatus
@available(macOS 10.10, *)
func VTFrameSiloCallFunctionForEachSampleBuffer(_ silo: VTFrameSilo, in timeRange: CMTimeRange, refcon: UnsafeMutableRawPointer?, callback: @convention(c) (UnsafeMutableRawPointer?, CMSampleBuffer) -> OSStatus) -> OSStatus
@available(macOS 10.10, *)
func VTFrameSiloCallBlockForEachSampleBuffer(_ silo: VTFrameSilo, in timeRange: CMTimeRange, handler: (CMSampleBuffer) -> OSStatus) -> OSStatus

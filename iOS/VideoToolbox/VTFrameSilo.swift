
class VTFrameSilo : _CFObject {
}
@available(iOS 8.0, *)
func VTFrameSiloGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func VTFrameSiloCreate(allocator: CFAllocator?, fileURL: CFURL?, timeRange: CMTimeRange, options: CFDictionary?, frameSiloOut: UnsafeMutablePointer<VTFrameSilo?>) -> OSStatus
@available(iOS 8.0, *)
func VTFrameSiloAddSampleBuffer(_ silo: VTFrameSilo, sampleBuffer: CMSampleBuffer) -> OSStatus
@available(iOS 8.0, *)
func VTFrameSiloSetTimeRangesForNextPass(_ silo: VTFrameSilo, timeRangeCount: CMItemCount, timeRangeArray: UnsafePointer<CMTimeRange>) -> OSStatus
@available(iOS 8.0, *)
func VTFrameSiloGetProgressOfCurrentPass(_ silo: VTFrameSilo, progressOut: UnsafeMutablePointer<Float32>) -> OSStatus
@available(iOS 8.0, *)
func VTFrameSiloCallFunctionForEachSampleBuffer(_ silo: VTFrameSilo, in timeRange: CMTimeRange, refcon: UnsafeMutableRawPointer?, callback: @convention(c) (UnsafeMutableRawPointer?, CMSampleBuffer) -> OSStatus) -> OSStatus
@available(iOS 8.0, *)
func VTFrameSiloCallBlockForEachSampleBuffer(_ silo: VTFrameSilo, in timeRange: CMTimeRange, handler: (CMSampleBuffer) -> OSStatus) -> OSStatus

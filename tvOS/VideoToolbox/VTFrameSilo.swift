
class VTFrameSilo : _CFObject {
}
@available(tvOS 10.2, *)
func VTFrameSiloGetTypeID() -> CFTypeID
@available(tvOS 10.2, *)
func VTFrameSiloCreate(allocator: CFAllocator?, fileURL: CFURL?, timeRange: CMTimeRange, options: CFDictionary?, frameSiloOut: UnsafeMutablePointer<VTFrameSilo?>) -> OSStatus
@available(tvOS 10.2, *)
func VTFrameSiloAddSampleBuffer(_ silo: VTFrameSilo, sampleBuffer: CMSampleBuffer) -> OSStatus
@available(tvOS 10.2, *)
func VTFrameSiloSetTimeRangesForNextPass(_ silo: VTFrameSilo, timeRangeCount: CMItemCount, timeRangeArray: UnsafePointer<CMTimeRange>) -> OSStatus
@available(tvOS 10.2, *)
func VTFrameSiloGetProgressOfCurrentPass(_ silo: VTFrameSilo, progressOut: UnsafeMutablePointer<Float32>) -> OSStatus
@available(tvOS 10.2, *)
func VTFrameSiloCallFunctionForEachSampleBuffer(_ silo: VTFrameSilo, in timeRange: CMTimeRange, refcon: UnsafeMutableRawPointer?, callback: @convention(c) (UnsafeMutableRawPointer?, CMSampleBuffer) -> OSStatus) -> OSStatus
@available(tvOS 10.2, *)
func VTFrameSiloCallBlockForEachSampleBuffer(_ silo: VTFrameSilo, in timeRange: CMTimeRange, handler: (CMSampleBuffer) -> OSStatus) -> OSStatus


class CVPixelBufferPool : _CFObject {
}
@available(macOS 10.4, *)
let kCVPixelBufferPoolMinimumBufferCountKey: CFString
@available(macOS 10.4, *)
let kCVPixelBufferPoolMaximumBufferAgeKey: CFString
@available(macOS 10.4, *)
func CVPixelBufferPoolGetTypeID() -> CFTypeID
@available(macOS 10.4, *)
func CVPixelBufferPoolCreate(_ allocator: CFAllocator?, _ poolAttributes: CFDictionary?, _ pixelBufferAttributes: CFDictionary?, _ poolOut: UnsafeMutablePointer<CVPixelBufferPool?>) -> CVReturn
@available(macOS 10.4, *)
func CVPixelBufferPoolGetAttributes(_ pool: CVPixelBufferPool) -> CFDictionary?
@available(macOS 10.4, *)
func CVPixelBufferPoolGetPixelBufferAttributes(_ pool: CVPixelBufferPool) -> CFDictionary?
@available(macOS 10.4, *)
func CVPixelBufferPoolCreatePixelBuffer(_ allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(macOS 10.7, *)
func CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(_ allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ auxAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(macOS 10.7, *)
let kCVPixelBufferPoolAllocationThresholdKey: CFString
@available(macOS 10.7, *)
let kCVPixelBufferPoolFreeBufferNotification: CFString
struct CVPixelBufferPoolFlushFlags : OptionSet {
  init(rawValue: CVOptionFlags)
  let rawValue: CVOptionFlags
  static var excessBuffers: CVPixelBufferPoolFlushFlags { get }
}
func CVPixelBufferPoolFlush(_ pool: CVPixelBufferPool, _ options: CVPixelBufferPoolFlushFlags)

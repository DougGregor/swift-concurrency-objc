
class CVPixelBufferPool : _CFObject {
}
@available(watchOS 2.0, *)
let kCVPixelBufferPoolMinimumBufferCountKey: CFString
@available(watchOS 2.0, *)
let kCVPixelBufferPoolMaximumBufferAgeKey: CFString
@available(watchOS 2.0, *)
func CVPixelBufferPoolGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CVPixelBufferPoolCreate(_ allocator: CFAllocator?, _ poolAttributes: CFDictionary?, _ pixelBufferAttributes: CFDictionary?, _ poolOut: UnsafeMutablePointer<CVPixelBufferPool?>) -> CVReturn
@available(watchOS 2.0, *)
func CVPixelBufferPoolGetAttributes(_ pool: CVPixelBufferPool) -> CFDictionary?
@available(watchOS 2.0, *)
func CVPixelBufferPoolGetPixelBufferAttributes(_ pool: CVPixelBufferPool) -> CFDictionary?
@available(watchOS 2.0, *)
func CVPixelBufferPoolCreatePixelBuffer(_ allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(watchOS 2.0, *)
func CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(_ allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ auxAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(watchOS 2.0, *)
let kCVPixelBufferPoolAllocationThresholdKey: CFString
@available(watchOS 2.0, *)
let kCVPixelBufferPoolFreeBufferNotification: CFString
struct CVPixelBufferPoolFlushFlags : OptionSet {
  init(rawValue: CVOptionFlags)
  let rawValue: CVOptionFlags
  static var excessBuffers: CVPixelBufferPoolFlushFlags { get }
}
func CVPixelBufferPoolFlush(_ pool: CVPixelBufferPool, _ options: CVPixelBufferPoolFlushFlags)


var COREVIDEO_INCLUDED_IOSURFACE_HEADER_FILE: Int32 { get }
@available(macOS 10.6, *)
let kCVPixelBufferIOSurfaceOpenGLTextureCompatibilityKey: CFString
@available(macOS 10.6, *)
let kCVPixelBufferIOSurfaceOpenGLFBOCompatibilityKey: CFString
@available(macOS 10.6, *)
let kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey: CFString
@available(macOS 10.6, *)
func CVPixelBufferGetIOSurface(_ pixelBuffer: CVPixelBuffer?) -> Unmanaged<IOSurfaceRef>?
@available(macOS 10.6, *)
func CVPixelBufferCreateWithIOSurface(_ allocator: CFAllocator?, _ surface: IOSurfaceRef, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<Unmanaged<CVPixelBuffer>?>) -> CVReturn

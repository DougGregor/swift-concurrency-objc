
var COREVIDEO_INCLUDED_IOSURFACE_HEADER_FILE: Int32 { get }
@available(tvOS 4.0, *)
let kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey: CFString
@available(tvOS 9.0, *)
let kCVPixelBufferIOSurfaceOpenGLESTextureCompatibilityKey: CFString
@available(tvOS 9.0, *)
let kCVPixelBufferIOSurfaceOpenGLESFBOCompatibilityKey: CFString
@available(tvOS 9.0, *)
func CVPixelBufferGetIOSurface(_ pixelBuffer: CVPixelBuffer?) -> Unmanaged<IOSurfaceRef>?
@available(tvOS 4.0, *)
func CVPixelBufferCreateWithIOSurface(_ allocator: CFAllocator?, _ surface: IOSurfaceRef, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<Unmanaged<CVPixelBuffer>?>) -> CVReturn

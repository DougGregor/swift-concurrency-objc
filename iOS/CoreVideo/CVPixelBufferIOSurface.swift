
var COREVIDEO_INCLUDED_IOSURFACE_HEADER_FILE: Int32 { get }
@available(iOS 4.0, *)
let kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey: CFString
@available(iOS 5.0, *)
let kCVPixelBufferIOSurfaceOpenGLESTextureCompatibilityKey: CFString
@available(iOS 5.0, *)
let kCVPixelBufferIOSurfaceOpenGLESFBOCompatibilityKey: CFString
@available(iOS 4.0, *)
func CVPixelBufferGetIOSurface(_ pixelBuffer: CVPixelBuffer?) -> Unmanaged<IOSurfaceRef>?
@available(iOS 4.0, *)
func CVPixelBufferCreateWithIOSurface(_ allocator: CFAllocator?, _ surface: IOSurfaceRef, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<Unmanaged<CVPixelBuffer>?>) -> CVReturn


class VTPixelTransferSession : _CFObject {
}
@available(macOS 10.8, *)
func VTPixelTransferSessionCreate(allocator: CFAllocator?, pixelTransferSessionOut: UnsafeMutablePointer<VTPixelTransferSession?>) -> OSStatus
@available(macOS 10.8, *)
func VTPixelTransferSessionInvalidate(_ session: VTPixelTransferSession)
@available(macOS 10.8, *)
func VTPixelTransferSessionGetTypeID() -> CFTypeID
@available(macOS 10.8, *)
func VTPixelTransferSessionTransferImage(_ session: VTPixelTransferSession, from sourceBuffer: CVPixelBuffer, to destinationBuffer: CVPixelBuffer) -> OSStatus

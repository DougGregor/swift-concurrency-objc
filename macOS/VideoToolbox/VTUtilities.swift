
@available(macOS 10.11, *)
func VTCreateCGImageFromCVPixelBuffer(_ pixelBuffer: CVPixelBuffer, options: CFDictionary?, imageOut: UnsafeMutablePointer<CGImage?>) -> OSStatus
@available(macOS 11.0, *)
func VTRegisterSupplementalVideoDecoderIfAvailable(_ codecType: CMVideoCodecType)

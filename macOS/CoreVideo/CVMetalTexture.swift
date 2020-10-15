
typealias CVMetalTexture = CVImageBuffer
@available(macOS 10.11, *)
func CVMetalTextureGetTypeID() -> CFTypeID
@available(macOS 10.11, *)
func CVMetalTextureGetTexture(_ image: CVMetalTexture) -> MTLTexture?
@available(macOS 10.11, *)
func CVMetalTextureIsFlipped(_ image: CVMetalTexture) -> Bool
@available(macOS 10.11, *)
func CVMetalTextureGetCleanTexCoords(_ image: CVMetalTexture, _ lowerLeft: UnsafeMutablePointer<Float>, _ lowerRight: UnsafeMutablePointer<Float>, _ upperRight: UnsafeMutablePointer<Float>, _ upperLeft: UnsafeMutablePointer<Float>)
@available(macOS 10.13, *)
let kCVMetalTextureUsage: CFString
@available(macOS 10.15, *)
let kCVMetalTextureStorageMode: CFString

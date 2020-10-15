
typealias CVMetalTexture = CVImageBuffer
@available(tvOS 9.0, *)
func CVMetalTextureGetTypeID() -> CFTypeID
@available(tvOS 9.0, *)
func CVMetalTextureGetTexture(_ image: CVMetalTexture) -> MTLTexture?
@available(tvOS 9.0, *)
func CVMetalTextureIsFlipped(_ image: CVMetalTexture) -> Bool
@available(tvOS 9.0, *)
func CVMetalTextureGetCleanTexCoords(_ image: CVMetalTexture, _ lowerLeft: UnsafeMutablePointer<Float>, _ lowerRight: UnsafeMutablePointer<Float>, _ upperRight: UnsafeMutablePointer<Float>, _ upperLeft: UnsafeMutablePointer<Float>)
@available(tvOS 11.0, *)
let kCVMetalTextureUsage: CFString
@available(tvOS 13.0, *)
let kCVMetalTextureStorageMode: CFString

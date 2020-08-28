
@available(tvOS 8.0, *)
protocol MTLBuffer : MTLResource {
  var length: Int { get }
  func contents() -> UnsafeMutableRawPointer
  @available(tvOS 8.0, *)
  func makeTexture(descriptor: MTLTextureDescriptor, offset: Int, bytesPerRow: Int) -> MTLTexture?
  @available(tvOS 10.0, *)
  func __addDebugMarker(_ marker: String, range: NSRange)
  @available(tvOS 10.0, *)
  func removeAllDebugMarkers()
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLBuffer {
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, *)
  func addDebugMarker(_ marker: String, range: Range<Int>)
}

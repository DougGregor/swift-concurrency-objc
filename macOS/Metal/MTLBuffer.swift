
@available(macOS 10.11, *)
protocol MTLBuffer : MTLResource {
  var length: Int { get }
  func contents() -> UnsafeMutableRawPointer
  @available(macOS 10.11, *)
  func __didModifyRange(_ range: NSRange)
  @available(macOS 10.13, *)
  func makeTexture(descriptor: MTLTextureDescriptor, offset: Int, bytesPerRow: Int) -> MTLTexture?
  @available(macOS 10.12, *)
  func __addDebugMarker(_ marker: String, range: NSRange)
  @available(macOS 10.12, *)
  func removeAllDebugMarkers()
  @available(macOS 10.15, *)
  var remoteStorageBuffer: MTLBuffer? { get }
  @available(macOS 10.15, *)
  func makeRemoteBufferView(_ device: MTLDevice) -> MTLBuffer?
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLBuffer {
  @available(macOS 10.11, macCatalyst 14.0, *)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  func didModifyRange(_ range: Range<Int>)
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, *)
  func addDebugMarker(_ marker: String, range: Range<Int>)
}

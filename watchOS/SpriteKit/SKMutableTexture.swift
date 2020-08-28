
@available(watchOS 1.0, *)
class SKMutableTexture : SKTexture {
  init(size: CGSize)
  init(size: CGSize, pixelFormat format: Int32)
  func modifyPixelData(_ block: @escaping (UnsafeMutableRawPointer?, Int) -> Void)
}

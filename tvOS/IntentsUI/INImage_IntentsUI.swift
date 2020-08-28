
extension INImage {
  @available(tvOS 14.0, *)
  convenience init(cgImage imageRef: CGImage)
  @available(tvOS 14.0, *)
  convenience init(uiImage image: UIImage)
  @available(tvOS 14.0, *)
  class func imageSize(for response: INIntentResponse) -> CGSize
  @available(tvOS 14.0, *)
  func fetchUIImage(completion: @escaping (UIImage?) -> Void)
  @available(tvOS 14.0, *)
  func fetchUIImage() async -> UIImage?
}


extension INImage {
  @available(iOS 10.0, *)
  convenience init(cgImage imageRef: CGImage)
  @available(iOS 10.0, *)
  convenience init(uiImage image: UIImage)
  @available(iOS 10.0, *)
  class func imageSize(for response: INIntentResponse) -> CGSize
  @available(iOS 11.0, *)
  func fetchUIImage(completion: @escaping (UIImage?) -> Void)
  @available(iOS 11.0, *)
  func fetchUIImage() async -> UIImage?
}

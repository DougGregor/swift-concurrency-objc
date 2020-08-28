
extension UIGraphicsImageRenderer {
  @available(tvOS 10.0, *)
  typealias DrawingActions = (UIGraphicsImageRendererContext) -> Void
}
extension UIGraphicsImageRendererFormat {
  @available(tvOS 12.0, *)
  enum Range : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unspecified
    case automatic
    case extended
    case standard
  }
}
@available(tvOS 10.0, *)
class UIGraphicsImageRendererFormat : UIGraphicsRendererFormat {
  var scale: CGFloat
  var opaque: Bool
  @available(tvOS, introduced: 10.0, deprecated: 12.0, message: "Use the preferredRange property instead")
  var prefersExtendedRange: Bool
  @available(tvOS 12.0, *)
  var preferredRange: UIGraphicsImageRendererFormat.Range
  @available(tvOS 11.0, *)
  convenience init(for traitCollection: UITraitCollection)
}
@available(tvOS 10.0, *)
class UIGraphicsImageRendererContext : UIGraphicsRendererContext {
  var currentImage: UIImage { get }
}
@available(tvOS 10.0, *)
class UIGraphicsImageRenderer : UIGraphicsRenderer {
  convenience init(size: CGSize)
  init(size: CGSize, format: UIGraphicsImageRendererFormat)
  func image(actions: (UIGraphicsImageRendererContext) -> Void) -> UIImage
  func pngData(actions: (UIGraphicsImageRendererContext) -> Void) -> Data
  func jpegData(withCompressionQuality compressionQuality: CGFloat, actions: (UIGraphicsImageRendererContext) -> Void) -> Data
}

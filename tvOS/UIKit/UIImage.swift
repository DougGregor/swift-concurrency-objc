
extension UIImage {
  enum Orientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case up
    case down
    case left
    case right
    case upMirrored
    case downMirrored
    case leftMirrored
    case rightMirrored
  }
  enum ResizingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case tile
    case stretch
  }
  @available(tvOS 7.0, *)
  enum RenderingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case alwaysOriginal
    case alwaysTemplate
  }
  func pngData() -> Data?
  func jpegData(compressionQuality: CGFloat) -> Data?
}
@available(tvOS 2.0, *)
class UIImage : NSObject, NSSecureCoding {
  @available(tvOS 13.0, *)
  /*not inherited*/ init?(systemName name: String)
  @available(tvOS 13.0, *)
  /*not inherited*/ init?(systemName name: String, withConfiguration configuration: UIImage.Configuration?)
  @available(tvOS 13.0, *)
  /*not inherited*/ init?(systemName name: String, compatibleWith traitCollection: UITraitCollection?)
  /*not inherited*/ init?(named name: String)
  @available(tvOS 13.0, *)
  /*not inherited*/ init?(named name: String, in bundle: Bundle?, with configuration: UIImage.Configuration?)
  @available(tvOS 8.0, *)
  /*not inherited*/ init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?)
  init?(contentsOfFile path: String)
  init?(data: Data)
  @available(tvOS 6.0, *)
  init?(data: Data, scale: CGFloat)
  init(cgImage: CGImage)
  @available(tvOS 4.0, *)
  init(cgImage: CGImage, scale: CGFloat, orientation: UIImage.Orientation)
  @available(tvOS 5.0, *)
  init(ciImage: CIImage)
  @available(tvOS 6.0, *)
  init(ciImage: CIImage, scale: CGFloat, orientation: UIImage.Orientation)
  var size: CGSize { get }
  var cgImage: CGImage? { get }
  @available(tvOS 5.0, *)
  var ciImage: CIImage? { get }
  var imageOrientation: UIImage.Orientation { get }
  @available(tvOS 4.0, *)
  var scale: CGFloat { get }
  @available(tvOS 13.0, *)
  var isSymbolImage: Bool { get }
  @available(tvOS 5.0, *)
  class func animatedImageNamed(_ name: String, duration: TimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  class func animatedResizableImageNamed(_ name: String, capInsets: UIEdgeInsets, duration: TimeInterval) -> UIImage?
  @available(tvOS 6.0, *)
  class func animatedResizableImageNamed(_ name: String, capInsets: UIEdgeInsets, resizingMode: UIImage.ResizingMode, duration: TimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  class func animatedImage(with images: [UIImage], duration: TimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  var images: [UIImage]? { get }
  @available(tvOS 5.0, *)
  var duration: TimeInterval { get }
  func draw(at point: CGPoint)
  func draw(at point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func draw(in rect: CGRect)
  func draw(in rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPattern(in rect: CGRect)
  @available(tvOS 5.0, *)
  func resizableImage(withCapInsets capInsets: UIEdgeInsets) -> UIImage
  @available(tvOS 6.0, *)
  func resizableImage(withCapInsets capInsets: UIEdgeInsets, resizingMode: UIImage.ResizingMode) -> UIImage
  @available(tvOS 5.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(tvOS 6.0, *)
  var resizingMode: UIImage.ResizingMode { get }
  @available(tvOS 6.0, *)
  func withAlignmentRectInsets(_ alignmentInsets: UIEdgeInsets) -> UIImage
  @available(tvOS 6.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(tvOS 7.0, *)
  func withRenderingMode(_ renderingMode: UIImage.RenderingMode) -> UIImage
  @available(tvOS 7.0, *)
  var renderingMode: UIImage.RenderingMode { get }
  @available(tvOS 10.0, *)
  var imageRendererFormat: UIGraphicsImageRendererFormat { get }
  @available(tvOS 8.0, *)
  @NSCopying var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  var imageAsset: UIImageAsset? { get }
  @available(tvOS 9.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(tvOS 9.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  @available(tvOS 10.0, *)
  func withHorizontallyFlippedOrientation() -> UIImage
  @available(tvOS 13.0, *)
  var __baselineOffsetFromBottom: CGFloat { get }
  @available(tvOS 13.0, *)
  var __hasBaseline: Bool { get }
  @available(tvOS 13.0, *)
  func withBaselineOffset(fromBottom baselineOffset: CGFloat) -> UIImage
  @available(tvOS 13.0, *)
  func imageWithoutBaseline() -> UIImage
  @available(tvOS 13.0, *)
  @NSCopying var configuration: UIImage.Configuration? { get }
  @available(tvOS 13.0, *)
  func withConfiguration(_ configuration: UIImage.Configuration) -> UIImage
  @available(tvOS 13.0, *)
  @NSCopying var symbolConfiguration: UIImage.SymbolConfiguration? { get }
  @available(tvOS 13.0, *)
  func applyingSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration) -> UIImage?
  @available(tvOS 13.0, *)
  func withTintColor(_ color: UIColor) -> UIImage
  @available(tvOS 13.0, *)
  func withTintColor(_ color: UIColor, renderingMode: UIImage.RenderingMode) -> UIImage
}

extension UIImage : _ExpressibleByImageLiteral {
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension UIImage {
  var baselineOffsetFromBottom: CGFloat? { get }
}
extension UIImage {
  @available(tvOS 13.0, *)
  class var actions: UIImage { get }
  @available(tvOS 13.0, *)
  class var add: UIImage { get }
  @available(tvOS 13.0, *)
  class var remove: UIImage { get }
  @available(tvOS 13.0, *)
  class var checkmark: UIImage { get }
  @available(tvOS 13.0, *)
  class var strokedCheckmark: UIImage { get }
}
extension UIImage : NSItemProviderReading, NSItemProviderWriting {
}
extension NSTextAttachment {
  @available(tvOS 13.0, *)
  /*not inherited*/ init(image: UIImage)
}
extension UIImage {
  func stretchableImage(withLeftCapWidth leftCapWidth: Int, topCapHeight: Int) -> UIImage
  var leftCapWidth: Int { get }
  var topCapHeight: Int { get }
}
extension CIImage {
  @available(tvOS 5.0, *)
  init?(image: UIImage)
  @available(tvOS 5.0, *)
  init?(image: UIImage, options: [CIImageOption : Any]? = nil)
}


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
  @available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
class UIImage : NSObject, NSSecureCoding {
  @available(watchOS 6.0, *)
  /*not inherited*/ init?(systemName name: String)
  @available(watchOS 6.0, *)
  /*not inherited*/ init?(systemName name: String, withConfiguration configuration: UIImage.Configuration?)
  /*not inherited*/ init?(named name: String)
  @available(watchOS 6.0, *)
  /*not inherited*/ init?(named name: String, in bundle: Bundle?, with configuration: UIImage.Configuration?)
  init?(contentsOfFile path: String)
  init?(data: Data)
  @available(watchOS 2.0, *)
  init?(data: Data, scale: CGFloat)
  init(cgImage: CGImage)
  @available(watchOS 2.0, *)
  init(cgImage: CGImage, scale: CGFloat, orientation: UIImage.Orientation)
  var size: CGSize { get }
  var cgImage: CGImage? { get }
  var imageOrientation: UIImage.Orientation { get }
  @available(watchOS 2.0, *)
  var scale: CGFloat { get }
  @available(watchOS 6.0, *)
  var isSymbolImage: Bool { get }
  @available(watchOS 2.0, *)
  class func animatedImageNamed(_ name: String, duration: TimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedResizableImageNamed(_ name: String, capInsets: UIEdgeInsets, duration: TimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedResizableImageNamed(_ name: String, capInsets: UIEdgeInsets, resizingMode: UIImage.ResizingMode, duration: TimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedImage(with images: [UIImage], duration: TimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  var images: [UIImage]? { get }
  @available(watchOS 2.0, *)
  var duration: TimeInterval { get }
  func draw(at point: CGPoint)
  func draw(at point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func draw(in rect: CGRect)
  func draw(in rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPattern(in rect: CGRect)
  @available(watchOS 2.0, *)
  func resizableImage(withCapInsets capInsets: UIEdgeInsets) -> UIImage
  @available(watchOS 2.0, *)
  func resizableImage(withCapInsets capInsets: UIEdgeInsets, resizingMode: UIImage.ResizingMode) -> UIImage
  @available(watchOS 2.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(watchOS 2.0, *)
  var resizingMode: UIImage.ResizingMode { get }
  @available(watchOS 2.0, *)
  func withAlignmentRectInsets(_ alignmentInsets: UIEdgeInsets) -> UIImage
  @available(watchOS 2.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(watchOS 2.0, *)
  func withRenderingMode(_ renderingMode: UIImage.RenderingMode) -> UIImage
  @available(watchOS 2.0, *)
  var renderingMode: UIImage.RenderingMode { get }
  @available(watchOS 2.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(watchOS 2.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  @available(watchOS 3.0, *)
  func withHorizontallyFlippedOrientation() -> UIImage
  @available(watchOS 6.0, *)
  var __baselineOffsetFromBottom: CGFloat { get }
  @available(watchOS 6.0, *)
  var __hasBaseline: Bool { get }
  @available(watchOS 6.0, *)
  func withBaselineOffset(fromBottom baselineOffset: CGFloat) -> UIImage
  @available(watchOS 6.0, *)
  func imageWithoutBaseline() -> UIImage
  @available(watchOS 6.0, *)
  @NSCopying var configuration: UIImage.Configuration? { get }
  @available(watchOS 6.0, *)
  func withConfiguration(_ configuration: UIImage.Configuration) -> UIImage
  @available(watchOS 6.0, *)
  @NSCopying var symbolConfiguration: UIImage.SymbolConfiguration? { get }
  @available(watchOS 6.0, *)
  func applyingSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration) -> UIImage?
  @available(watchOS 6.0, *)
  func withTintColor(_ color: UIColor) -> UIImage
  @available(watchOS 6.0, *)
  func withTintColor(_ color: UIColor, renderingMode: UIImage.RenderingMode) -> UIImage
}

extension UIImage : _ExpressibleByImageLiteral {
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension UIImage {
  var baselineOffsetFromBottom: CGFloat? { get }
}
extension UIImage {
  @available(watchOS 6.0, *)
  class var actions: UIImage { get }
  @available(watchOS 6.0, *)
  class var add: UIImage { get }
  @available(watchOS 6.0, *)
  class var remove: UIImage { get }
  @available(watchOS 6.0, *)
  class var checkmark: UIImage { get }
  @available(watchOS 6.0, *)
  class var strokedCheckmark: UIImage { get }
}
extension UIImage : NSItemProviderReading, NSItemProviderWriting {
}
extension UIImage {
  func stretchableImage(withLeftCapWidth leftCapWidth: Int, topCapHeight: Int) -> UIImage
  var leftCapWidth: Int { get }
  var topCapHeight: Int { get }
}

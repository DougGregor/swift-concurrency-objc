
struct CATextLayerTruncationMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CATextLayerAlignmentMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 2.0, *)
class CATextLayer : CALayer {
  var string: Any?
  var font: CFTypeRef?
  var fontSize: CGFloat
  var foregroundColor: CGColor?
  var isWrapped: Bool
  var truncationMode: CATextLayerTruncationMode
  var alignmentMode: CATextLayerAlignmentMode
  var allowsFontSubpixelQuantization: Bool
}
extension CATextLayerTruncationMode {
  @available(iOS 3.2, *)
  static let none: CATextLayerTruncationMode
  @available(iOS 3.2, *)
  static let start: CATextLayerTruncationMode
  @available(iOS 3.2, *)
  static let end: CATextLayerTruncationMode
  @available(iOS 3.2, *)
  static let middle: CATextLayerTruncationMode
}
extension CATextLayerAlignmentMode {
  @available(iOS 3.2, *)
  static let natural: CATextLayerAlignmentMode
  @available(iOS 3.2, *)
  static let left: CATextLayerAlignmentMode
  @available(iOS 3.2, *)
  static let right: CATextLayerAlignmentMode
  @available(iOS 3.2, *)
  static let center: CATextLayerAlignmentMode
  @available(iOS 3.2, *)
  static let justified: CATextLayerAlignmentMode
}

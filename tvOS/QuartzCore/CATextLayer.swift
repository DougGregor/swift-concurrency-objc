
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
@available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  static let none: CATextLayerTruncationMode
  @available(tvOS 9.0, *)
  static let start: CATextLayerTruncationMode
  @available(tvOS 9.0, *)
  static let end: CATextLayerTruncationMode
  @available(tvOS 9.0, *)
  static let middle: CATextLayerTruncationMode
}
extension CATextLayerAlignmentMode {
  @available(tvOS 9.0, *)
  static let natural: CATextLayerAlignmentMode
  @available(tvOS 9.0, *)
  static let left: CATextLayerAlignmentMode
  @available(tvOS 9.0, *)
  static let right: CATextLayerAlignmentMode
  @available(tvOS 9.0, *)
  static let center: CATextLayerAlignmentMode
  @available(tvOS 9.0, *)
  static let justified: CATextLayerAlignmentMode
}

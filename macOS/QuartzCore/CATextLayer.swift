
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
@available(macOS 10.5, *)
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
  @available(macOS 10.5, *)
  static let none: CATextLayerTruncationMode
  @available(macOS 10.5, *)
  static let start: CATextLayerTruncationMode
  @available(macOS 10.5, *)
  static let end: CATextLayerTruncationMode
  @available(macOS 10.5, *)
  static let middle: CATextLayerTruncationMode
}
extension CATextLayerAlignmentMode {
  @available(macOS 10.5, *)
  static let natural: CATextLayerAlignmentMode
  @available(macOS 10.5, *)
  static let left: CATextLayerAlignmentMode
  @available(macOS 10.5, *)
  static let right: CATextLayerAlignmentMode
  @available(macOS 10.5, *)
  static let center: CATextLayerAlignmentMode
  @available(macOS 10.5, *)
  static let justified: CATextLayerAlignmentMode
}

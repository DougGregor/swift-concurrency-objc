
extension UINib {
  struct OptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension UINib.OptionsKey {
  @available(iOS 3.0, *)
  static let externalObjects: UINib.OptionsKey
}
extension Bundle {
  func loadNibNamed(_ name: String, owner: Any?, options: [UINib.OptionsKey : Any]? = nil) -> [Any]?
}
extension NSObject {
  class func awakeFromNib()
  func awakeFromNib()
  @available(iOS 8.0, *)
  class func prepareForInterfaceBuilder()
  @available(iOS 8.0, *)
  func prepareForInterfaceBuilder()
}

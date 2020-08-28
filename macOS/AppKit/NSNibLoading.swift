
extension Bundle {
  @available(macOS 10.8, *)
  func loadNibNamed(_ nibName: NSNib.Name, owner: Any?, topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>?) -> Bool
}
extension NSObject {
  class func awakeFromNib()
  func awakeFromNib()
  @available(macOS 10.10, *)
  class func prepareForInterfaceBuilder()
  @available(macOS 10.10, *)
  func prepareForInterfaceBuilder()
}
extension Bundle {
}

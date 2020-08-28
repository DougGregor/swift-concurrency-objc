
extension UIImage.SymbolWeight {
  @available(iOS 13.0, *)
  func fontWeight() -> UIFont.Weight
}
extension UIFont.Weight {
  @available(iOS 13.0, *)
  func symbolWeight() -> UIImage.SymbolWeight
}
extension UIImage {
  @available(iOS 13.0, *)
  class SymbolConfiguration : UIImage.Configuration {
    class var unspecified: UIImage.SymbolConfiguration { get }
    convenience init(scale: UIImage.SymbolScale)
    convenience init(pointSize: CGFloat)
    convenience init(weight: UIImage.SymbolWeight)
    convenience init(pointSize: CGFloat, weight: UIImage.SymbolWeight)
    convenience init(pointSize: CGFloat, weight: UIImage.SymbolWeight, scale: UIImage.SymbolScale)
    convenience init(textStyle: UIFont.TextStyle)
    convenience init(textStyle: UIFont.TextStyle, scale: UIImage.SymbolScale)
    convenience init(font: UIFont)
    convenience init(font: UIFont, scale: UIImage.SymbolScale)
    func configurationWithoutTextStyle() -> Self
    func configurationWithoutScale() -> Self
    func configurationWithoutWeight() -> Self
    func configurationWithoutPointSizeAndWeight() -> Self
    func isEqual(to otherConfiguration: UIImage.SymbolConfiguration?) -> Bool
  }
  @available(iOS 13.0, *)
  enum SymbolScale : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case unspecified
    case small
    case medium
    case large
  }
  @available(iOS 13.0, *)
  enum SymbolWeight : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unspecified
    case ultraLight
    case thin
    case light
    case regular
    case medium
    case semibold
    case bold
    case heavy
    case black
  }
}


extension UISwitch {
  @available(tvOS 14.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case checkbox
    case sliding
  }
}
@available(tvOS 2.0, *)
class UISwitch : UIControl, NSCoding {
  @available(tvOS 5.0, *)
  var onTintColor: UIColor?
  @available(tvOS 6.0, *)
  var thumbTintColor: UIColor?
  @available(tvOS 6.0, *)
  var onImage: UIImage?
  @available(tvOS 6.0, *)
  var offImage: UIImage?
  @available(tvOS 14.0, *)
  var title: String?
  @available(tvOS 14.0, *)
  var style: UISwitch.Style { get }
  @available(tvOS 14.0, *)
  var preferredStyle: UISwitch.Style
  var isOn: Bool
  func setOn(_ on: Bool, animated: Bool)
}

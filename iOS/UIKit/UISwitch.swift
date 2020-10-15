
extension UISwitch {
  @available(iOS 14.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case checkbox
    case sliding
  }
}
@available(iOS 2.0, *)
class UISwitch : UIControl, NSCoding {
  @available(iOS 5.0, *)
  var onTintColor: UIColor?
  @available(iOS 6.0, *)
  var thumbTintColor: UIColor?
  @available(iOS 6.0, *)
  var onImage: UIImage?
  @available(iOS 6.0, *)
  var offImage: UIImage?
  @available(iOS 14.0, *)
  var title: String?
  @available(iOS 14.0, *)
  var style: UISwitch.Style { get }
  @available(iOS 14.0, *)
  var preferredStyle: UISwitch.Style
  var isOn: Bool
  func setOn(_ on: Bool, animated: Bool)
}

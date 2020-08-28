
extension UIActivity {
  struct ActivityType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(iOS 7.0, *)
  enum Category : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case action
    case share
  }
}
extension UIActivity.ActivityType {
  @available(iOS 6.0, *)
  static let postToFacebook: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let postToTwitter: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let postToWeibo: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let message: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let mail: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let print: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let copyToPasteboard: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let assignToContact: UIActivity.ActivityType
  @available(iOS 6.0, *)
  static let saveToCameraRoll: UIActivity.ActivityType
  @available(iOS 7.0, *)
  static let addToReadingList: UIActivity.ActivityType
  @available(iOS 7.0, *)
  static let postToFlickr: UIActivity.ActivityType
  @available(iOS 7.0, *)
  static let postToVimeo: UIActivity.ActivityType
  @available(iOS 7.0, *)
  static let postToTencentWeibo: UIActivity.ActivityType
  @available(iOS 7.0, *)
  static let airDrop: UIActivity.ActivityType
  @available(iOS 9.0, *)
  static let openInIBooks: UIActivity.ActivityType
  @available(iOS 11.0, *)
  static let markupAsPDF: UIActivity.ActivityType
}
@available(iOS 6.0, *)
class UIActivity : NSObject {
  @available(iOS 7.0, *)
  class var activityCategory: UIActivity.Category { get }
  var activityType: UIActivity.ActivityType? { get }
  var activityTitle: String? { get }
  var activityImage: UIImage? { get }
  func canPerform(withActivityItems activityItems: [Any]) -> Bool
  func prepare(withActivityItems activityItems: [Any])
  var activityViewController: UIViewController? { get }
  func perform()
  func activityDidFinish(_ completed: Bool)
}


@available(iOS 14.0, *)
class CPInformationItem : NSObject, NSSecureCoding {
  init(title: String?, detail: String?)
  var title: String? { get }
  var detail: String? { get }
}

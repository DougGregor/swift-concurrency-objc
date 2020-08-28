
class CPBaseListItem : NSObject, NSSecureCoding {
  var listItemHandler: CPListItemHandler?
  var text: String?
  var userInfo: Any?
  init(text: String?)
}
typealias CPListItemHandler = (CPBaseListItem, @escaping () -> Void) -> Void

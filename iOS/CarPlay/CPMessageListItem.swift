
let CPMaximumMessageItemImageSize: CGSize
enum CPMessageLeadingItem : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case pin
  case star
}
enum CPMessageTrailingItem : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case mute
}
@available(iOS 14.0, *)
class CPMessageListItemLeadingConfiguration : NSObject {
  var isUnread: Bool { get }
  var leadingItem: CPMessageLeadingItem { get }
  var leadingImage: UIImage? { get }
  init(leadingItem: CPMessageLeadingItem, leadingImage: UIImage?, unread: Bool)
}
@available(iOS 14.0, *)
class CPMessageListItemTrailingConfiguration : NSObject {
  var trailingItem: CPMessageTrailingItem { get }
  var trailingImage: UIImage? { get }
  init(trailingItem: CPMessageTrailingItem, trailingImage: UIImage?)
}
@available(iOS 14.0, *)
class CPMessageListItem : NSObject, CPListTemplateItem {
  init(conversationIdentifier: String, text: String, leadingConfiguration: CPMessageListItemLeadingConfiguration, trailingConfiguration: CPMessageListItemTrailingConfiguration?, detailText: String?, trailingText: String?)
  init(fullName: String, phoneOrEmailAddress: String, leadingConfiguration: CPMessageListItemLeadingConfiguration, trailingConfiguration: CPMessageListItemTrailingConfiguration?, detailText: String?, trailingText: String?)
  var conversationIdentifier: String?
  var phoneOrEmailAddress: String?
  var leadingConfiguration: CPMessageListItemLeadingConfiguration
  var trailingConfiguration: CPMessageListItemTrailingConfiguration?
  var detailText: String?
  var trailingText: String?
}


@available(watchOS, introduced: 3.0, deprecated: 4.0, message: "No longer supported, will cease working at some point in the future")
class CKModifyBadgeOperation : CKOperation {
  convenience init(badgeValue: Int)
  var badgeValue: Int
  var modifyBadgeCompletionBlock: ((Error?) -> Void)?
}

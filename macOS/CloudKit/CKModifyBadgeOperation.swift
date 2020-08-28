
@available(macOS, introduced: 10.10, deprecated: 10.13, message: "No longer supported, will cease working at some point in the future")
class CKModifyBadgeOperation : CKOperation {
  convenience init(badgeValue: Int)
  var badgeValue: Int
  var modifyBadgeCompletionBlock: ((Error?) -> Void)?
}

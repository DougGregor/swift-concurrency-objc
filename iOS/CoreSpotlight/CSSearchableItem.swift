
@available(iOS 9.0, *)
let CSSearchableItemActionType: String
@available(iOS 9.0, *)
let CSSearchableItemActivityIdentifier: String
@available(iOS 10.0, *)
let CSQueryContinuationActionType: String
@available(iOS 10.0, *)
let CSSearchQueryString: String
@available(iOS 9.0, *)
class CSSearchableItem : NSObject, NSSecureCoding, NSCopying {
  init(uniqueIdentifier: String?, domainIdentifier: String?, attributeSet: CSSearchableItemAttributeSet)
  var uniqueIdentifier: String
  var domainIdentifier: String?
  var expirationDate: Date!
  var attributeSet: CSSearchableItemAttributeSet
}

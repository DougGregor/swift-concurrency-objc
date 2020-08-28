
@available(macOS 10.11, *)
let CSSearchableItemActionType: String
@available(macOS 10.11, *)
let CSSearchableItemActivityIdentifier: String
@available(macOS 10.11, *)
let CSQueryContinuationActionType: String
@available(macOS 10.11, *)
let CSSearchQueryString: String
@available(macOS 10.11, *)
class CSSearchableItem : NSObject, NSSecureCoding, NSCopying {
  init(uniqueIdentifier: String?, domainIdentifier: String?, attributeSet: CSSearchableItemAttributeSet)
  var uniqueIdentifier: String
  var domainIdentifier: String?
  var expirationDate: Date!
  var attributeSet: CSSearchableItemAttributeSet
}

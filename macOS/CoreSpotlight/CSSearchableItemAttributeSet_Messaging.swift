
@available(macOS 10.11, *)
let CSMailboxInbox: String
@available(macOS 10.11, *)
let CSMailboxDrafts: String
@available(macOS 10.11, *)
let CSMailboxSent: String
@available(macOS 10.11, *)
let CSMailboxJunk: String
@available(macOS 10.11, *)
let CSMailboxTrash: String
@available(macOS 10.11, *)
let CSMailboxArchive: String
extension CSSearchableItemAttributeSet {
  var accountIdentifier: String?
  var accountHandles: [String]?
  var htmlContentData: Data?
  var textContent: String?
  var authors: [CSPerson]?
  var primaryRecipients: [CSPerson]?
  var additionalRecipients: [CSPerson]?
  var hiddenAdditionalRecipients: [CSPerson]?
  var emailHeaders: [String : [Any]]?
  var mailboxIdentifiers: [String]?
  var authorNames: [String]?
  var recipientNames: [String]?
  var authorEmailAddresses: [String]?
  var recipientEmailAddresses: [String]?
  var authorAddresses: [String]?
  var recipientAddresses: [String]?
  var phoneNumbers: [String]?
  var emailAddresses: [String]?
  var instantMessageAddresses: [String]?
  var likelyJunk: NSNumber
}

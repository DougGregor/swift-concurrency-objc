
@available(watchOS 4.0, *)
enum INMessageType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case text
  case audio
  case digitalTouch
  case handwriting
  case sticker
  case tapbackLiked
  case tapbackDisliked
  case tapbackEmphasized
  case tapbackLoved
  case tapbackQuestioned
  case tapbackLaughed
  case mediaCalendar
  case mediaLocation
  case mediaAddressCard
  case mediaImage
  case mediaVideo
  case mediaPass
  case mediaAudio
  @available(watchOS 5.0, *)
  case paymentSent
  @available(watchOS 5.0, *)
  case paymentRequest
  @available(watchOS 5.0, *)
  case paymentNote
  @available(watchOS 5.0, *)
  case animoji
  @available(watchOS 5.0, *)
  case activitySnippet
  @available(watchOS 5.0, *)
  case file
  @available(watchOS 5.0, *)
  case link
}
@available(watchOS 3.2, *)
class INMessage : NSObject, NSCopying, NSSecureCoding {
  @available(watchOS 6.1, *)
  init(identifier: String, conversationIdentifier: String?, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?, groupName: INSpeakableString?, messageType: INMessageType, serviceName: String?)
  @available(watchOS 4.0, *)
  init(identifier: String, conversationIdentifier: String?, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?, groupName: INSpeakableString?, messageType: INMessageType)
  @available(watchOS 4.0, *)
  convenience init(identifier: String, conversationIdentifier: String?, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?, messageType: INMessageType)
  convenience init(identifier: String, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?)
  var identifier: String { get }
  @available(watchOS 4.0, *)
  var conversationIdentifier: String? { get }
  var content: String? { get }
  var dateSent: Date? { get }
  @NSCopying var sender: INPerson? { get }
  var recipients: [INPerson]? { get }
  @available(watchOS 4.0, *)
  @NSCopying var groupName: INSpeakableString? { get }
  @available(watchOS 4.0, *)
  var messageType: INMessageType { get }
  @available(watchOS 6.1, *)
  var serviceName: String? { get }
}

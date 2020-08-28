
@available(tvOS 11.0, *)
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
  @available(tvOS 12.0, *)
  case paymentSent
  @available(tvOS 12.0, *)
  case paymentRequest
  @available(tvOS 12.0, *)
  case paymentNote
  @available(tvOS 12.0, *)
  case animoji
  @available(tvOS 12.0, *)
  case activitySnippet
  @available(tvOS 12.0, *)
  case file
  @available(tvOS 12.0, *)
  case link
}
@available(tvOS 10.0, *)
class INMessage : NSObject, NSCopying, NSSecureCoding {
  @available(tvOS 13.2, *)
  init(identifier: String, conversationIdentifier: String?, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?, groupName: INSpeakableString?, messageType: INMessageType, serviceName: String?)
  @available(tvOS 11.0, *)
  init(identifier: String, conversationIdentifier: String?, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?, groupName: INSpeakableString?, messageType: INMessageType)
  @available(tvOS 11.0, *)
  convenience init(identifier: String, conversationIdentifier: String?, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?, messageType: INMessageType)
  convenience init(identifier: String, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?)
  var identifier: String { get }
  @available(tvOS 11.0, *)
  var conversationIdentifier: String? { get }
  var content: String? { get }
  var dateSent: Date? { get }
  @NSCopying var sender: INPerson? { get }
  var recipients: [INPerson]? { get }
  @available(tvOS 11.0, *)
  @NSCopying var groupName: INSpeakableString? { get }
  @available(tvOS 11.0, *)
  var messageType: INMessageType { get }
  @available(tvOS 13.2, *)
  var serviceName: String? { get }
}

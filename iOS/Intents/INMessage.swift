
@available(iOS 11.0, *)
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
  @available(iOS 12.0, *)
  case paymentSent
  @available(iOS 12.0, *)
  case paymentRequest
  @available(iOS 12.0, *)
  case paymentNote
  @available(iOS 12.0, *)
  case animoji
  @available(iOS 12.0, *)
  case activitySnippet
  @available(iOS 12.0, *)
  case file
  @available(iOS 12.0, *)
  case link
}
@available(iOS 10.0, *)
class INMessage : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 13.2, *)
  init(identifier: String, conversationIdentifier: String?, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?, groupName: INSpeakableString?, messageType: INMessageType, serviceName: String?)
  @available(iOS 11.0, *)
  init(identifier: String, conversationIdentifier: String?, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?, groupName: INSpeakableString?, messageType: INMessageType)
  @available(iOS 11.0, *)
  convenience init(identifier: String, conversationIdentifier: String?, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?, messageType: INMessageType)
  convenience init(identifier: String, content: String?, dateSent: Date?, sender: INPerson?, recipients: [INPerson]?)
  var identifier: String { get }
  @available(iOS 11.0, *)
  var conversationIdentifier: String? { get }
  var content: String? { get }
  var dateSent: Date? { get }
  @NSCopying var sender: INPerson? { get }
  var recipients: [INPerson]? { get }
  @available(iOS 11.0, *)
  @NSCopying var groupName: INSpeakableString? { get }
  @available(iOS 11.0, *)
  var messageType: INMessageType { get }
  @available(iOS 13.2, *)
  var serviceName: String? { get }
}

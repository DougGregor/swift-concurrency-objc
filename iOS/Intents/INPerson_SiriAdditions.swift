
extension INPerson : INSpeakable {
  @available(iOS 10.3, *)
  var siriMatches: [INPerson]? { get }
  @available(iOS 11.0, *)
  var isMe: Bool { get }
}

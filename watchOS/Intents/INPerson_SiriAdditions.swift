
extension INPerson : INSpeakable {
  @available(watchOS 3.2, *)
  var siriMatches: [INPerson]? { get }
  @available(watchOS 4.0, *)
  var isMe: Bool { get }
}

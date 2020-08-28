
extension INPerson : INSpeakable {
  @available(tvOS 10.3, *)
  var siriMatches: [INPerson]? { get }
  @available(tvOS 11.0, *)
  var isMe: Bool { get }
}

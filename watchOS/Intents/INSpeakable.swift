
@available(watchOS 3.2, *)
protocol INSpeakable : NSObjectProtocol {
  var spokenPhrase: String { get }
  var pronunciationHint: String? { get }
  var vocabularyIdentifier: String? { get }
  var alternativeSpeakableMatches: [INSpeakable]? { get }
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Please use vocabularyIdentifier")
  optional var identifier: String? { get }
}

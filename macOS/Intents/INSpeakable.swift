
@available(macOS 11.0, *)
protocol INSpeakable : NSObjectProtocol {
  var spokenPhrase: String { get }
  var pronunciationHint: String? { get }
  var vocabularyIdentifier: String? { get }
  var alternativeSpeakableMatches: [INSpeakable]? { get }
  optional var identifier: String? { get }
}

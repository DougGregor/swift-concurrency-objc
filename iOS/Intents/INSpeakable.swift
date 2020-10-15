
@available(iOS 10.0, *)
protocol INSpeakable : NSObjectProtocol {
  var spokenPhrase: String { get }
  var pronunciationHint: String? { get }
  var vocabularyIdentifier: String? { get }
  var alternativeSpeakableMatches: [INSpeakable]? { get }
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "Please use vocabularyIdentifier")
  optional var identifier: String? { get }
}

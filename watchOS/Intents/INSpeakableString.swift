
@available(watchOS 3.2, *)
class INSpeakableString : NSObject, INSpeakable, NSCopying, NSSecureCoding {
  init(vocabularyIdentifier: String, spokenPhrase: String, pronunciationHint: String?)
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Please use -initWithVocabularyIdentifier:spokenPhrase:pronunciationHint:")
  convenience init(identifier: String, spokenPhrase: String, pronunciationHint: String?)
  @available(watchOS 3.2, *)
  convenience init(spokenPhrase: String)
}


@available(iOS 10.0, *)
class INSpeakableString : NSObject, INSpeakable, NSCopying, NSSecureCoding {
  init(vocabularyIdentifier: String, spokenPhrase: String, pronunciationHint: String?)
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "Please use -initWithVocabularyIdentifier:spokenPhrase:pronunciationHint:")
  convenience init(identifier: String, spokenPhrase: String, pronunciationHint: String?)
  @available(iOS 10.2, *)
  convenience init(spokenPhrase: String)
}

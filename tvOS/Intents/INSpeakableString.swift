
@available(tvOS 10.0, *)
class INSpeakableString : NSObject, INSpeakable, NSCopying, NSSecureCoding {
  init(vocabularyIdentifier: String, spokenPhrase: String, pronunciationHint: String?)
  @available(tvOS 10.2, *)
  convenience init(spokenPhrase: String)
}

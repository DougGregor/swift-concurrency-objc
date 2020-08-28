
@available(macOS 11.0, *)
class INSpeakableString : NSObject, INSpeakable, NSCopying, NSSecureCoding {
  init(vocabularyIdentifier: String, spokenPhrase: String, pronunciationHint: String?)
  convenience init(spokenPhrase: String)
}

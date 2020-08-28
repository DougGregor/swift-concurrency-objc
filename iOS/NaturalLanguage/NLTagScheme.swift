
struct NLTagScheme : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NLTagScheme {
  @available(iOS 12.0, *)
  static let tokenType: NLTagScheme
  @available(iOS 12.0, *)
  static let lexicalClass: NLTagScheme
  @available(iOS 12.0, *)
  static let nameType: NLTagScheme
  @available(iOS 12.0, *)
  static let nameTypeOrLexicalClass: NLTagScheme
  @available(iOS 12.0, *)
  static let lemma: NLTagScheme
  @available(iOS 12.0, *)
  static let language: NLTagScheme
  @available(iOS 12.0, *)
  static let script: NLTagScheme
  @available(iOS 13.0, *)
  static let sentimentScore: NLTagScheme
}
struct NLTag : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NLTag {
  @available(iOS 12.0, *)
  static let word: NLTag
  @available(iOS 12.0, *)
  static let punctuation: NLTag
  @available(iOS 12.0, *)
  static let whitespace: NLTag
  @available(iOS 12.0, *)
  static let other: NLTag
  @available(iOS 12.0, *)
  static let noun: NLTag
  @available(iOS 12.0, *)
  static let verb: NLTag
  @available(iOS 12.0, *)
  static let adjective: NLTag
  @available(iOS 12.0, *)
  static let adverb: NLTag
  @available(iOS 12.0, *)
  static let pronoun: NLTag
  @available(iOS 12.0, *)
  static let determiner: NLTag
  @available(iOS 12.0, *)
  static let particle: NLTag
  @available(iOS 12.0, *)
  static let preposition: NLTag
  @available(iOS 12.0, *)
  static let number: NLTag
  @available(iOS 12.0, *)
  static let conjunction: NLTag
  @available(iOS 12.0, *)
  static let interjection: NLTag
  @available(iOS 12.0, *)
  static let classifier: NLTag
  @available(iOS 12.0, *)
  static let idiom: NLTag
  @available(iOS 12.0, *)
  static let otherWord: NLTag
  @available(iOS 12.0, *)
  static let sentenceTerminator: NLTag
  @available(iOS 12.0, *)
  static let openQuote: NLTag
  @available(iOS 12.0, *)
  static let closeQuote: NLTag
  @available(iOS 12.0, *)
  static let openParenthesis: NLTag
  @available(iOS 12.0, *)
  static let closeParenthesis: NLTag
  @available(iOS 12.0, *)
  static let wordJoiner: NLTag
  @available(iOS 12.0, *)
  static let dash: NLTag
  @available(iOS 12.0, *)
  static let otherPunctuation: NLTag
  @available(iOS 12.0, *)
  static let paragraphBreak: NLTag
  @available(iOS 12.0, *)
  static let otherWhitespace: NLTag
  @available(iOS 12.0, *)
  static let personalName: NLTag
  @available(iOS 12.0, *)
  static let placeName: NLTag
  @available(iOS 12.0, *)
  static let organizationName: NLTag
}

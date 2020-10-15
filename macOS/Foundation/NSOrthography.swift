
@available(macOS 10.6, *)
class NSOrthography : NSObject, NSCopying, NSSecureCoding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(macOS 10.6, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
}
extension NSOrthography {
  @available(macOS 10.6, *)
  func languages(forScript script: String) -> [String]?
  @available(macOS 10.6, *)
  func dominantLanguage(forScript script: String) -> String?
  @available(macOS 10.6, *)
  var dominantLanguage: String { get }
  @available(macOS 10.6, *)
  var allScripts: [String] { get }
  @available(macOS 10.6, *)
  var allLanguages: [String] { get }
  @available(macOS 10.13, *)
  class func defaultOrthography(forLanguage language: String) -> Self
}
extension NSOrthography {
}


@available(tvOS 13.0, *)
class NLGazetteer : NSObject {
  @available(tvOS 13.0, *)
  init(contentsOf url: URL) throws
  @available(tvOS 13.0, *)
  init(data: Data) throws
  @available(tvOS 13.0, *)
  init(dictionary: [String : [String]], language: NLLanguage?) throws
  @available(tvOS 13.0, *)
  func label(for string: String) -> String?
  @available(tvOS 13.0, *)
  var language: NLLanguage? { get }
  @available(tvOS 13.0, *)
  var data: Data { get }
  @available(tvOS 13.0, *)
  class func write(_ dictionary: [String : [String]], language: NLLanguage?, to url: URL) throws
}

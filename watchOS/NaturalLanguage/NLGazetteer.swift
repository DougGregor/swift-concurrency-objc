
@available(watchOS 6.0, *)
class NLGazetteer : NSObject {
  @available(watchOS 6.0, *)
  init(contentsOf url: URL) throws
  @available(watchOS 6.0, *)
  init(data: Data) throws
  @available(watchOS 6.0, *)
  init(dictionary: [String : [String]], language: NLLanguage?) throws
  @available(watchOS 6.0, *)
  func label(for string: String) -> String?
  @available(watchOS 6.0, *)
  var language: NLLanguage? { get }
  @available(watchOS 6.0, *)
  var data: Data { get }
  @available(watchOS 6.0, *)
  class func write(_ dictionary: [String : [String]], language: NLLanguage?, to url: URL) throws
}

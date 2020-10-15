
@available(iOS 13.0, *)
class NLGazetteer : NSObject {
  @available(iOS 13.0, *)
  init(contentsOf url: URL) throws
  @available(iOS 13.0, *)
  init(data: Data) throws
  @available(iOS 13.0, *)
  init(dictionary: [String : [String]], language: NLLanguage?) throws
  @available(iOS 13.0, *)
  func label(for string: String) -> String?
  @available(iOS 13.0, *)
  var language: NLLanguage? { get }
  @available(iOS 13.0, *)
  var data: Data { get }
  @available(iOS 13.0, *)
  class func write(_ dictionary: [String : [String]], language: NLLanguage?, to url: URL) throws
}

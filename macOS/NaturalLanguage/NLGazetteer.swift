
@available(macOS 10.15, *)
class NLGazetteer : NSObject {
  @available(macOS 10.15, *)
  init(contentsOf url: URL) throws
  @available(macOS 10.15, *)
  init(data: Data) throws
  @available(macOS 10.15, *)
  init(dictionary: [String : [String]], language: NLLanguage?) throws
  @available(macOS 10.15, *)
  func label(for string: String) -> String?
  @available(macOS 10.15, *)
  var language: NLLanguage? { get }
  @available(macOS 10.15, *)
  var data: Data { get }
  @available(macOS 10.15, *)
  class func write(_ dictionary: [String : [String]], language: NLLanguage?, to url: URL) throws
}

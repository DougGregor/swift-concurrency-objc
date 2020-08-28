
extension NSAttributedString.DocumentReadingOptionKey {
  @available(iOS 13.0, *)
  static let readAccessURL: NSAttributedString.DocumentReadingOptionKey
}
extension NSAttributedString {
  @available(iOS 13.0, *)
  typealias CompletionHandler = (NSAttributedString?, [NSAttributedString.DocumentAttributeKey : Any]?, Error?) -> Void
}
extension NSAttributedString {
  @available(iOS 13.0, *)
  class func loadFromHTML(request: URLRequest, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], completionHandler: @escaping NSAttributedString.CompletionHandler)
  @available(iOS 13.0, *)
  class func loadFromHTML(request: URLRequest, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:]) async throws -> (NSAttributedString?, [NSAttributedString.DocumentAttributeKey : Any]?)
  @available(iOS 13.0, *)
  class func loadFromHTML(fileURL: URL, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], completionHandler: @escaping NSAttributedString.CompletionHandler)
  @available(iOS 13.0, *)
  class func loadFromHTML(fileURL: URL, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:]) async throws -> (NSAttributedString?, [NSAttributedString.DocumentAttributeKey : Any]?)
  @available(iOS 13.0, *)
  class func loadFromHTML(string: String, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], completionHandler: @escaping NSAttributedString.CompletionHandler)
  @available(iOS 13.0, *)
  class func loadFromHTML(string: String, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:]) async throws -> (NSAttributedString?, [NSAttributedString.DocumentAttributeKey : Any]?)
  @available(iOS 13.0, *)
  class func loadFromHTML(data: Data, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], completionHandler: @escaping NSAttributedString.CompletionHandler)
  @available(iOS 13.0, *)
  class func loadFromHTML(data: Data, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:]) async throws -> (NSAttributedString?, [NSAttributedString.DocumentAttributeKey : Any]?)
}

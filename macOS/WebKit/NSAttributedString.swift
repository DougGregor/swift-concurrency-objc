
extension NSAttributedString.DocumentReadingOptionKey {
  @available(macOS 10.15, *)
  static let readAccessURL: NSAttributedString.DocumentReadingOptionKey
}
extension NSAttributedString {
  @available(macOS 10.15, *)
  typealias CompletionHandler = (NSAttributedString?, [NSAttributedString.DocumentAttributeKey : Any]?, Error?) -> Void
}
extension NSAttributedString {
  @available(macOS 10.15, *)
  class func loadFromHTML(request: URLRequest, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], completionHandler: @escaping NSAttributedString.CompletionHandler)
  @available(macOS 10.15, *)
  class func loadFromHTML(request: URLRequest, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:]) async throws -> (NSAttributedString?, [NSAttributedString.DocumentAttributeKey : Any]?)
  @available(macOS 10.15, *)
  class func loadFromHTML(fileURL: URL, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], completionHandler: @escaping NSAttributedString.CompletionHandler)
  @available(macOS 10.15, *)
  class func loadFromHTML(fileURL: URL, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:]) async throws -> (NSAttributedString?, [NSAttributedString.DocumentAttributeKey : Any]?)
  @available(macOS 10.15, *)
  class func loadFromHTML(string: String, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], completionHandler: @escaping NSAttributedString.CompletionHandler)
  @available(macOS 10.15, *)
  class func loadFromHTML(string: String, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:]) async throws -> (NSAttributedString?, [NSAttributedString.DocumentAttributeKey : Any]?)
  @available(macOS 10.15, *)
  class func loadFromHTML(data: Data, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], completionHandler: @escaping NSAttributedString.CompletionHandler)
  @available(macOS 10.15, *)
  class func loadFromHTML(data: Data, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:]) async throws -> (NSAttributedString?, [NSAttributedString.DocumentAttributeKey : Any]?)
}

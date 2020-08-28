
@available(tvOS 13.0, *)
class TVTopShelfContentProvider : NSObject {
  func loadTopShelfContent(completionHandler: @escaping (TVTopShelfContent?) -> Void)
  func loadTopShelfContent() async -> TVTopShelfContent?
  class func topShelfContentDidChange()
}

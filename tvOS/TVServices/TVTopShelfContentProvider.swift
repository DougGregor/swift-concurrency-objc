
@available(tvOS 13.0, *)
class TVTopShelfContentProvider : NSObject {
  func loadTopShelfContent(completionHandler: @escaping (TVTopShelfContent?) -> Void)
  class func topShelfContentDidChange()
}

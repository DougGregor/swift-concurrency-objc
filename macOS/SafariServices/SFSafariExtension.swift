
class SFSafariExtension : NSObject {
  class func getBaseURI(completionHandler: @escaping (URL?) -> Void)
  class func baseURI() async -> URL?
}

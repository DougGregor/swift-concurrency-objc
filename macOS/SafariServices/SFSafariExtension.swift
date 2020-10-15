
class SFSafariExtension : NSObject {
  class func getBaseURI(completionHandler: @escaping (URL?) -> Void)
  class func getBaseURI() async -> URL?
}

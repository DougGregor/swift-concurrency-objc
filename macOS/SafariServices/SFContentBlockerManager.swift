
class SFContentBlockerManager : NSObject {
  class func reloadContentBlocker(withIdentifier identifier: String, completionHandler: ((Error?) -> Void)? = nil)
  class func getStateOfContentBlocker(withIdentifier identifier: String, completionHandler: @escaping (SFContentBlockerState?, Error?) -> Void)
}

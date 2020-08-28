
@available(iOS, introduced: 9.0, deprecated: 10.0, renamed: "SFErrorDomain")
let SFContentBlockerErrorDomain: String
@available(iOS, introduced: 9.0, deprecated: 10.0, renamed: "SFErrorCode")
enum SFContentBlockerErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 9.0, deprecated: 10.0, renamed: "SFError.noExtensionFound")
  case noExtensionFound
  @available(iOS, introduced: 9.0, deprecated: 10.0, renamed: "SFError.noAttachmentFound")
  case noAttachmentFound
  @available(iOS, introduced: 9.0, deprecated: 10.0, renamed: "SFError.loadingInterrupted")
  case loadingInterrupted
}
@available(iOS 9.0, *)
class SFContentBlockerManager : NSObject {
  class func reloadContentBlocker(withIdentifier identifier: String, completionHandler: ((Error?) -> Void)? = nil)
  class func reloadContentBlocker(withIdentifier identifier: String) async throws
  @available(iOS 10.0, *)
  class func getStateOfContentBlocker(withIdentifier identifier: String, completionHandler: @escaping (SFContentBlockerState?, Error?) -> Void)
  @available(iOS 10.0, *)
  class func getStateOfContentBlocker(withIdentifier identifier: String) async throws -> SFContentBlockerState?
}

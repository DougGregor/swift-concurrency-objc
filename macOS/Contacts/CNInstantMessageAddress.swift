
@available(macOS 10.11, *)
class CNInstantMessageAddress : NSObject, NSCopying, NSSecureCoding {
  var username: String { get }
  var service: String { get }
  init(username: String, service: String)
  class func localizedString(forKey key: String) -> String
  class func localizedString(forService service: String) -> String
}
@available(macOS 10.11, *)
let CNInstantMessageAddressUsernameKey: String
@available(macOS 10.11, *)
let CNInstantMessageAddressServiceKey: String
@available(macOS 10.11, *)
let CNInstantMessageServiceAIM: String
@available(macOS 10.11, *)
let CNInstantMessageServiceFacebook: String
@available(macOS 10.11, *)
let CNInstantMessageServiceGaduGadu: String
@available(macOS 10.11, *)
let CNInstantMessageServiceGoogleTalk: String
@available(macOS 10.11, *)
let CNInstantMessageServiceICQ: String
@available(macOS 10.11, *)
let CNInstantMessageServiceJabber: String
@available(macOS 10.11, *)
let CNInstantMessageServiceMSN: String
@available(macOS 10.11, *)
let CNInstantMessageServiceQQ: String
@available(macOS 10.11, *)
let CNInstantMessageServiceSkype: String
@available(macOS 10.11, *)
let CNInstantMessageServiceYahoo: String


@available(macOS 10.11, *)
class CNSocialProfile : NSObject, NSCopying, NSSecureCoding {
  var urlString: String { get }
  var username: String { get }
  var userIdentifier: String { get }
  var service: String { get }
  init(urlString: String?, username: String?, userIdentifier: String?, service: String?)
  class func localizedString(forKey key: String) -> String
  class func localizedString(forService service: String) -> String
}
@available(macOS 10.11, *)
let CNSocialProfileURLStringKey: String
@available(macOS 10.11, *)
let CNSocialProfileUsernameKey: String
@available(macOS 10.11, *)
let CNSocialProfileUserIdentifierKey: String
@available(macOS 10.11, *)
let CNSocialProfileServiceKey: String
@available(macOS 10.11, *)
let CNSocialProfileServiceFacebook: String
@available(macOS 10.11, *)
let CNSocialProfileServiceFlickr: String
@available(macOS 10.11, *)
let CNSocialProfileServiceLinkedIn: String
@available(macOS 10.11, *)
let CNSocialProfileServiceMySpace: String
@available(macOS 10.11, *)
let CNSocialProfileServiceSinaWeibo: String
@available(macOS 10.11, *)
let CNSocialProfileServiceTencentWeibo: String
@available(macOS 10.11, *)
let CNSocialProfileServiceTwitter: String
@available(macOS 10.11, *)
let CNSocialProfileServiceYelp: String
@available(macOS 10.11, *)
let CNSocialProfileServiceGameCenter: String


@available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use Twitter SDK instead")
let ACAccountTypeIdentifierTwitter: String
@available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use Facebook SDK instead")
let ACAccountTypeIdentifierFacebook: String
@available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use Sina Weibo SDK instead")
let ACAccountTypeIdentifierSinaWeibo: String
@available(macOS, introduced: 10.9, deprecated: 10.13, message: "Use Tencent Weibo SDK instead")
let ACAccountTypeIdentifierTencentWeibo: String
@available(macOS, introduced: 10.9, deprecated: 10.13, message: "Use LinkedIn SDK instead")
let ACAccountTypeIdentifierLinkedIn: String
@available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use Facebook SDK instead")
let ACFacebookAppIdKey: String
@available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use Facebook SDK instead")
let ACFacebookPermissionsKey: String
@available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use Facebook SDK instead")
let ACFacebookAudienceKey: String
@available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use Facebook SDK instead")
let ACFacebookAudienceEveryone: String
@available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use Facebook SDK instead")
let ACFacebookAudienceFriends: String
@available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use Facebook SDK instead")
let ACFacebookAudienceOnlyMe: String
@available(macOS, introduced: 10.9, deprecated: 10.13, message: "Use LinkedIn SDK instead")
let ACLinkedInAppIdKey: String
@available(macOS, introduced: 10.9, deprecated: 10.13, message: "Use LinkedIn SDK instead")
let ACLinkedInPermissionsKey: String
@available(macOS, introduced: 10.9, deprecated: 10.13, message: "Use Tencent Weibo SDK instead")
let ACTencentWeiboAppIdKey: String
@available(macOS 10.8, *)
class ACAccountType : NSObject {
  var accountTypeDescription: String! { get }
  var identifier: String! { get }
  var accessGranted: Bool { get }
}

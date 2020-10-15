
@available(iOS, introduced: 5.0, deprecated: 11.0, message: "Use Twitter SDK instead")
let ACAccountTypeIdentifierTwitter: String
@available(iOS, introduced: 6.0, deprecated: 11.0, message: "Use Facebook SDK instead")
let ACAccountTypeIdentifierFacebook: String
@available(iOS, introduced: 6.0, deprecated: 11.0, message: "Use Sina Weibo SDK instead")
let ACAccountTypeIdentifierSinaWeibo: String
@available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use Tencent Weibo SDK instead")
let ACAccountTypeIdentifierTencentWeibo: String
@available(iOS, introduced: 6.0, deprecated: 11.0, message: "Use Facebook SDK instead")
let ACFacebookAppIdKey: String
@available(iOS, introduced: 6.0, deprecated: 11.0, message: "Use Facebook SDK instead")
let ACFacebookPermissionsKey: String
@available(iOS, introduced: 6.0, deprecated: 11.0, message: "Use Facebook SDK instead")
let ACFacebookAudienceKey: String
@available(iOS, introduced: 6.0, deprecated: 11.0, message: "Use Facebook SDK instead")
let ACFacebookAudienceEveryone: String
@available(iOS, introduced: 6.0, deprecated: 11.0, message: "Use Facebook SDK instead")
let ACFacebookAudienceFriends: String
@available(iOS, introduced: 6.0, deprecated: 11.0, message: "Use Facebook SDK instead")
let ACFacebookAudienceOnlyMe: String
@available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use Tencent Weibo SDK instead")
let ACTencentWeiboAppIdKey: String
@available(iOS 5.0, *)
class ACAccountType : NSObject {
  var accountTypeDescription: String! { get }
  var identifier: String! { get }
  var accessGranted: Bool { get }
}


@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAccountSettingServerHost: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAccountSettingServerPort: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAccountSettingLoginHandle: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAccountSettingPassword: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAccountSettingUsesSSL: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
enum IMSessionAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case away
  case available
}
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMSessionPropertyAvailability: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMSessionPropertyStatusMessage: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMSessionPropertyPictureData: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMSessionPropertyIdleDate: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMSessionPropertyIsInvisible: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
enum IMGroupListPermissions : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case canReorderGroup
  case canRenameGroup
  case canAddNewMembers
  case canRemoveMembers
  case canReorderMembers
}
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMGroupListDefaultGroup: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMGroupListNameKey: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMGroupListPermissionsKey: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMGroupListHandlesKey: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
enum IMHandleAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case offline
  case away
  case available
}
@available(macOS, introduced: 10.7, deprecated: 10.13)
enum IMHandleAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case accepted
  case pending
  case declined
}
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyAvailability: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyStatusMessage: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyAuthorizationStatus: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyIdleDate: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyAlias: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyFirstName: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyLastName: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyEmailAddress: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyPictureIdentifier: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyPictureData: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandlePropertyCapabilities: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandleCapabilityMessaging: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandleCapabilityOfflineMessaging: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandleCapabilityChatRoom: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandleCapabilityHandlePicture: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMHandleCapabilityFileTransfer: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeFontFamily: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeFontSize: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeItalic: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeBold: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeUnderline: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeStrikethrough: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeLink: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributePreformatted: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeBaseWritingDirection: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeForegroundColor: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeBackgroundColor: String
@available(macOS, introduced: 10.7, deprecated: 10.13)
let IMAttributeMessageBackgroundColor: String

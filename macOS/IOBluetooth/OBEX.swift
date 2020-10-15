
typealias OBEXError = Int32
struct OBEXErrorCodes : Equatable, RawRepresentable {
  init(_ rawValue: Int32)
  init(rawValue: Int32)
  var rawValue: Int32
}
var kOBEXErrorRangeMin: OBEXErrorCodes { get }
var kOBEXErrorRangeMax: OBEXErrorCodes { get }
var kOBEXSuccess: OBEXErrorCodes { get }
var kOBEXGeneralError: OBEXErrorCodes { get }
var kOBEXNoResourcesError: OBEXErrorCodes { get }
var kOBEXUnsupportedError: OBEXErrorCodes { get }
var kOBEXInternalError: OBEXErrorCodes { get }
var kOBEXBadArgumentError: OBEXErrorCodes { get }
var kOBEXTimeoutError: OBEXErrorCodes { get }
var kOBEXBadRequestError: OBEXErrorCodes { get }
var kOBEXCancelledError: OBEXErrorCodes { get }
var kOBEXForbiddenError: OBEXErrorCodes { get }
var kOBEXUnauthorizedError: OBEXErrorCodes { get }
var kOBEXNotAcceptableError: OBEXErrorCodes { get }
var kOBEXConflictError: OBEXErrorCodes { get }
var kOBEXMethodNotAllowedError: OBEXErrorCodes { get }
var kOBEXNotFoundError: OBEXErrorCodes { get }
var kOBEXNotImplementedError: OBEXErrorCodes { get }
var kOBEXPreconditionFailedError: OBEXErrorCodes { get }
var kOBEXSessionBusyError: OBEXErrorCodes { get }
var kOBEXSessionNotConnectedError: OBEXErrorCodes { get }
var kOBEXSessionBadRequestError: OBEXErrorCodes { get }
var kOBEXSessionBadResponseError: OBEXErrorCodes { get }
var kOBEXSessionNoTransportError: OBEXErrorCodes { get }
var kOBEXSessionTransportDiedError: OBEXErrorCodes { get }
var kOBEXSessionTimeoutError: OBEXErrorCodes { get }
var kOBEXSessionAlreadyConnectedError: OBEXErrorCodes { get }
struct OBEXHeaderIdentifiers : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXHeaderIDName: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDDescription: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDReservedRangeStart: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDReservedRangeEnd: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDUserDefinedRangeStart: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDUserDefinedRangeEnd: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDType: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDTimeISO: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDTarget: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDHTTP: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDBody: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDEndOfBody: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDWho: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDAppParameters: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDAuthorizationChallenge: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDAuthorizationResponse: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDObjectClass: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDCount: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDLength: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDTime4Byte: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDConnectionID: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13WANUUID: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13ObjectClass: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13SessionParameters: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13SessionSequenceNumber: OBEXHeaderIdentifiers { get }
var kOBEXHeaderIDOBEX13CreatorID: OBEXHeaderIdentifiers { get }
struct OBEXOpCodeResponseValues : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXResponseCodeReservedRangeStart: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeReservedRangeEnd: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeContinue: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeContinueWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSuccess: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSuccessWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeCreated: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeCreatedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeAccepted: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeAcceptedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNonAuthoritativeInfo: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNonAuthoritativeInfoWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNoContent: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNoContentWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeResetContent: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeResetContentWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePartialContent: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePartialContentWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMultipleChoices: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMultipleChoicesWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedPermanently: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedPermanentlyWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedTemporarily: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMovedTemporarilyWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSeeOther: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeSeeOtherWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotModified: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotModifiedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUseProxy: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUseProxyWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadRequest: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadRequestWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnauthorized: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnauthorizedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePaymentRequired: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePaymentRequiredWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeForbidden: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeForbiddenWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotFound: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotFoundWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMethodNotAllowed: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeMethodNotAllowedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotAcceptable: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotAcceptableWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeProxyAuthenticationRequired: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeProxyAuthenticationRequiredWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestTimeOut: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestTimeOutWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeConflict: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeConflictWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGone: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGoneWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeLengthRequired: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeLengthRequiredFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePreconditionFailed: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodePreconditionFailedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestedEntityTooLarge: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestedEntityTooLargeWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestURLTooLarge: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeRequestURLTooLargeWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnsupportedMediaType: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeUnsupportedMediaTypeWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeInternalServerError: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeInternalServerErrorWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotImplemented: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeNotImplementedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadGateway: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeBadGatewayWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeServiceUnavailable: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeServiceUnavailableWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGatewayTimeout: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeGatewayTimeoutWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeHTTPVersionNotSupported: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeHTTPVersionNotSupportedWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseFull: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseFullWithFinalBit: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseLocked: OBEXOpCodeResponseValues { get }
var kOBEXResponseCodeDatabaseLockedWithFinalBit: OBEXOpCodeResponseValues { get }
struct OBEXOpCodeCommandValues : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXOpCodeReserved: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeConnect: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeDisconnect: OBEXOpCodeCommandValues { get }
var kOBEXOpCodePut: OBEXOpCodeCommandValues { get }
var kOBEXOpCodePutWithHighBitSet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeGet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeGetWithHighBitSet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeReservedWithHighBitSet: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeSetPath: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeAbort: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeReservedRangeStart: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeReservedRangeEnd: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeUserDefinedStart: OBEXOpCodeCommandValues { get }
var kOBEXOpCodeUserDefinedEnd: OBEXOpCodeCommandValues { get }
struct OBEXConnectFlagValues : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXConnectFlagNone: OBEXConnectFlagValues { get }
var kOBEXConnectFlagSupportMultipleItLMPConnections: OBEXConnectFlagValues { get }
var kOBEXConnectFlag1Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag2Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag3Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag4Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag5Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag6Reserved: OBEXConnectFlagValues { get }
var kOBEXConnectFlag7Reserved: OBEXConnectFlagValues { get }
struct OBEXPutFlagValues : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXPutFlagNone: OBEXPutFlagValues { get }
var kOBEXPutFlagGoToParentDirFirst: OBEXPutFlagValues { get }
var kOBEXPutFlagDontCreateDirectory: OBEXPutFlagValues { get }
var kOBEXPutFlag2Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag3Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag4Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag5Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag6Reserved: OBEXPutFlagValues { get }
var kOBEXPutFlag7Reserved: OBEXPutFlagValues { get }
struct OBEXNonceFlagValues : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXNonceFlagNone: OBEXNonceFlagValues { get }
var kOBEXNonceFlagSendUserIDInResponse: OBEXNonceFlagValues { get }
var kOBEXNonceFlagAccessModeReadOnly: OBEXNonceFlagValues { get }
var kOBEXNonceFlag2Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag3Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag4Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag5Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag6Reserved: OBEXNonceFlagValues { get }
var kOBEXNonceFlag7Reserved: OBEXNonceFlagValues { get }
struct OBEXRealmValues : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXRealmASCII: OBEXRealmValues { get }
var kOBEXRealmISO88591: OBEXRealmValues { get }
var kOBEXRealmISO88592: OBEXRealmValues { get }
var kOBEXRealmISO88593: OBEXRealmValues { get }
var kOBEXRealmISO88594: OBEXRealmValues { get }
var kOBEXRealmISO88595: OBEXRealmValues { get }
var kOBEXRealmISO88596: OBEXRealmValues { get }
var kOBEXRealmISO88597: OBEXRealmValues { get }
var kOBEXRealmISO88598: OBEXRealmValues { get }
var kOBEXRealmISO88599: OBEXRealmValues { get }
var kOBEXRealmUNICODE: OBEXRealmValues { get }
struct OBEXOpCodeSessionValues : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXOpCodeCreateSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeCloseSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeSuspendSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeResumeSession: OBEXOpCodeSessionValues { get }
var kOBEXOpCodeSetTimeout: OBEXOpCodeSessionValues { get }
struct OBEXSessionParameterTags : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXSessionParameterTagDeviceAddress: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagNonce: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagSessionID: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagNextSequenceNumber: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagTimeout: OBEXSessionParameterTags { get }
var kOBEXSessionParameterTagSessionOpcode: OBEXSessionParameterTags { get }
struct OBEXVersions : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXVersion10: OBEXVersions { get }
typealias OBEXHeaderIdentifier = UInt8
typealias OBEXVersion = UInt8
typealias OBEXFlags = UInt8
typealias OBEXOpCode = UInt8
typealias OBEXConstants = UInt8
typealias OBEXMaxPacketLength = UInt16
typealias OBEXSessionRef = OpaquePointer
struct OBEXConnectCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  var maxPacketSize: OBEXMaxPacketLength
  var version: OBEXVersion
  var flags: OBEXFlags
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int, maxPacketSize: OBEXMaxPacketLength, version: OBEXVersion, flags: OBEXFlags)
}
struct OBEXDisconnectCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int)
}
struct OBEXPutCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int)
}
struct OBEXGetCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int)
}
struct OBEXSetPathCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  var flags: OBEXFlags
  var constants: OBEXConstants
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int, flags: OBEXFlags, constants: OBEXConstants)
}
struct OBEXAbortCommandResponseData {
  var serverResponseOpCode: OBEXOpCode
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  init()
  init(serverResponseOpCode: OBEXOpCode, headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int)
}
struct OBEXConnectCommandData {
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  var maxPacketSize: OBEXMaxPacketLength
  var version: OBEXVersion
  var flags: OBEXFlags
  init()
  init(headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int, maxPacketSize: OBEXMaxPacketLength, version: OBEXVersion, flags: OBEXFlags)
}
struct OBEXDisconnectCommandData {
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  init()
  init(headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int)
}
struct OBEXPutCommandData {
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  var bodyDataLeftToSend: Int
  init()
  init(headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int, bodyDataLeftToSend: Int)
}
struct OBEXGetCommandData {
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  init()
  init(headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int)
}
struct OBEXSetPathCommandData {
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  var flags: OBEXFlags
  var constants: OBEXConstants
  init()
  init(headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int, flags: OBEXFlags, constants: OBEXConstants)
}
struct OBEXAbortCommandData {
  var headerDataPtr: UnsafeMutableRawPointer!
  var headerDataLength: Int
  init()
  init(headerDataPtr: UnsafeMutableRawPointer!, headerDataLength: Int)
}
struct OBEXErrorData {
  var error: OBEXError
  var dataPtr: UnsafeMutableRawPointer!
  var dataLength: Int
  init()
  init(error: OBEXError, dataPtr: UnsafeMutableRawPointer!, dataLength: Int)
}
struct OBEXSessionEventTypes : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXSessionEventTypeConnectCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeDisconnectCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypePutCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeGetCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeSetPathCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeAbortCommandResponseReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeConnectCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeDisconnectCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypePutCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeGetCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeSetPathCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeAbortCommandReceived: OBEXSessionEventTypes { get }
var kOBEXSessionEventTypeError: OBEXSessionEventTypes { get }
typealias OBEXSessionEventType = UInt32
struct OBEXSessionEvent {
  struct __Unnamed_union_u {
    var connectCommandResponseData: OBEXConnectCommandResponseData
    var disconnectCommandResponseData: OBEXDisconnectCommandResponseData
    var putCommandResponseData: OBEXPutCommandResponseData
    var getCommandResponseData: OBEXGetCommandResponseData
    var setPathCommandResponseData: OBEXSetPathCommandResponseData
    var abortCommandResponseData: OBEXAbortCommandResponseData
    var connectCommandData: OBEXConnectCommandData
    var disconnectCommandData: OBEXDisconnectCommandData
    var putCommandData: OBEXPutCommandData
    var getCommandData: OBEXGetCommandData
    var setPathCommandData: OBEXSetPathCommandData
    var abortCommandData: OBEXAbortCommandData
    var errorData: OBEXErrorData
    init(connectCommandResponseData: OBEXConnectCommandResponseData)
    init(disconnectCommandResponseData: OBEXDisconnectCommandResponseData)
    init(putCommandResponseData: OBEXPutCommandResponseData)
    init(getCommandResponseData: OBEXGetCommandResponseData)
    init(setPathCommandResponseData: OBEXSetPathCommandResponseData)
    init(abortCommandResponseData: OBEXAbortCommandResponseData)
    init(connectCommandData: OBEXConnectCommandData)
    init(disconnectCommandData: OBEXDisconnectCommandData)
    init(putCommandData: OBEXPutCommandData)
    init(getCommandData: OBEXGetCommandData)
    init(setPathCommandData: OBEXSetPathCommandData)
    init(abortCommandData: OBEXAbortCommandData)
    init(errorData: OBEXErrorData)
    init()
  }
  var type: OBEXSessionEventType
  var session: OBEXSessionRef!
  var refCon: UnsafeMutableRawPointer!
  var isEndOfEventData: DarwinBoolean
  var reserved1: UnsafeMutableRawPointer!
  var reserved2: UnsafeMutableRawPointer!
  var u: OBEXSessionEvent.__Unnamed_union_u
  init()
  init(type: OBEXSessionEventType, session: OBEXSessionRef!, refCon: UnsafeMutableRawPointer!, isEndOfEventData: DarwinBoolean, reserved1: UnsafeMutableRawPointer!, reserved2: UnsafeMutableRawPointer!, u: OBEXSessionEvent.__Unnamed_union_u)
}
typealias OBEXSessionEventCallback = @convention(c) (UnsafePointer<OBEXSessionEvent>?) -> Void
var kCharsetStringISO88591: String { get }
var kCharsetStringUTF8: String { get }
var kEncodingStringQuotedPrintable: String { get }
var kEncodingStringBase64: String { get }
var kEncodingString8Bit: String { get }
var kOBEXHeaderIDKeyName: Unmanaged<CFString>!
var kOBEXHeaderIDKeyType: Unmanaged<CFString>!
var kOBEXHeaderIDKeyDescription: Unmanaged<CFString>!
var kOBEXHeaderIDKeyTimeISO: Unmanaged<CFString>!
var kOBEXHeaderIDKeyTime4Byte: Unmanaged<CFString>!
var kOBEXHeaderIDKeyTarget: Unmanaged<CFString>!
var kOBEXHeaderIDKeyHTTP: Unmanaged<CFString>!
var kOBEXHeaderIDKeyBody: Unmanaged<CFString>!
var kOBEXHeaderIDKeyEndOfBody: Unmanaged<CFString>!
var kOBEXHeaderIDKeyWho: Unmanaged<CFString>!
var kOBEXHeaderIDKeyAppParameters: Unmanaged<CFString>!
var kOBEXHeaderIDKeyAuthorizationChallenge: Unmanaged<CFString>!
var kOBEXHeaderIDKeyAuthorizationResponse: Unmanaged<CFString>!
var kOBEXHeaderIDKeyObjectClass: Unmanaged<CFString>!
var kOBEXHeaderIDKeyCount: Unmanaged<CFString>!
var kOBEXHeaderIDKeyLength: Unmanaged<CFString>!
var kOBEXHeaderIDKeyConnectionID: Unmanaged<CFString>!
var kOBEXHeaderIDKeyByteSequence: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknownUnicodeText: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknownByteSequence: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknown1ByteQuantity: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUnknown4ByteQuantity: Unmanaged<CFString>!
var kOBEXHeaderIDKeyUserDefined: Unmanaged<CFString>!
func OBEXGetHeaders(_ inData: UnsafeRawPointer!, _ inDataSize: Int) -> CFDictionary!
func OBEXHeadersToBytes(_ dictionaryOfHeaders: CFDictionary!) -> Unmanaged<CFMutableData>!
func OBEXAddNameHeader(_ name: CFString!, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddDescriptionHeader(_ description: CFString!, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddCountHeader(_ count: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddTime4ByteHeader(_ time4Byte: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddLengthHeader(_ length: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddTypeHeader(_ type: CFString!, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddTimeISOHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddTargetHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddHTTPHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddBodyHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ isEndOfBody: Bool, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddWhoHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddConnectionIDHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddApplicationParameterHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddByteSequenceHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddObjectClassHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddAuthorizationChallengeHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddAuthorizationResponseHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError
func OBEXAddUserDefinedHeader(_ inHeaderData: UnsafeRawPointer!, _ inHeaderDataLength: UInt32, _ dictRef: CFMutableDictionary!) -> OBEXError

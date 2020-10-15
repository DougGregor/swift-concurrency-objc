
@available(macOS 10.12, *)
class TKTokenSmartCardPINAuthOperation : TKTokenAuthOperation {
  var pinFormat: TKSmartCardPINFormat
  var apduTemplate: Data?
  var pinByteOffset: Int
  var smartCard: TKSmartCard?
  var pin: String?
}
@available(macOS 10.12, *)
class TKSmartCardTokenSession : TKTokenSession {
  var smartCard: TKSmartCard { get }
}
@available(macOS 10.12, *)
class TKSmartCardToken : TKToken {
  init(smartCard: TKSmartCard, aid AID: Data?, instanceID: String, tokenDriver: TKSmartCardTokenDriver)
  var aid: Data? { get }
}
@available(macOS 10.12, *)
class TKSmartCardTokenDriver : TKTokenDriver {
}
protocol TKSmartCardTokenDriverDelegate : TKTokenDriverDelegate {
  @available(macOS 10.12, *)
  func tokenDriver(_ driver: TKSmartCardTokenDriver, createTokenFor smartCard: TKSmartCard, aid AID: Data?) throws -> TKSmartCardToken
}


@available(tvOS 11.0, *)
class TKTokenSmartCardPINAuthOperation : TKTokenAuthOperation {
  var pinFormat: TKSmartCardPINFormat
  var apduTemplate: Data?
  var pinByteOffset: Int
  var smartCard: TKSmartCard?
  var pin: String?
}
@available(tvOS 11.0, *)
class TKSmartCardTokenSession : TKTokenSession {
  var smartCard: TKSmartCard { get }
}
@available(tvOS 11.0, *)
class TKSmartCardToken : TKToken {
  init(smartCard: TKSmartCard, aid AID: Data?, instanceID: String, tokenDriver: TKSmartCardTokenDriver)
  var aid: Data? { get }
}
@available(tvOS 11.0, *)
class TKSmartCardTokenDriver : TKTokenDriver {
}
protocol TKSmartCardTokenDriverDelegate : TKTokenDriverDelegate {
  @available(tvOS 11.0, *)
  func tokenDriver(_ driver: TKSmartCardTokenDriver, createTokenFor smartCard: TKSmartCard, aid AID: Data?) throws -> TKSmartCardToken
}

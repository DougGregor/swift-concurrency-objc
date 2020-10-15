
typealias PrivOBEXSessionDataRef = OpaquePointer
class OBEXSession : NSObject {
  func obexConnect(_ inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutableRawPointer!, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexDisconnect(_ inOptionalHeaders: UnsafeMutableRawPointer!, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexPut(_ isFinalChunk: Bool, headersData inHeadersData: UnsafeMutableRawPointer!, headersDataLength inHeadersDataLength: Int, bodyData inBodyData: UnsafeMutableRawPointer!, bodyDataLength inBodyDataLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexGet(_ isFinalChunk: Bool, headers inHeaders: UnsafeMutableRawPointer!, headersLength inHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexAbort(_ inOptionalHeaders: UnsafeMutableRawPointer!, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexSetPath(_ inFlags: OBEXFlags, constants inConstants: OBEXConstants, optionalHeaders inOptionalHeaders: UnsafeMutableRawPointer!, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexConnectResponse(_ inResponseOpCode: OBEXOpCode, flags inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutableRawPointer!, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexDisconnectResponse(_ inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutableRawPointer!, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexPutResponse(_ inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutableRawPointer!, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexGetResponse(_ inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutableRawPointer!, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexAbortResponse(_ inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutableRawPointer!, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func obexSetPathResponse(_ inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutableRawPointer!, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func getAvailableCommandPayloadLength(_ inOpCode: OBEXOpCode) -> OBEXMaxPacketLength
  func getAvailableCommandResponsePayloadLength(_ inOpCode: OBEXOpCode) -> OBEXMaxPacketLength
  func getMaxPacketLength() -> OBEXMaxPacketLength
  func hasOpenOBEXConnection() -> Bool
  func setEventCallback(_ inEventCallback: OBEXSessionEventCallback!)
  func setEventRefCon(_ inRefCon: UnsafeMutableRawPointer!)
  func setEventSelector(_ inEventSelector: Selector!, target inEventSelectorTarget: Any!, refCon inUserRefCon: Any!)
  func serverHandleIncomingData(_ event: UnsafeMutablePointer<OBEXTransportEvent>!)
  func clientHandleIncomingData(_ event: UnsafeMutablePointer<OBEXTransportEvent>!)
  func sendData(toTransport inDataToSend: UnsafeMutableRawPointer!, dataLength inDataLength: Int) -> OBEXError
  func openTransportConnection(_ inSelector: Selector!, selectorTarget inTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> OBEXError
  func hasOpenTransportConnection() -> Bool
  func closeTransportConnection() -> OBEXError
}
typealias OBEXTransportEventType = UInt32
struct OBEXTransportEventTypes : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXTransportEventTypeDataReceived: OBEXTransportEventTypes { get }
var kOBEXTransportEventTypeStatus: OBEXTransportEventTypes { get }
struct OBEXTransportEvent {
  var type: OBEXTransportEventType
  var status: OBEXError
  var dataPtr: UnsafeMutableRawPointer!
  var dataLength: Int
  init()
  init(type: OBEXTransportEventType, status: OBEXError, dataPtr: UnsafeMutableRawPointer!, dataLength: Int)
}

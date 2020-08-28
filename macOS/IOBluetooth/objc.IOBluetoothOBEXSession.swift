
class IOBluetoothOBEXSession : OBEXSession, IOBluetoothRFCOMMChannelDelegate {
  class func withSDPServiceRecord(_ inSDPServiceRecord: IOBluetoothSDPServiceRecord!) -> Self!
  class func withDevice(_ inDevice: IOBluetoothDevice!, channelID inRFCOMMChannelID: BluetoothRFCOMMChannelID) -> Self!
  class func withIncomingRFCOMMChannel(_ inChannel: IOBluetoothRFCOMMChannel!, eventSelector inEventSelector: Selector!, selectorTarget inEventSelectorTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!) -> Self!
  init!(sdpServiceRecord inSDPServiceRecord: IOBluetoothSDPServiceRecord!)
  init!(device inDevice: IOBluetoothDevice!, channelID inChannelID: BluetoothRFCOMMChannelID)
  init!(incomingRFCOMMChannel inChannel: IOBluetoothRFCOMMChannel!, eventSelector inEventSelector: Selector!, selectorTarget inEventSelectorTarget: Any!, refCon inUserRefCon: UnsafeMutableRawPointer!)
  func getRFCOMMChannel() -> IOBluetoothRFCOMMChannel!
  func getDevice() -> IOBluetoothDevice!
  func sendBufferTroughChannel() -> IOReturn
  func restartTransmission()
  func isSessionTargetAMac() -> Bool
  func setOpenTransportConnectionAsyncSelector(_ inSelector: Selector!, target inSelectorTarget: Any!, refCon inUserRefCon: Any!)
  func setOBEXSessionOpenConnectionCallback(_ inCallback: IOBluetoothOBEXSessionOpenConnectionCallback!, refCon inUserRefCon: UnsafeMutableRawPointer!)
}

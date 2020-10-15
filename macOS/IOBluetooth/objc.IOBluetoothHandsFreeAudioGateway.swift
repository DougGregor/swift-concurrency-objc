
@available(macOS 10.7, *)
class IOBluetoothHandsFreeAudioGateway : IOBluetoothHandsFree {
  @available(macOS 10.7, *)
  func createIndicator(_ indicatorName: String!, min minValue: Int32, max maxValue: Int32, currentValue: Int32)
  @available(macOS 10.7, *)
  func process(atCommand: String!)
  @available(macOS 10.7, *)
  func sendOKResponse()
  @available(macOS 10.7, *)
  func sendResponse(_ response: String!)
  @available(macOS 10.7, *)
  func sendResponse(_ response: String!, withOK: Bool)
}
protocol IOBluetoothHandsFreeAudioGatewayDelegate {
  @available(macOS 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeAudioGateway!, hangup: NSNumber!)
  @available(macOS 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFreeAudioGateway!, redial: NSNumber!)
}


@available(watchOS 1.0, *)
class AVPlayerItemOutput : NSObject {
  func itemTime(forHostTime hostTimeInSeconds: CFTimeInterval) -> CMTime
  func itemTime(forMachAbsoluteTime machAbsoluteTime: Int64) -> CMTime
}
protocol AVPlayerItemOutputPullDelegate : NSObjectProtocol {
  @available(watchOS 1.0, *)
  optional func outputMediaDataWillChange(_ sender: AVPlayerItemOutput)
  @available(watchOS 1.0, *)
  optional func outputSequenceWasFlushed(_ output: AVPlayerItemOutput)
}
extension AVPlayerItemLegibleOutput {
  init(mediaSubtypesForNativeRepresentation subtypes: [NSNumber])
}
extension AVPlayerItemLegibleOutput {
  var textStylingResolution: AVPlayerItemLegibleOutput.TextStylingResolution
}
extension AVPlayerItemLegibleOutput {
  struct TextStylingResolution : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension AVPlayerItemLegibleOutput.TextStylingResolution {
}
protocol AVPlayerItemLegibleOutputPushDelegate : AVPlayerItemOutputPushDelegate {
}
protocol AVPlayerItemOutputPushDelegate : NSObjectProtocol {
  @available(watchOS 1.0, *)
  optional func outputSequenceWasFlushed(_ output: AVPlayerItemOutput)
}
@available(watchOS 1.0, *)
class AVPlayerItemMetadataOutput : AVPlayerItemOutput {
  init(identifiers: [String]?)
  func setDelegate(_ delegate: AVPlayerItemMetadataOutputPushDelegate?, queue delegateQueue: DispatchQueue?)
  weak var delegate: @sil_weak AVPlayerItemMetadataOutputPushDelegate? { get }
  var delegateQueue: DispatchQueue? { get }
  var advanceIntervalForDelegateInvocation: TimeInterval
}
protocol AVPlayerItemMetadataOutputPushDelegate : AVPlayerItemOutputPushDelegate {
  @available(watchOS 1.0, *)
  optional func metadataOutput(_ output: AVPlayerItemMetadataOutput, didOutputTimedMetadataGroups groups: [AVTimedMetadataGroup], from track: AVPlayerItemTrack?)
}


@available(macOS 10.8, *)
class AVPlayerItemOutput : NSObject {
  func itemTime(forHostTime hostTimeInSeconds: CFTimeInterval) -> CMTime
  func itemTime(forMachAbsoluteTime machAbsoluteTime: Int64) -> CMTime
  @available(macOS 10.8, *)
  func itemTime(for timestamp: CVTimeStamp) -> CMTime
  @available(macOS 10.8, *)
  var suppressesPlayerRendering: Bool
}
@available(macOS 10.8, *)
class AVPlayerItemVideoOutput : AVPlayerItemOutput {
  init(pixelBufferAttributes: [String : Any]? = nil)
  @available(macOS 10.12, *)
  init(outputSettings: [String : Any]?)
  func hasNewPixelBuffer(forItemTime itemTime: CMTime) -> Bool
  func copyPixelBuffer(forItemTime itemTime: CMTime, itemTimeForDisplay outItemTimeForDisplay: UnsafeMutablePointer<CMTime>?) -> CVPixelBuffer?
  func setDelegate(_ delegate: AVPlayerItemOutputPullDelegate?, queue delegateQueue: DispatchQueue?)
  func requestNotificationOfMediaDataChange(withAdvanceInterval interval: TimeInterval)
  weak var delegate: @sil_weak AVPlayerItemOutputPullDelegate? { get }
  var delegateQueue: DispatchQueue? { get }
}
protocol AVPlayerItemOutputPullDelegate : NSObjectProtocol {
  @available(macOS 10.8, *)
  optional func outputMediaDataWillChange(_ sender: AVPlayerItemOutput)
  @available(macOS 10.8, *)
  optional func outputSequenceWasFlushed(_ output: AVPlayerItemOutput)
}
@available(macOS 10.9, *)
class AVPlayerItemLegibleOutput : AVPlayerItemOutput {
  func setDelegate(_ delegate: AVPlayerItemLegibleOutputPushDelegate?, queue delegateQueue: DispatchQueue?)
  weak var delegate: @sil_weak AVPlayerItemLegibleOutputPushDelegate? { get }
  var delegateQueue: DispatchQueue? { get }
  var advanceIntervalForDelegateInvocation: TimeInterval
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
  @available(macOS 10.9, *)
  static let `default`: AVPlayerItemLegibleOutput.TextStylingResolution
  @available(macOS 10.9, *)
  static let sourceAndRulesOnly: AVPlayerItemLegibleOutput.TextStylingResolution
}
protocol AVPlayerItemLegibleOutputPushDelegate : AVPlayerItemOutputPushDelegate {
  @available(macOS 10.9, *)
  @asyncHandler optional func legibleOutput(_ output: AVPlayerItemLegibleOutput, didOutputAttributedStrings strings: [NSAttributedString], nativeSampleBuffers nativeSamples: [Any], forItemTime itemTime: CMTime)
}
protocol AVPlayerItemOutputPushDelegate : NSObjectProtocol {
  @available(macOS 10.8, *)
  optional func outputSequenceWasFlushed(_ output: AVPlayerItemOutput)
}
@available(macOS 10.10, *)
class AVPlayerItemMetadataOutput : AVPlayerItemOutput {
  init(identifiers: [String]?)
  func setDelegate(_ delegate: AVPlayerItemMetadataOutputPushDelegate?, queue delegateQueue: DispatchQueue?)
  weak var delegate: @sil_weak AVPlayerItemMetadataOutputPushDelegate? { get }
  var delegateQueue: DispatchQueue? { get }
  var advanceIntervalForDelegateInvocation: TimeInterval
}
protocol AVPlayerItemMetadataOutputPushDelegate : AVPlayerItemOutputPushDelegate {
  @available(macOS 10.10, *)
  @asyncHandler optional func metadataOutput(_ output: AVPlayerItemMetadataOutput, didOutputTimedMetadataGroups groups: [AVTimedMetadataGroup], from track: AVPlayerItemTrack?)
}

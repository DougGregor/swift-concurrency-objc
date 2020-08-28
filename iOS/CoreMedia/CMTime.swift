
@available(iOS 4.0, *)
typealias CMTimeValue = Int64
@available(iOS 4.0, *)
typealias CMTimeScale = Int32
var kCMTimeMaxTimescale: Int { get }
@available(iOS 4.0, *)
typealias CMTimeEpoch = Int64
@available(iOS 4.0, *)
struct CMTimeFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var valid: CMTimeFlags { get }
  static var hasBeenRounded: CMTimeFlags { get }
  static var positiveInfinity: CMTimeFlags { get }
  static var negativeInfinity: CMTimeFlags { get }
  static var indefinite: CMTimeFlags { get }
  static var impliedValueFlagsMask: CMTimeFlags { get }
}
@available(iOS 4.0, *)
struct CMTime {
  var value: CMTimeValue
  var timescale: CMTimeScale
  var flags: CMTimeFlags
  var epoch: CMTimeEpoch
  init()
  init(value: CMTimeValue, timescale: CMTimeScale, flags: CMTimeFlags, epoch: CMTimeEpoch)
}

@available(watchOS 6.0, *)
extension CMTime {
  @available(watchOS 6.0, *)
  init(seconds: Double, preferredTimescale: CMTimeScale)
  @available(watchOS 6.0, *)
  init(value: CMTimeValue, timescale: CMTimeScale)
}

@available(watchOS 6.0, *)
extension CMTime {
  @available(watchOS 6.0, *)
  var isValid: Bool { get }
  @available(watchOS 6.0, *)
  var isPositiveInfinity: Bool { get }
  @available(watchOS 6.0, *)
  var isNegativeInfinity: Bool { get }
  @available(watchOS 6.0, *)
  var isIndefinite: Bool { get }
  @available(watchOS 6.0, *)
  var isNumeric: Bool { get }
  @available(watchOS 6.0, *)
  var hasBeenRounded: Bool { get }
  @available(watchOS 6.0, *)
  var seconds: Double { get }
  @available(watchOS 6.0, *)
  func convertScale(_ newTimescale: Int32, method: CMTimeRoundingMethod) -> CMTime
}

@available(watchOS 6.0, *)
extension CMTime {
  @available(watchOS 6.0, *)
  static func + (addend1: CMTime, addend2: CMTime) -> CMTime
  @available(watchOS 6.0, *)
  static func - (minuend: CMTime, subtrahend: CMTime) -> CMTime
}

@available(watchOS 6.0, *)
extension CMTime : Equatable, Comparable {
  @available(watchOS 6.0, *)
  static func != (time1: CMTime, time2: CMTime) -> Bool
}
extension CMTime {
  @available(iOS 4.0, *)
  static let invalid: CMTime
  @available(iOS 4.0, *)
  static let indefinite: CMTime
  @available(iOS 4.0, *)
  static let positiveInfinity: CMTime
  @available(iOS 4.0, *)
  static let negativeInfinity: CMTime
  @available(iOS 4.0, *)
  static let zero: CMTime
}
@available(iOS 4.0, *)
func CMTimeMake(value: Int64, timescale: Int32) -> CMTime
@available(iOS 4.0, *)
func CMTimeMakeWithEpoch(value: Int64, timescale: Int32, epoch: Int64) -> CMTime
@available(iOS 4.0, *)
func CMTimeMakeWithSeconds(_ seconds: Float64, preferredTimescale: Int32) -> CMTime
@available(iOS 4.0, *)
func CMTimeGetSeconds(_ time: CMTime) -> Float64
@available(iOS 4.0, *)
enum CMTimeRoundingMethod : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case roundHalfAwayFromZero
  case roundTowardZero
  case roundAwayFromZero
  case quickTime
  case roundTowardPositiveInfinity
  case roundTowardNegativeInfinity
  static var `default`: CMTimeRoundingMethod { get }
}
@available(iOS 4.0, *)
func CMTimeConvertScale(_ time: CMTime, timescale newTimescale: Int32, method: CMTimeRoundingMethod) -> CMTime
@available(iOS 4.0, *)
func CMTimeAdd(_ lhs: CMTime, _ rhs: CMTime) -> CMTime
@available(iOS 4.0, *)
func CMTimeSubtract(_ lhs: CMTime, _ rhs: CMTime) -> CMTime
@available(iOS 4.0, *)
func CMTimeMultiply(_ time: CMTime, multiplier: Int32) -> CMTime
@available(iOS 4.0, *)
func CMTimeMultiplyByFloat64(_ time: CMTime, multiplier: Float64) -> CMTime
@available(iOS 7.1, *)
func CMTimeMultiplyByRatio(_ time: CMTime, multiplier: Int32, divisor: Int32) -> CMTime
@available(iOS 4.0, *)
func CMTimeCompare(_ time1: CMTime, _ time2: CMTime) -> Int32
@available(iOS 4.0, *)
func CMTimeMinimum(_ time1: CMTime, _ time2: CMTime) -> CMTime
@available(iOS 4.0, *)
func CMTimeMaximum(_ time1: CMTime, _ time2: CMTime) -> CMTime
@available(iOS 4.0, *)
func CMTimeAbsoluteValue(_ time: CMTime) -> CMTime
@available(iOS 4.0, *)
func CMTimeCopyAsDictionary(_ time: CMTime, allocator: CFAllocator?) -> CFDictionary?
@available(iOS 4.0, *)
func CMTimeMakeFromDictionary(_ dictionaryRepresentation: CFDictionary?) -> CMTime
@available(iOS 4.0, *)
let kCMTimeValueKey: CFString
@available(iOS 4.0, *)
let kCMTimeScaleKey: CFString
@available(iOS 4.0, *)
let kCMTimeEpochKey: CFString
@available(iOS 4.0, *)
let kCMTimeFlagsKey: CFString
@available(iOS 4.0, *)
func CMTimeCopyDescription(allocator: CFAllocator?, time: CMTime) -> CFString?
@available(iOS 4.0, *)
func CMTimeShow(_ time: CMTime)

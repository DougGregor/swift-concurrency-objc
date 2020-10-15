
@available(macOS 10.7, *)
typealias CMTimeValue = Int64
@available(macOS 10.7, *)
typealias CMTimeScale = Int32
var kCMTimeMaxTimescale: Int { get }
@available(macOS 10.7, *)
typealias CMTimeEpoch = Int64
@available(macOS 10.7, *)
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
@available(macOS 10.7, *)
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
  @available(macOS 10.7, *)
  static let invalid: CMTime
  @available(macOS 10.7, *)
  static let indefinite: CMTime
  @available(macOS 10.7, *)
  static let positiveInfinity: CMTime
  @available(macOS 10.7, *)
  static let negativeInfinity: CMTime
  @available(macOS 10.7, *)
  static let zero: CMTime
}
@available(macOS 10.7, *)
func CMTimeMake(value: Int64, timescale: Int32) -> CMTime
@available(macOS 10.7, *)
func CMTimeMakeWithEpoch(value: Int64, timescale: Int32, epoch: Int64) -> CMTime
@available(macOS 10.7, *)
func CMTimeMakeWithSeconds(_ seconds: Float64, preferredTimescale: Int32) -> CMTime
@available(macOS 10.7, *)
func CMTimeGetSeconds(_ time: CMTime) -> Float64
@available(macOS 10.7, *)
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
@available(macOS 10.7, *)
func CMTimeConvertScale(_ time: CMTime, timescale newTimescale: Int32, method: CMTimeRoundingMethod) -> CMTime
@available(macOS 10.7, *)
func CMTimeAdd(_ lhs: CMTime, _ rhs: CMTime) -> CMTime
@available(macOS 10.7, *)
func CMTimeSubtract(_ lhs: CMTime, _ rhs: CMTime) -> CMTime
@available(macOS 10.7, *)
func CMTimeMultiply(_ time: CMTime, multiplier: Int32) -> CMTime
@available(macOS 10.7, *)
func CMTimeMultiplyByFloat64(_ time: CMTime, multiplier: Float64) -> CMTime
@available(macOS 10.10, *)
func CMTimeMultiplyByRatio(_ time: CMTime, multiplier: Int32, divisor: Int32) -> CMTime
@available(macOS 10.7, *)
func CMTimeCompare(_ time1: CMTime, _ time2: CMTime) -> Int32
@available(macOS 10.7, *)
func CMTimeMinimum(_ time1: CMTime, _ time2: CMTime) -> CMTime
@available(macOS 10.7, *)
func CMTimeMaximum(_ time1: CMTime, _ time2: CMTime) -> CMTime
@available(macOS 10.7, *)
func CMTimeAbsoluteValue(_ time: CMTime) -> CMTime
@available(macOS 10.7, *)
func CMTimeCopyAsDictionary(_ time: CMTime, allocator: CFAllocator?) -> CFDictionary?
@available(macOS 10.7, *)
func CMTimeMakeFromDictionary(_ dictionaryRepresentation: CFDictionary?) -> CMTime
@available(macOS 10.7, *)
let kCMTimeValueKey: CFString
@available(macOS 10.7, *)
let kCMTimeScaleKey: CFString
@available(macOS 10.7, *)
let kCMTimeEpochKey: CFString
@available(macOS 10.7, *)
let kCMTimeFlagsKey: CFString
@available(macOS 10.7, *)
func CMTimeCopyDescription(allocator: CFAllocator?, time: CMTime) -> CFString?
@available(macOS 10.7, *)
func CMTimeShow(_ time: CMTime)

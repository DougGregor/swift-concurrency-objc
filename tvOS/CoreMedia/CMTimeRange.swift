
@available(tvOS 9.0, *)
struct CMTimeRange {
  var start: CMTime
  var duration: CMTime
  init()
  init(start: CMTime, duration: CMTime)
}

@available(watchOS 6.0, *)
extension CMTimeRange {
  @available(watchOS 6.0, *)
  init(start: CMTime, end: CMTime)
  @available(watchOS 6.0, *)
  var isValid: Bool { get }
  @available(watchOS 6.0, *)
  var isIndefinite: Bool { get }
  @available(watchOS 6.0, *)
  var isEmpty: Bool { get }
  @available(watchOS 6.0, *)
  var end: CMTime { get }
  @available(watchOS 6.0, *)
  func union(_ otherRange: CMTimeRange) -> CMTimeRange
  @available(watchOS 6.0, *)
  func intersection(_ otherRange: CMTimeRange) -> CMTimeRange
  @available(watchOS 6.0, *)
  func containsTime(_ time: CMTime) -> Bool
  @available(watchOS 6.0, *)
  func containsTimeRange(_ range: CMTimeRange) -> Bool
}

@available(watchOS 6.0, *)
extension CMTimeRange : Equatable {
  @available(watchOS 6.0, *)
  static func != (range1: CMTimeRange, range2: CMTimeRange) -> Bool
}
extension CMTimeRange {
  @available(tvOS 9.0, *)
  static let zero: CMTimeRange
  @available(tvOS 9.0, *)
  static let invalid: CMTimeRange
}
@available(tvOS 9.0, *)
func CMTimeRangeMake(start: CMTime, duration: CMTime) -> CMTimeRange
@available(tvOS 9.0, *)
func CMTimeRangeGetUnion(_ range: CMTimeRange, otherRange: CMTimeRange) -> CMTimeRange
@available(tvOS 9.0, *)
func CMTimeRangeGetIntersection(_ range: CMTimeRange, otherRange: CMTimeRange) -> CMTimeRange
@available(tvOS 9.0, *)
func CMTimeRangeEqual(_ range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
@available(tvOS 9.0, *)
func CMTimeRangeContainsTime(_ range: CMTimeRange, time: CMTime) -> Bool
@available(tvOS 9.0, *)
func CMTimeRangeContainsTimeRange(_ range: CMTimeRange, otherRange: CMTimeRange) -> Bool
@available(tvOS 9.0, *)
func CMTimeRangeGetEnd(_ range: CMTimeRange) -> CMTime
@available(tvOS 9.0, *)
func CMTimeMapTimeFromRangeToRange(_ t: CMTime, fromRange: CMTimeRange, toRange: CMTimeRange) -> CMTime
@available(tvOS 9.0, *)
func CMTimeClampToRange(_ time: CMTime, range: CMTimeRange) -> CMTime
@available(tvOS 9.0, *)
func CMTimeMapDurationFromRangeToRange(_ dur: CMTime, fromRange: CMTimeRange, toRange: CMTimeRange) -> CMTime
@available(tvOS 12.0, *)
func CMTimeFoldIntoRange(_ time: CMTime, foldRange: CMTimeRange) -> CMTime
@available(tvOS 9.0, *)
func CMTimeRangeFromTimeToTime(start: CMTime, end: CMTime) -> CMTimeRange
@available(tvOS 9.0, *)
func CMTimeRangeCopyAsDictionary(_ range: CMTimeRange, allocator: CFAllocator?) -> CFDictionary?
@available(tvOS 9.0, *)
func CMTimeRangeMakeFromDictionary(_ dictionaryRepresentation: CFDictionary) -> CMTimeRange
@available(tvOS 9.0, *)
let kCMTimeRangeStartKey: CFString
@available(tvOS 9.0, *)
let kCMTimeRangeDurationKey: CFString
@available(tvOS 9.0, *)
func CMTimeRangeCopyDescription(allocator: CFAllocator?, range: CMTimeRange) -> CFString?
@available(tvOS 9.0, *)
func CMTimeRangeShow(_ range: CMTimeRange)
@available(tvOS 9.0, *)
struct CMTimeMapping {
  var source: CMTimeRange
  var target: CMTimeRange
  init()
  init(source: CMTimeRange, target: CMTimeRange)
}
extension CMTimeMapping {
  @available(tvOS 9.0, *)
  static let invalid: CMTimeMapping
}
@available(tvOS 9.0, *)
func CMTimeMappingMake(source: CMTimeRange, target: CMTimeRange) -> CMTimeMapping
@available(tvOS 9.0, *)
func CMTimeMappingMakeEmpty(target: CMTimeRange) -> CMTimeMapping
@available(tvOS 9.0, *)
func CMTimeMappingCopyAsDictionary(_ mapping: CMTimeMapping, allocator: CFAllocator?) -> CFDictionary?
@available(tvOS 9.0, *)
func CMTimeMappingMakeFromDictionary(_ dictionaryRepresentation: CFDictionary) -> CMTimeMapping
@available(tvOS 9.0, *)
let kCMTimeMappingSourceKey: CFString
@available(tvOS 9.0, *)
let kCMTimeMappingTargetKey: CFString
@available(tvOS 9.0, *)
func CMTimeMappingCopyDescription(allocator: CFAllocator?, mapping: CMTimeMapping) -> CFString?
@available(tvOS 9.0, *)
func CMTimeMappingShow(_ mapping: CMTimeMapping)


@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
struct ManagedAudioChannelLayout {
  init(audioChannelLayoutPointer: AudioChannelLayout.UnsafePointer, deallocator: @escaping (AudioChannelLayout.UnsafePointer) -> Void)
  init(tag: AudioChannelLayoutTag)
  init(maximumDescriptions: Int)
  init(channelDescriptions: [AudioChannelDescription])
  var tag: AudioChannelLayoutTag
  var bitmap: AudioChannelBitmap
  mutating func setAllToUnknown()
  var channelDescriptions: ManagedAudioChannelLayout.ChannelDescriptions
  var sizeInBytes: Int { get }
  var numberOfChannels: Int { get }
  func withUnsafePointer<Result>(_ body: (UnsafePointer<AudioChannelLayout>) throws -> Result) rethrows -> Result
  mutating func withUnsafeMutablePointer<Result>(_ body: (UnsafeMutablePointer<AudioChannelLayout>) throws -> Result) rethrows -> Result
  struct ChannelDescriptions : MutableCollection, RandomAccessCollection {
  }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension ManagedAudioChannelLayout : Equatable {
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension ManagedAudioChannelLayout.ChannelDescriptions : Equatable {
}

struct UnsafeMutableAudioBufferListPointer {
  init(_ p: UnsafeMutablePointer<AudioBufferList>)
  init?(_ p: UnsafeMutablePointer<AudioBufferList>?)
  var unsafePointer: UnsafePointer<AudioBufferList> { get }
  var unsafeMutablePointer: UnsafeMutablePointer<AudioBufferList>
}

extension UnsafeMutableAudioBufferListPointer : MutableCollection, RandomAccessCollection {
}

extension UnsafeBufferPointer {
  init(_ audioBuffer: AudioBuffer)
}

extension UnsafeMutableBufferPointer {
  init(_ audioBuffer: AudioBuffer)
}

extension AudioBuffer {
  init<Element>(_ typedBuffer: UnsafeMutableBufferPointer<Element>, numberOfChannels: Int)
}

extension AudioBufferList {
  static func sizeInBytes(maximumBuffers: Int) -> Int
  static func allocate(maximumBuffers: Int) -> UnsafeMutableAudioBufferListPointer
}

extension AudioChannelLayout {
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  static func sizeInBytes(maximumDescriptions: Int) -> Int
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  static func allocate(maximumDescriptions: Int) -> AudioChannelLayout.UnsafeMutablePointer
}

extension AudioChannelLayout {
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  struct UnsafeMutablePointer {
    init(_ p: UnsafeMutablePointer<AudioChannelLayout>)
    init?(_ p: UnsafeMutablePointer<AudioChannelLayout>?)
    var unsafePointer: UnsafePointer<AudioChannelLayout> { get }
    var unsafeMutablePointer: UnsafeMutablePointer<AudioChannelLayout>
  }
}

extension AudioChannelLayout {
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  struct UnsafePointer {
    init(_ p: UnsafePointer<AudioChannelLayout>)
    init?(_ p: UnsafePointer<AudioChannelLayout>?)
    var unsafePointer: UnsafePointer<AudioChannelLayout>
  }
}

extension AudioChannelDescription {
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  static func == (lhs: AudioChannelDescription, rhs: AudioChannelDescription) -> Bool
}



@available(macOS 11.0, iOS 14.0, *)
struct UnsafeMutableMIDIEventListPointer : Sequence {
  var listSizeInBytes: Int { get }
  var lastPacket: UnsafeMutablePointer<MIDIEventPacket>? { get }
  var midiProtocol: MIDIProtocolID { get }
  init(_ p: UnsafeMutablePointer<MIDIEventList>, wordSize: Int, inProtocol: MIDIProtocolID)
  init?(_ p: UnsafeMutablePointer<MIDIEventList>?, wordSize: Int)
  var count: Int { get }
  mutating func clear()
  @discardableResult
  mutating func append(timestamp: MIDITimeStamp, words: [UInt32]) -> UnsafePointer<MIDIEventPacket>?
}

@available(macOS 11.0, iOS 14.0, *)
struct UnsafeMutableMIDIEventPacketPointer {
  init(_ p: UnsafeMutablePointer<MIDIEventPacket>)
  init?(_ p: UnsafeMutablePointer<MIDIEventPacket>?)
  var timeStamp: Int { get nonmutating set }
}

@available(macOS 11.0, iOS 14.0, *)
extension UnsafeMutableMIDIEventPacketPointer : MutableCollection, RandomAccessCollection {
}

@available(macOS 11.0, iOS 14.0, *)
extension UnsafeMutableMIDIEventPacketPointer : Sequence {
}

@available(macOS 10.15, iOS 13.0, *)
struct UnsafeMutableMIDIPacketListPointer : Sequence {
  var listSizeInBytes: Int { get }
  var lastPacket: UnsafeMutablePointer<MIDIPacket>? { get }
  init(_ p: UnsafeMutablePointer<MIDIPacketList>, byteSize: Int)
  init?(_ p: UnsafeMutablePointer<MIDIPacketList>?, byteSize: Int)
  var count: Int { get }
  mutating func clear()
  @discardableResult
  mutating func append(timestamp: MIDITimeStamp, data: [UInt8]) -> UnsafePointer<MIDIPacket>?
}

@available(macOS 10.15, iOS 13.0, *)
struct UnsafeMutableMIDIPacketPointer {
  init(_ p: UnsafeMutablePointer<MIDIPacket>)
  init?(_ p: UnsafeMutablePointer<MIDIPacket>?)
  var timeStamp: Int { get nonmutating set }
}

@available(macOS 10.15, iOS 13.0, *)
extension UnsafeMutableMIDIPacketPointer : MutableCollection, RandomAccessCollection {
}

@available(macOS 10.15, iOS 13.0, *)
extension UnsafeMutableMIDIPacketPointer : Sequence {
}

extension MIDIEventPacket {
  @available(macOS 11.0, iOS 14.0, *)
  struct WordSequence : Sequence {
    var count: Int { get }
  }
  @available(macOS 11.0, iOS 14.0, *)
  struct WordCollection : RandomAccessCollection {
    init(_ p: UnsafePointer<MIDIEventPacket>)
    init?(_ p: UnsafePointer<MIDIEventPacket>?)
  }
}

extension UnsafePointer where Pointee == MIDIEventPacket {
  @available(macOS 11.0, iOS 14.0, *)
  func sequence() -> MIDIEventPacket.WordSequence
  @available(macOS 11.0, iOS 14.0, *)
  func words() -> MIDIEventPacket.WordCollection
}

extension MIDIEventPacket {
  @available(macOS 11.0, iOS 14.0, *)
  class Builder {
    var capacity: Int { get }
    init(maximumNumberMIDIWords: Int)
    var count: Int { get }
    var timeStamp: Int
    func append(_ midiWords: UInt32...)
    func withUnsafePointer<Result>(_ body: (UnsafePointer<MIDIEventPacket>) -> Result) -> Result
    func withUnsafeMutableMIDIEventPacketPointer<Result>(_ body: (inout UnsafeMutableMIDIEventPacketPointer) -> Result) -> Result
  }
}

extension UnsafePointer where Pointee == MIDIEventList {
  @available(macOS 11.0, iOS 14.0, *)
  func unsafeSequence() -> MIDIEventList.UnsafeSequence
}

extension MIDIEventList {
  @available(macOS 11.0, iOS 14.0, *)
  static func sizeInBytes(pktList: UnsafePointer<MIDIEventList>) -> Int
  @available(macOS 11.0, iOS 14.0, *)
  struct UnsafeSequence : Sequence {
    var count: Int { get }
  }
}

extension MIDIEventList {
  @available(macOS 11.0, iOS 14.0, *)
  class Builder {
    init(inProtocol: MIDIProtocolID, wordSize: Int)
    @discardableResult
    func append(timestamp: MIDITimeStamp, words: [UInt32]) -> UnsafePointer<MIDIEventPacket>?
    func clear()
    var count: Int { get }
    func withUnsafePointer<Result>(_ body: (UnsafePointer<MIDIEventList>) -> Result) -> Result
    func withUnsafeMutableMIDIEventListPointer<Result>(_ body: (inout UnsafeMutableMIDIEventListPointer) -> Result) -> Result
  }
}

extension MIDIPacket {
  @available(macOS 10.15, iOS 13.0, *)
  struct ByteSequence : Sequence {
    var count: Int { get }
  }
  @available(macOS 10.15, iOS 13.0, *)
  struct ByteCollection : RandomAccessCollection {
    init(_ p: UnsafePointer<MIDIPacket>)
    init?(_ p: UnsafePointer<MIDIPacket>?)
  }
}

extension UnsafePointer where Pointee == MIDIPacket {
  @available(macOS 10.15, iOS 13.0, *)
  func sequence() -> MIDIPacket.ByteSequence
  @available(macOS 10.15, iOS 13.0, *)
  func bytes() -> MIDIPacket.ByteCollection
}

extension MIDIPacket {
  @available(macOS 10.15, iOS 13.0, *)
  class Builder {
    var capacity: Int { get }
    init(maximumNumberMIDIBytes: Int)
    var count: Int { get }
    var timeStamp: Int
    func append(_ midiBytes: UInt8...)
    func withUnsafePointer<Result>(_ body: (UnsafePointer<MIDIPacket>) -> Result) -> Result
    func withUnsafeMutableMIDIPacketPointer<Result>(_ body: (inout UnsafeMutableMIDIPacketPointer) -> Result) -> Result
  }
}

extension UnsafePointer where Pointee == MIDIPacketList {
  @available(macOS 10.15, iOS 13.0, *)
  func unsafeSequence() -> MIDIPacketList.UnsafeSequence
}

extension MIDIPacketList {
  @available(macOS 10.15, iOS 13.0, *)
  static func sizeInBytes(pktList: UnsafePointer<MIDIPacketList>) -> Int
  @available(macOS 10.15, iOS 13.0, *)
  struct UnsafeSequence : Sequence {
    var count: Int { get }
  }
}

extension MIDIPacketList {
  @available(macOS 10.15, iOS 13.0, *)
  class Builder {
    init(byteSize: Int)
    @discardableResult
    func append(timestamp: MIDITimeStamp, data: [UInt8]) -> UnsafePointer<MIDIPacket>?
    func clear()
    var count: Int { get }
    func withUnsafePointer<Result>(_ body: (UnsafePointer<MIDIPacketList>) -> Result) -> Result
    func withUnsafeMutableMIDIPacketListPointer<Result>(_ body: (inout UnsafeMutableMIDIPacketListPointer) -> Result) -> Result
  }
}


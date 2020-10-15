
enum MIDIMessageType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case utility
  case system
  case channelVoice1
  case sysEx
  case channelVoice2
  case data128
}
enum MIDICVStatus : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case noteOff
  case noteOn
  case polyPressure
  case controlChange
  case programChange
  case channelPressure
  case pitchBend
  case registeredPNC
  case assignablePNC
  case registeredControl
  case assignableControl
  case relRegisteredControl
  case relAssignableControl
  case perNotePitchBend
  case perNoteMgmt
}
enum MIDISystemStatus : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case statusStartOfExclusive
  case statusEndOfExclusive
  case statusMTC
  case statusSongPosPointer
  case statusSongSelect
  case statusTuneRequest
  case statusTimingClock
  case statusStart
  case statusContinue
  case statusStop
  case statusActiveSending
  case statusSystemReset
}
enum MIDISysExStatus : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case complete
  case start
  case `continue`
  case end
}
var kMIDINoteAttributeNone: Int { get }
var kMIDINoteAttributeManufacturerSpecific: Int { get }
var kMIDINoteAttributeProfileSpecific: Int { get }
var kMIDINoteAttributePitch: Int { get }
typealias MIDIMessage_32 = UInt32
struct MIDIMessage_64 {
  var word0: UInt32
  var word1: UInt32
  init()
  init(word0: UInt32, word1: UInt32)
}
struct MIDIMessage_96 {
  var word0: UInt32
  var word1: UInt32
  var word2: UInt32
  init()
  init(word0: UInt32, word1: UInt32, word2: UInt32)
}
struct MIDIMessage_128 {
  var word0: UInt32
  var word1: UInt32
  var word2: UInt32
  var word3: UInt32
  init()
  init(word0: UInt32, word1: UInt32, word2: UInt32, word3: UInt32)
}
func MIDIMessageTypeForUPWord(_ word: UInt32) -> MIDIMessageType
func MIDI1UPChannelVoiceMessage(_ group: UInt8, _ status: UInt8, _ channel: UInt8, _ data1: UInt8, _ data2: UInt8) -> MIDIMessage_32
func MIDI1UPNoteOff(_ group: UInt8, _ channel: UInt8, _ noteNumber: UInt8, _ velocity: UInt8) -> MIDIMessage_32
func MIDI1UPNoteOn(_ group: UInt8, _ channel: UInt8, _ noteNumber: UInt8, _ velocity: UInt8) -> MIDIMessage_32
func MIDI1UPControlChange(_ group: UInt8, _ channel: UInt8, _ index: UInt8, _ data: UInt8) -> MIDIMessage_32
func MIDI1UPPitchBend(_ group: UInt8, _ channel: UInt8, _ lsb: UInt8, _ msb: UInt8) -> MIDIMessage_32
func MIDI1UPSystemCommon(_ group: UInt8, _ status: UInt8, _ byte1: UInt8, _ byte2: UInt8) -> MIDIMessage_32
func MIDI2ChannelVoiceMessage(_ group: UInt8, _ status: UInt8, _ channel: UInt8, _ index: UInt16, _ value: UInt32) -> MIDIMessage_64
func MIDI2NoteOn(_ group: UInt8, _ channel: UInt8, _ noteNumber: UInt8, _ attributeType: UInt8, _ attributeData: UInt16, _ velocity: UInt16) -> MIDIMessage_64
func MIDI2NoteOff(_ group: UInt8, _ channel: UInt8, _ noteNumber: UInt8, _ attributeType: UInt8, _ attributeData: UInt16, _ velocity: UInt16) -> MIDIMessage_64
func MIDI2PolyPressure(_ group: UInt8, _ channel: UInt8, _ noteNumber: UInt8, _ value: UInt32) -> MIDIMessage_64
func MIDI2RegisteredPNC(_ group: UInt8, _ channel: UInt8, _ noteNumber: UInt8, _ index: UInt8, _ value: UInt32) -> MIDIMessage_64
func MIDI2AssignablePNC(_ group: UInt8, _ channel: UInt8, _ noteNumber: UInt8, _ index: UInt8, _ value: UInt32) -> MIDIMessage_64
func MIDI2PerNoteManagment(_ group: UInt8, _ channel: UInt8, _ noteNumber: UInt8, _ detachPNCs: Bool, _ resetPNCsToDefault: Bool) -> MIDIMessage_64
func MIDI2ControlChange(_ group: UInt8, _ channel: UInt8, _ index: UInt8, _ value: UInt32) -> MIDIMessage_64
func MIDI2RegisteredControl(_ group: UInt8, _ channel: UInt8, _ bank: UInt8, _ index: UInt8, _ value: UInt32) -> MIDIMessage_64
func MIDI2AssignableControl(_ group: UInt8, _ channel: UInt8, _ bank: UInt8, _ index: UInt8, _ value: UInt32) -> MIDIMessage_64
func MIDI2RelRegisteredControl(_ group: UInt8, _ channel: UInt8, _ bank: UInt8, _ index: UInt8, _ value: UInt32) -> MIDIMessage_64
func MIDI2RelAssignableControl(_ group: UInt8, _ channel: UInt8, _ bank: UInt8, _ index: UInt8, _ value: UInt32) -> MIDIMessage_64
func MIDI2ProgramChange(_ group: UInt8, _ channel: UInt8, _ bankIsValid: Bool, _ program: UInt8, _ bank_msb: UInt8, _ bank_lsb: UInt8) -> MIDIMessage_64
func MIDI2ChannelPressure(_ group: UInt8, _ channel: UInt8, _ value: UInt32) -> MIDIMessage_64
func MIDI2PitchBend(_ group: UInt8, _ channel: UInt8, _ value: UInt32) -> MIDIMessage_64
func MIDI2PerNotePitchBend(_ group: UInt8, _ channel: UInt8, _ noteNumber: UInt8, _ value: UInt32) -> MIDIMessage_64

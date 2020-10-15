
typealias AUGraph = OpaquePointer
typealias AUNode = Int32
var kAUGraphErr_NodeNotFound: OSStatus { get }
var kAUGraphErr_InvalidConnection: OSStatus { get }
var kAUGraphErr_OutputNodeErr: OSStatus { get }
var kAUGraphErr_CannotDoInCurrentContext: OSStatus { get }
var kAUGraphErr_InvalidAudioUnit: OSStatus { get }
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func NewAUGraph(_ outGraph: UnsafeMutablePointer<AUGraph?>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func DisposeAUGraph(_ inGraph: AUGraph) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphAddNode(_ inGraph: AUGraph, _ inDescription: UnsafePointer<AudioComponentDescription>, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphRemoveNode(_ inGraph: AUGraph, _ inNode: AUNode) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphGetNodeCount(_ inGraph: AUGraph, _ outNumberOfNodes: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphGetIndNode(_ inGraph: AUGraph, _ inIndex: UInt32, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphNodeInfo(_ inGraph: AUGraph, _ inNode: AUNode, _ outDescription: UnsafeMutablePointer<AudioComponentDescription>?, _ outAudioUnit: UnsafeMutablePointer<AudioUnit?>?) -> OSStatus
var kAUNodeInteraction_Connection: UInt32 { get }
var kAUNodeInteraction_InputCallback: UInt32 { get }
struct AudioUnitNodeConnection {
  var sourceNode: AUNode
  var sourceOutputNumber: UInt32
  var destNode: AUNode
  var destInputNumber: UInt32
  init()
  init(sourceNode: AUNode, sourceOutputNumber: UInt32, destNode: AUNode, destInputNumber: UInt32)
}
typealias AUNodeConnection = AudioUnitNodeConnection
struct AUNodeRenderCallback {
  var destNode: AUNode
  var destInputNumber: AudioUnitElement
  var cback: AURenderCallbackStruct
  init()
  init(destNode: AUNode, destInputNumber: AudioUnitElement, cback: AURenderCallbackStruct)
}
struct AUNodeInteraction {
  struct __Unnamed_union_nodeInteraction {
    var connection: AUNodeConnection
    var inputCallback: AUNodeRenderCallback
    init(connection: AUNodeConnection)
    init(inputCallback: AUNodeRenderCallback)
    init()
  }
  var nodeInteractionType: UInt32
  var nodeInteraction: AUNodeInteraction.__Unnamed_union_nodeInteraction
  init()
  init(nodeInteractionType: UInt32, nodeInteraction: AUNodeInteraction.__Unnamed_union_nodeInteraction)
}
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphConnectNodeInput(_ inGraph: AUGraph, _ inSourceNode: AUNode, _ inSourceOutputNumber: UInt32, _ inDestNode: AUNode, _ inDestInputNumber: UInt32) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphSetNodeInputCallback(_ inGraph: AUGraph, _ inDestNode: AUNode, _ inDestInputNumber: UInt32, _ inInputCallback: UnsafePointer<AURenderCallbackStruct>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphDisconnectNodeInput(_ inGraph: AUGraph, _ inDestNode: AUNode, _ inDestInputNumber: UInt32) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphClearConnections(_ inGraph: AUGraph) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphGetNumberOfInteractions(_ inGraph: AUGraph, _ outNumInteractions: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphGetInteractionInfo(_ inGraph: AUGraph, _ inInteractionIndex: UInt32, _ outInteraction: UnsafeMutablePointer<AUNodeInteraction>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphCountNodeInteractions(_ inGraph: AUGraph, _ inNode: AUNode, _ outNumInteractions: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphGetNodeInteractions(_ inGraph: AUGraph, _ inNode: AUNode, _ ioNumInteractions: UnsafeMutablePointer<UInt32>, _ outInteractions: UnsafeMutablePointer<AUNodeInteraction>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphUpdate(_ inGraph: AUGraph, _ outIsUpdated: UnsafeMutablePointer<DarwinBoolean>?) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphOpen(_ inGraph: AUGraph) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphClose(_ inGraph: AUGraph) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphInitialize(_ inGraph: AUGraph) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphUninitialize(_ inGraph: AUGraph) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphStart(_ inGraph: AUGraph) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphStop(_ inGraph: AUGraph) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphIsOpen(_ inGraph: AUGraph, _ outIsOpen: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphIsInitialized(_ inGraph: AUGraph, _ outIsInitialized: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphIsRunning(_ inGraph: AUGraph, _ outIsRunning: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphGetCPULoad(_ inGraph: AUGraph, _ outAverageCPULoad: UnsafeMutablePointer<Float32>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphGetMaxCPULoad(_ inGraph: AUGraph, _ outMaxLoad: UnsafeMutablePointer<Float32>) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphAddRenderNotify(_ inGraph: AUGraph, _ inCallback: AURenderCallback, _ inRefCon: UnsafeMutableRawPointer?) -> OSStatus
@available(iOS, introduced: 2.0, deprecated: 100000, message: "AUGraph is deprecated in favor of AVAudioEngine")
func AUGraphRemoveRenderNotify(_ inGraph: AUGraph, _ inCallback: AURenderCallback, _ inRefCon: UnsafeMutableRawPointer?) -> OSStatus


class SCNetworkInterface : _CFObject {
}
typealias SCBondInterface = SCNetworkInterface
class SCBondStatus : _CFObject {
}
var kSCBondStatusOK: Int { get }
var kSCBondStatusLinkInvalid: Int { get }
var kSCBondStatusNoPartner: Int { get }
var kSCBondStatusNotInActiveGroup: Int { get }
var kSCBondStatusUnknown: Int { get }
typealias SCVLANInterface = SCNetworkInterface
class SCNetworkProtocol : _CFObject {
}
class SCNetworkService : _CFObject {
}
class SCNetworkSet : _CFObject {
}

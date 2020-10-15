
var __gss_krb5_nt_principal_oid_desc: gss_OID_desc
var __gss_krb5_nt_principal_name_oid_desc: gss_OID_desc
var __gss_krb5_nt_principal_name_referral_oid_desc: gss_OID_desc
struct gss_krb5_lucid_key {
  var type: OM_uint32
  var length: OM_uint32
  var data: UnsafeMutableRawPointer?
  init()
  init(type: OM_uint32, length: OM_uint32, data: UnsafeMutableRawPointer?)
}
typealias gss_krb5_lucid_key_t = gss_krb5_lucid_key
struct gss_krb5_rfc1964_keydata {
  var sign_alg: OM_uint32
  var seal_alg: OM_uint32
  var ctx_key: gss_krb5_lucid_key_t
  init()
  init(sign_alg: OM_uint32, seal_alg: OM_uint32, ctx_key: gss_krb5_lucid_key_t)
}
typealias gss_krb5_rfc1964_keydata_t = gss_krb5_rfc1964_keydata
struct gss_krb5_cfx_keydata {
  var have_acceptor_subkey: OM_uint32
  var ctx_key: gss_krb5_lucid_key_t
  var acceptor_subkey: gss_krb5_lucid_key_t
  init()
  init(have_acceptor_subkey: OM_uint32, ctx_key: gss_krb5_lucid_key_t, acceptor_subkey: gss_krb5_lucid_key_t)
}
typealias gss_krb5_cfx_keydata_t = gss_krb5_cfx_keydata
struct gss_krb5_lucid_context_v1 {
  var version: OM_uint32
  var initiate: OM_uint32
  var endtime: OM_uint32
  var send_seq: OM_uint64
  var recv_seq: OM_uint64
  var `protocol`: OM_uint32
  var rfc1964_kd: gss_krb5_rfc1964_keydata_t
  var cfx_kd: gss_krb5_cfx_keydata_t
  init()
  init(version: OM_uint32, initiate: OM_uint32, endtime: OM_uint32, send_seq: OM_uint64, recv_seq: OM_uint64, protocol: OM_uint32, rfc1964_kd: gss_krb5_rfc1964_keydata_t, cfx_kd: gss_krb5_cfx_keydata_t)
}
typealias gss_krb5_lucid_context_v1_t = gss_krb5_lucid_context_v1
struct gss_krb5_lucid_context_version {
  var version: OM_uint32
  init()
  init(version: OM_uint32)
}
typealias gss_krb5_lucid_context_version_t = gss_krb5_lucid_context_version

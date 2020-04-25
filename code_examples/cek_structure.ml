type cek_id (** Identifiers *)
type cek_env (** Environments *)
type cek_control (** Control terms *)

(** Closures and hlosures *)
type cek_closure = cek_id * cek_env * cek_control
type cek_hlosure = cek_control * cek_env

(** Hlosure frames and the new K component *)
type cek_hlosure_frame = cek_hlosure * cek_kont list
type cek_k = cek_hlosure_frame list

(** CEK machine configuration *)
type cek_state = {
  c : cek_control;
  e : cek_env;
  k : cek_k;
}
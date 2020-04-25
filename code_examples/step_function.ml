(* cek_state -> cek_state *)
let step state =
...
match state.c with
...
| CEKletin (x, c1, c2) ->
  let continuation = { input = x; control = c2; kont_env = state.e } in
  {
    c = c1;
    e = state.e;
    k = push_continuation continuation state.k
  }
...
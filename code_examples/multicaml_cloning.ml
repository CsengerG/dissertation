| effect (Decide ()) k ->
  try continue (Obj.clone_continuation k) false with
  | effect (Fail ()) _ -> continue k true
;;
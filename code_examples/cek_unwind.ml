(* int -> cek_value -> cek_k -> cek_k -> cek_state *)
let rec unwind eff_id eff_arg hlosure_frame_acc = function
| [] ->
    let msg = "Runtime exception: a handler handling effect with ID=" 
        ^ (string_of_int eff_id) ^ "could not be found" in
    raise (CEKerror msg)
| hf :: hfs ->
    let continuation = hlosure_frame_acc @ [hf] in
  
    (* Current hlosure frame matches effect *)
    if is_match eff_id hf then
        (* Obtain matching effect case *)
        let matching_effcase = List.find (fun effcase -> effcase.eff_id = eff_id) hf.hlosure.handler.effcases in
        
        (* Bind argument of effect and the current continuation to the corresponding indentifiers in the hlosure environment *)
        let env = hf.hlosure.env
        |> (Cek_env.add matching_effcase.arg_label eff_arg)
        |> (Cek_env.add matching_effcase.kont_label (CEKcont continuation)) in
        
        (* Return the new CEK state *)
        { c = matching_effcase.eff_control;
          e = env;
          k = hfs; }

    (* If no match is found then continue the unwinding of hlosure frames *)
    else
        unwind eff_id eff_arg continuation hfs
    ;;
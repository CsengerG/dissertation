open Core;;
open Lib;;

let main path_to_source =
    path_to_source
    |> Parser.parse_from_file
    |> Preprocess.convert
    |> Translate.stx_to_ir
    |> Compile.to_byte_code
    |> Shade.exec
    |> Display.pretty_vm_result
;;
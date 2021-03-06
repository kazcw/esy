type t =
  item list
  [@@deriving eq, show]

and item =
  | String of string
  | Var of (string * string option)
  [@@deriving eq, show]

exception UnknownShellEscape of (Lexing.position * string)
exception UnmatchedChar of (Lexing.position * char)

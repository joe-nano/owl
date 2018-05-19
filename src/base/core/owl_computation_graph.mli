(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016-2018 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

open Owl_types

type attr


type arr
(** TODO *)

type elt
(** TODO *)


val pack_arr : attr Owl_graph.node -> arr
(** TODO *)

val unpack_arr : arr -> attr Owl_graph.node
(** TODO *)

val pack_elt : attr Owl_graph.node -> elt
(** TODO *)

val unpack_elt : elt -> attr Owl_graph.node
(** TODO *)

val var_arr : name:string -> int array option -> arr
(** TODO *)

val var_elt : name:string -> elt
(** TODO *)

val const_arr : name:string -> int array option -> arr
(** TODO *)

val const_elt : name:string -> elt
(** TODO *)

val empty : int array -> arr
(** TODO *)

val zeros : int array -> arr
(** TODO *)

val ones : int array -> arr
(** TODO *)

val create : int array -> elt -> arr
(** TODO *)

val sequential : ?a:elt -> ?step:elt -> int array -> arr
(** TODO *)

val uniform : ?a:elt -> ?b:elt -> int array -> arr
(** TODO *)

val gaussian : ?mu:elt -> ?sigma:elt -> int array -> arr
(** TODO *)

val bernoulli : ?p:float -> int array -> arr
(** TODO *)

val init : int array -> (int -> elt) -> arr
(** TODO *)

val shape : arr -> int array
(** TODO *)

val numel : arr -> int
(** TODO *)

val get : arr -> int array -> elt
(** TODO *)

val set : arr -> int array -> elt -> unit
(** TODO *)

val get_slice : int list list -> arr -> arr
(** TODO *)

val set_slice : int list list -> arr -> arr -> unit
(** TODO *)

val copy : arr -> arr
(** TODO *)

val reset : arr -> unit
(** TODO *)

val reshape : arr -> int array -> arr
(** TODO *)

val reverse : arr -> arr
(** TODO *)

val tile : arr -> int array -> arr
(** TODO *)

val repeat : ?axis:int -> arr -> int -> arr
(** TODO *)

val concatenate : ?axis:int -> arr array -> arr
(** TODO *)

val split : ?axis:int -> int array -> arr -> arr array
(** TODO *)

val draw : ?axis:int -> arr -> int -> arr * int array
(** TODO *)

val map : (elt -> elt) -> arr -> arr
(** TODO *)

val fold : ?axis:int -> (elt -> elt -> elt) -> elt -> arr -> arr
(** TODO *)

val scan : ?axis:int -> (elt -> elt -> elt) -> arr -> arr
(** TODO *)

val print : ?max_row:int -> ?max_col:int -> ?header:bool -> ?fmt:(elt -> string) -> arr -> unit
(** TODO *)


val abs : arr -> arr
(** TODO *)

val neg : arr -> arr
(** TODO *)

val floor : arr -> arr
(** TODO *)

val ceil : arr -> arr
(** TODO *)

val round : arr -> arr
(** TODO *)

val sqr : arr -> arr
(** TODO *)

val sqrt : arr -> arr
(** TODO *)

val log : arr -> arr
(** TODO *)

val log2 : arr -> arr
(** TODO *)

val log10 : arr -> arr
(** TODO *)

val exp : arr -> arr
(** TODO *)

val sin : arr -> arr
(** TODO *)

val cos : arr -> arr
(** TODO *)

val tan : arr -> arr
(** TODO *)

val sinh : arr -> arr
(** TODO *)

val cosh : arr -> arr
(** TODO *)

val tanh : arr -> arr
(** TODO *)

val asin : arr -> arr
(** TODO *)

val acos : arr -> arr
(** TODO *)

val atan : arr -> arr
(** TODO *)

val asinh : arr -> arr
(** TODO *)

val acosh : arr -> arr
(** TODO *)

val atanh : arr -> arr
(** TODO *)

val min : ?axis:int -> arr -> arr
(** TODO *)

val max : ?axis:int -> arr -> arr
(** TODO *)

val sum : ?axis:int -> arr -> arr
(** TODO *)

val sum_reduce : ?axis:int array -> arr -> arr
(** TODO *)

val signum : arr -> arr
(** TODO *)

val sigmoid : arr -> arr
(** TODO *)

val relu : arr -> arr
(** TODO *)

val min' : arr -> elt
(** TODO *)

val max' : arr -> elt
(** TODO *)

val sum' : arr -> elt
(** TODO *)

val l1norm' : arr -> elt
(** TODO *)

val l2norm' : arr -> elt
(** TODO *)

val l2norm_sqr' : arr -> elt
(** TODO *)

val clip_by_value : ?amin:elt -> ?amax:elt -> arr -> arr
(** TODO *)

val clip_by_l2norm : elt -> arr -> arr
(** TODO *)

val pow : arr -> arr -> arr
(** TODO *)

val scalar_pow : elt -> arr -> arr
(** TODO *)

val pow_scalar : arr -> elt -> arr
(** TODO *)

val atan2 : arr -> arr -> arr
(** TODO *)

val scalar_atan2 : elt -> arr -> arr
(** TODO *)

val atan2_scalar : arr -> elt -> arr
(** TODO *)

val add : arr -> arr -> arr
(** TODO *)

val sub : arr -> arr -> arr
(** TODO *)

val mul : arr -> arr -> arr
(** TODO *)

val div : arr -> arr -> arr
(** TODO *)

val add_scalar : arr -> elt -> arr
(** TODO *)

val sub_scalar : arr -> elt -> arr
(** TODO *)

val mul_scalar : arr -> elt -> arr
(** TODO *)

val div_scalar : arr -> elt -> arr
(** TODO *)

val scalar_add : elt -> arr -> arr
(** TODO *)

val scalar_sub : elt -> arr -> arr
(** TODO *)

val scalar_mul : elt -> arr -> arr
(** TODO *)

val scalar_div : elt -> arr -> arr
(** TODO *)

val is_zero : arr -> bool
(** TODO *)

val is_positive : arr -> bool
(** TODO *)

val is_negative : arr -> bool
(** TODO *)

val is_nonpositive : arr -> bool
(** TODO *)

val is_nonnegative : arr -> bool
(** TODO *)

val equal : arr -> arr -> bool
(** TODO *)

val not_equal : arr -> arr -> bool
(** TODO *)

val less : arr -> arr -> bool
(** TODO *)

val greater : arr -> arr -> bool
(** TODO *)

val less_equal : arr -> arr -> bool
(** TODO *)

val greater_equal : arr -> arr -> bool
(** TODO *)

val elt_equal : arr -> arr -> arr
(** TODO *)

val elt_not_equal : arr -> arr -> arr
(** TODO *)

val elt_less : arr -> arr -> arr
(** TODO *)

val elt_greater : arr -> arr -> arr
(** TODO *)

val elt_less_equal : arr -> arr -> arr
(** TODO *)

val elt_greater_equal : arr -> arr -> arr
(** TODO *)

val elt_equal_scalar : arr -> elt -> arr
(** TODO *)

val elt_not_equal_scalar : arr -> elt -> arr
(** TODO *)

val elt_less_scalar : arr -> elt -> arr
(** TODO *)

val elt_greater_scalar : arr -> elt -> arr
(** TODO *)

val elt_less_equal_scalar : arr -> elt -> arr
(** TODO *)

val elt_greater_equal_scalar : arr -> elt -> arr
(** TODO *)

val approx_equal : ?eps:float -> arr -> arr -> bool
(** TODO *)

val approx_equal_scalar : ?eps:float -> arr -> elt -> bool
(** TODO *)

val approx_elt_equal : ?eps:float -> arr -> arr -> arr
(** TODO *)

val approx_elt_equal_scalar : ?eps:float -> arr -> elt -> arr
(** TODO *)

val conv1d : ?padding:padding -> arr -> arr -> int array -> arr
(** TODO *)

val conv2d : ?padding:padding -> arr -> arr -> int array -> arr
(** TODO *)

val conv3d : ?padding:padding -> arr -> arr -> int array -> arr
(** TODO *)

val transpose_conv2d : ?padding:padding -> arr -> arr -> int array -> arr
(** TODO *)

val max_pool1d : ?padding:padding -> arr -> int array -> int array -> arr
(** TODO *)

val max_pool2d : ?padding:padding -> arr -> int array -> int array -> arr
(** TODO *)

val max_pool3d : ?padding:padding -> arr -> int array -> int array -> arr
(** TODO *)

val avg_pool1d : ?padding:padding -> arr -> int array -> int array -> arr
(** TODO *)

val avg_pool2d : ?padding:padding -> arr -> int array -> int array -> arr
(** TODO *)

val avg_pool3d : ?padding:padding -> arr -> int array -> int array -> arr
(** TODO *)

val conv1d_backward_input : arr -> arr -> int array -> arr -> arr
(** TODO *)

val conv1d_backward_kernel : arr -> arr -> int array -> arr -> arr
(** TODO *)

val conv2d_backward_input : arr -> arr -> int array -> arr -> arr
(** TODO *)

val conv2d_backward_kernel : arr -> arr -> int array -> arr -> arr
(** TODO *)

val conv3d_backward_input : arr -> arr -> int array -> arr -> arr
(** TODO *)

val conv3d_backward_kernel : arr -> arr -> int array -> arr -> arr
(** TODO *)

val transpose_conv2d_backward_input : arr -> arr -> int array -> arr -> arr
(** TODO *)

val transpose_conv2d_backward_kernel : arr -> arr -> int array -> arr -> arr
(** TODO *)

val max_pool1d_backward : padding -> arr -> int array -> int array -> arr -> arr
(** TODO *)

val max_pool2d_backward : padding -> arr -> int array -> int array -> arr -> arr
(** TODO *)

val max_pool3d_backward : padding -> arr -> int array -> int array -> arr -> arr
(** TODO *)

val avg_pool1d_backward : padding -> arr -> int array -> int array -> arr -> arr
(** TODO *)

val avg_pool2d_backward : padding -> arr -> int array -> int array -> arr -> arr
(** TODO *)

val avg_pool3d_backward : padding -> arr -> int array -> int array -> arr -> arr
(** TODO *)

val row_num : arr -> int
(** TODO *)

val col_num : arr -> int
(** TODO *)

val row : arr -> int -> arr
(** TODO *)

val rows : arr -> int array -> arr
(** TODO *)

val copy_row_to : arr -> arr -> int -> unit
(** TODO *)

val copy_col_to : arr -> arr -> int -> unit
(** TODO *)

val dot : arr -> arr -> arr
(** TODO *)

val inv : arr -> arr
(** TODO *)

val trace : arr -> elt
(** TODO *)

val transpose : ?axis:int array -> arr -> arr
(** TODO *)

val to_rows : arr -> arr array
(** TODO *)

val of_rows : arr array -> arr
(** TODO *)

val of_array : elt array -> int array -> arr
(** TODO *)

val of_arrays : elt array array -> arr
(** TODO *)

val float_to_elt : float -> elt
(** TODO *)

val elt_to_float : elt -> float
(** TODO *)



module Scalar : sig

  val add : elt -> elt -> elt
  val sub : elt -> elt -> elt
  val mul : elt -> elt -> elt
  val div : elt -> elt -> elt
  val pow : elt -> elt -> elt
  val atan2 : elt -> elt -> elt
  val abs : elt -> elt
  val neg : elt -> elt
  val sqr : elt -> elt
  val sqrt : elt -> elt
  val exp : elt -> elt
  val log : elt -> elt
  val log2 : elt -> elt
  val log10 : elt -> elt
  val signum : elt -> elt
  val floor : elt -> elt
  val ceil : elt -> elt
  val round : elt -> elt
  val sin : elt -> elt
  val cos : elt -> elt
  val tan : elt -> elt
  val sinh : elt -> elt
  val cosh : elt -> elt
  val tanh : elt -> elt
  val asin : elt -> elt
  val acos : elt -> elt
  val atan : elt -> elt
  val asinh : elt -> elt
  val acosh : elt -> elt
  val atanh : elt -> elt
  val relu : elt -> elt
  val sigmoid : elt -> elt

end


val to_dot : attr Owl_graph.node list -> string
(** TODO *)

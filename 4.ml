(* プログラミングの基礎 ４章 *)

(* 4.1 *)
(* 目的 年数に応じた時給の計算 *)
(* jikyu : int -> int *)
let kihon_jikyu = 850
let up_jikyu = 100
let jikyu x = kihon_jikyu + up_jikyu * x

(* 目的 給与の計算 *)
(* baito_kyuyo : int -> int -> int *)
let baito_kyuyo nensu jikan = jikyu nensu * jikan
(* test *)
let test_baito_kyuyo = baito_kyuyo 1 10 = 9500

(* 4.2 *)
(* 目的 名前から自己紹介文つくる *)
(* jikosyokai : string -> string*)
let jikosyokai x = "My name is "^x^"."
(* test *)
let test_jikosyokai = jikosyokai "Takashi" = "My name is Takashi."

(* 4.3 *)
(* 目的 身長(m)から標準体重を出す *)
(* hyojun_taiju : float -> float*)
let hyojun_taiju x = x ** 2. *. 22.
(* test *)
let test_hyojun_taiju = hyojun_taiju 1.7 =  63.579999999999991


(* 4.4 *)
(* 目的 身長と体重からBMI指数を出す *)
(* bmi : float -> float -> float *)
let bmi x y = y /. x ** 2.
(* test *)
let test_bmi = bmi 1.7 60. = 20.761245674740486
let test_bmi_2 = bmi 1.7 (hyojun_taiju 1.7) = 22.

(* 4.6 *)
let ashi_tsuru = 2
let ashi_kame = 4
(* 目的 動物の足の数と頭数から足の本数の合計を出す *)
(* nanika_no_ashi : int -> int -> int *)
let nanika_no_ashi x y = x * y 
(* test *)
let test_nanika_no_ashi = nanika_no_ashi 2 10 = 20

(* 目的 鶴の持つ足の数と頭数から足の本数の合計を出す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi = nanika_no_ashi ashi_tsuru

(* 目的 亀の持つ足の数と頭数から足の本数の合計を出す *)
(* kame_no_ashi : int -> int *)
let kame_no_ashi = nanika_no_ashi ashi_kame

(* 4.7 *)
(* 目的 鶴と亀の数から足の本数の合計を出す *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi x y = tsuru_no_ashi x + kame_no_ashi y
(* test *)
let test_tsurukame_no_ashi = tsurukame_no_ashi 1 2 = 10

(* 4.8 *)
(* 目的 動物１の足の数、動物２の足の数、動物１、２の数の合計、足の本数の合計から動物１の数を出す *)
(* calc_animal_1 : int -> int -> int -> int -> int *)
let calc_animal_1 a b x y = (b * x - y) / (b - a)
(* test *)
let test_calc_animal_1 = calc_animal_1 2 4 5 18 = 1

(* 目的 鶴亀の数の合計、鶴亀の足の本数の合計から鶴の数を出す *)
(* tsurukame : int -> int -> int *)
let tsurukame x y = calc_animal_1 ashi_tsuru ashi_kame x y
let test_tsurukame = tsurukame (4+5) (tsurukame_no_ashi 4 5) = 4

(* プログラミングの基礎 ４章 *)

(* 5.2 *)
(* 目的 時間を受け取ったら午前か午後か返す *)
(* jikan : int -> String *)
let jikan x = if x < 12 then "午前" else "午後"

let test_jikan0 = jikan 0 = "午前"
let test_jikan11 = jikan 11 = "午前"
let test_jikan12 = jikan 12 = "午後"
let test_jikan23 = jikan 23 = "午後"

(* 5.3 *)
(* 目的 誕生日(月と日)を受け取ったら星座を返す *)
(* seiza : int -> int -> String *)
let seiza x y =
    if x = 12 && y >= 22 || x = 1 && y <= 20 then "山羊座" else
    if x = 1 && y >= 21 || x =  2 && y <= 18 then "水瓶座" else
    if x = 2 && y >= 19 || x = 3  && y <= 20 then "うお座" else
    if x = 3 && y >= 21 || x = 4  && y <= 20 then "牡羊座" else
    if x = 4 && y >= 21 || x = 5  && y <= 21 then "牡牛座" else
    if x = 5 && y >= 22 || x = 6  && y <= 21 then "ふたご座" else
    if x = 6 && y >= 22 || x = 7  && y <= 22 then "かに座" else
    if x = 7 && y >= 23 || x = 8  && y <= 22 then "しし座" else
    if x = 8 && y >= 23 || x = 9  && y <= 23 then "おとめ座" else
    if x = 9 && y >= 24 || x = 10  && y <= 23 then "てんびん座" else
    if x = 10 && y >= 24 || x = 11  && y <= 22 then "さそり座" else
    "いて座" 

let test_seiza1 = seiza 1 1 = "山羊座"
let test_seiza2 = seiza 1 20 = "山羊座"
let test_seiza3 = seiza 1 21 = "水瓶座"
let test_seiza4 = seiza 2 18 = "水瓶座"
let test_seiza5 = seiza 2 19 = "うお座"
let test_seiza6 = seiza 3 20 = "うお座"
let test_seiza7 = seiza 3 21 = "牡羊座"
let test_seiza8 = seiza 4 20 = "牡羊座"
let test_seiza9 = seiza 4 21 = "牡牛座"
let test_seiza10 = seiza 5 21 = "牡牛座"
let test_seiza11 = seiza 5 22 = "ふたご座"
let test_seiza12 = seiza 6 21 = "ふたご座"
let test_seiza13 = seiza 6 22 = "かに座"
let test_seiza14 = seiza 7 22 = "かに座"
let test_seiza15 = seiza 7 23 = "しし座"
let test_seiza16 = seiza 8 22 = "しし座"
let test_seiza17 = seiza 8 23 = "おとめ座"
let test_seiza18 = seiza 9 23 = "おとめ座"
let test_seiza19 = seiza 9 24 = "てんびん座"
let test_seiza20 = seiza 10 23 = "てんびん座"
let test_seiza21 = seiza 10 24 = "さそり座"
let test_seiza22 = seiza 11 22 = "さそり座"
let test_seiza23 = seiza 11 23 = "いて座"
let test_seiza24 = seiza 12 21 = "いて座"
let test_seiza25 = seiza 12 22 = "山羊座"
let test_seiza26  = seiza 12 31 = "山羊座"


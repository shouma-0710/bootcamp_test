#　コメント
# 出力
echo "hello,world"

# 入力
read NAME
echo "Hello.$NAME!"

# 特殊テキスト
echo -e "Hello\n$NAME!" # 改行

# 変数
var="これは変数です"
var_2="これも変数です"
echo "Var_2=$var_2"

var_2="var_2が変更されました。"
echo  ${var_2}

readonly var
var="readonly varを変えてみる。"



echo "\$0（スクリプト名）: $0" # スクリプト名(ファイル名)
echo "\$1（1番目の引数）: $1" # 引数、1番目の引数を$1、2番目の引数を$2でアクセスする
echo "\$2（2番目の引数）: $2"
echo "\$#（引数の数）: $#" # スクリプトに与えた引数の数
echo "\"\$*\": \"$*\"" # 全部の引数をまとめて一つとして処理
echo "\"\$@\": \"$@\"" # 全部の引数を個別として処理
VAR="exit値は0になるはずです" 
echo $? # 直前実行したコマンドの終了値(0は成功、1は失敗)
# $$：このシェルスクリプトのプロセスID
# $!：最後に実行したバッググランドプロセスID
# シェルスクリプトの特殊文字を文字列として使う時は\を書いてから使う。

echo "1 - ${var:-wordSetInEcho1}"
echo "2 - var = ${var}"
echo "3 - ${var:=wordSeInEcho3}"
echo "4 - var = ${var}"
ubset var
echo "5 - ${var:+wordSetInEcho5}"
echo "6 - var = $var"
var="newVarValue"
echo "7 - ${var:+wordSetInEcho7}"
echo "8 - var = $var"
echo "9 = ${var:?StandarErrrorMessage}"
echo "10 - var = ${var}"
# ${var}：変数値を入れ替える
# ${var:-word}：変数がまだセットされていないか空文字の場合wordを返す。varは保存しない。
# ${var:=word}：変数がまだセットされていないか空文字の場合wordを返す。varに保存する。
# ${var:=?word}：変数がまだセットされていないか空文字列の場合置換に失敗し、スタンダードエラーにエラーを表示
# ${var:=+word}：変数がセットされている場合wordを返す。varに保存しない。
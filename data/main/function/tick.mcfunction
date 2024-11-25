#> main:tick
#
# 常時実行
#
#

## モードがチェンジされたことを検知
    execute unless score _ ModeID = MODE _ run function main:game/dtc_change_mode
## カウントダウン
    execute if score Count _ matches 0.. run function main:game/start/countdown/in_process

## [Dev] デバッグ用tick.MCF
    function dev:tick
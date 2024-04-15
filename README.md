# Target-Glowing
特定のプレイヤーしか見えない発光体を作成するデータパックライブラリ

## 使い方
```
/function aura:command/glowing {Time:"発光時間",Target:"発光させたいターゲット"}
```
発光時間の部分に発光させたいTick分の数字を入力します。20Tick=1秒です<br>
発光させたいターゲットの部分は"@e[]"のターゲットセレクター引数を入力します。

<br>

例:クリーパーを20秒間発光させたい場合

```
/function aura:command/glowing {Time:"400",Target:"type=creeper"}
```

<br>

また発光時間が無制限の発光コマンドもあります。
```
/function aura:command/glowing_infinite {Target:"発光させたいターゲット"}
```
先ほど同様に発光させたいターゲットの部分は"@e[]"のターゲットセレクター引数を入力します。
時間の入力はいりません。

<br>

例:ゾンビを無限に発光させたい場合

```
/function aura:command/glowing_infinite {Target:"type=zombie"}
```

<br>

セレクター引数のlimitが使えないためそれ専用のコマンドも用意しました(ver1.0.1)
```
/function aura:command/glowing_limit {limit:"制限したい数",Time:"発光時間",Target:"発光させたいターゲット"}
```
```
/function aura:command/glowing_infinite_limit {limit:"制限したい数",Target:"発光させたいターゲット"}
```
limitはターゲットセレクターのlimitと同様に動作します。

<br>

例:豚をを3体20秒間発光させたい場合

```
/function aura:command/glowing_limit {limit:"3",Time:"400",Target:"type=pig"}
```

<br>

また複数人に発光を見せたい場合はexecuteで実行者を複数人にしてその実行者の位置を実行場所に指定してください

<br>

例:Tag[TEST]を持っているプレイヤー全員が見えてクリーパーを20秒間発光させたい場合

```
/execute as @a[tag=TEST] at @s run function aura:command/glowing {Time:"400",Target:"type=creeper"}
```

<br>


### 注意点
この発光体はブロックディスプレイのビュー範囲を小さくしてプレイヤーの頭にTPし続けることで作成しています。
その為第三者視点では発光が見えません。
同じくプレイヤー同士が重なっている場合重なっているプレイヤーにも発光体が見えることがあります。
またversionは1.20.5以降を想定しています。それ以前だとscaleがない為エラーを吐くと思います。
1.20.4以前で使いたい場合はscaleの部分を無効化して変わりのコマンドを入れてください。

### 利用規約
Creative Commons Attribution Share Alike 4.0 International に基づいて配布します。<br>
https://creativecommons.org/licenses/by-sa/4.0/deed.ja


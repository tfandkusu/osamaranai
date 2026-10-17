---
name: impl-component
description: 共通コンポーネントを実装するスキルです。
---

# 共通コンポーネントとは

- 複数の画面で使いまわし可能な Widget

# フォルダ

- component/ フォルダ

# クラス名

- コンポーネント名と同じにする

# 継承

- StatelessWidget を継承する

# 引数

- 状態およびコールバックを引数として持つ
- Figma の見た目指定が Material のデザイントークンで表現されている場合、ハードコード値ではなく `Theme.of(context).colorScheme` などの token を優先して使う
- 外部から変更予定のない固定見た目（token で確定する色・太さなど）は不要な引数として公開しない

# レイアウト規約

- Figma 上で横幅が 320 固定となっているコンポーネントは、実装時に親要素の横幅をいっぱいに使うようにしてください。
- コンポーネント背景色の指定がない場合は、背景は透明にしてください（不要な `ColoredBox` は使わない）。
- `Text` ウィジェット単独で構成するコンポーネントは `SizedBox` で囲まない。
- 上記の `Text` 単独コンポーネントでは `maxLines: 1` や `softWrap: false` を付けない。
- Figma・Issue・ユーザー指示にない挙動（省略表示、クリップ、はみ出し対策など）は付けない。狭い親幅での見え方まで指定されていない限り、勝手に補完しない。

## `Row` 内で子の最大幅がテキスト必要幅のとき

Figma の注釈などで「最大幅は中のテキストが必要とする幅とする」旨がある子（例: `AgeAndAddressLabel`）を `Row` に並べる場合:

- 子は **`Flexible` で包む**（`fit` は省略してよい。既定の `FlexFit.loose` で、テキスト幅以上に伸びない）。
- **`Expanded` や `Expanded` + `Center` は使わない**（`FlexFit.tight` 相当になり、余白を埋めてしまう）。
- 親が広いときの見た目は **`Row` の `mainAxisAlignment: MainAxisAlignment.center`** など、行全体の配置で揃える。
- `fit: FlexFit.loose` は **`Flexible` の既定と同じなので、明示しなくてよい**（省略可否の確認だけなら、子ごと `Flexible` を外さない）。

# Widgetbook 登録

- 共通コンポーネントを追加したら Widgetbook にも登録する
- UseCase メソッドの命名は「コンポーネント名のキャメルケース + UseCase」とする
- UseCase では対象 Widget を **AppBar 付き `Scaffold` の `body` 中央**に載せる
- `AppBar` の `title` は **Widget クラス名と同じ文字列**にする
- Widget に引数がある場合、UseCase で `context.knobs` を使い **引数名と同じ `label` の Knob** を設置する

# Figma URL がある場合

- Figma URL が指定されていたら Figma MCP を使い、指定の Component を実装する
- コンポーネント名は Figma のコンポーネント名と同じにする
- `get_design_context` の **`data-annotations`（注釈）を必ず読み、レイアウト・幅・振る舞いに反映する**。注釈は子インスタンスに付くこともあるので、**親コンポーネント実装時も子の注釈を見逃さない**。
- 生成コードの `flex-1` / `Expanded` 相当は、そのまま真似せず、注釈と Flutter のレイアウト規約（上記「テキスト必要幅」など）に合わせて選び直す。

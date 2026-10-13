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

# Widgetbook 登録

- 共通コンポーネントを追加したら Widgetbook にも登録する
- UseCase メソッドの命名は「コンポーネント名のキャメルケース + UseCase」とする
- UseCase では対象 Widget を **AppBar 付き `Scaffold` の `body`** に載せる（`body` 内は `Column` + `Padding` などでよい）
- `AppBar` の `title` は **Widget クラス名と同じ文字列**にする（例: `AgeAndAddressLabel`）

# Figma URL がある場合

- Figma URL が指定されていたら Figma MCP を使い、指定の Component を実装する
- コンポーネント名は Figma のコンポーネント名と同じにする

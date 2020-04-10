# jpdfbookmarks-docker

GUI を使用する場合
---
### 前提条件
Windows 上で GUI を使用する場合は、別途 X11 Server が必要となる。たとえば、Windows 10 の場合は、X410 などの X11 Server を検討すると良い。

  - [X410](https://www.microsoft.com/ja-jp/p/x410/9nlp712zmn9q?activetab=pivot:overviewtab)

### 実行方法
X410 を使用した場合の実行例を以下に示す。  
```sh
docker run --rm -v /c/works/docker/JPdfBookmarks:/workspace -e DISPLAY=docker.for.win.localhost:0.0 hihigash/jpdfbookmarks
```

実行時に "X11" に関するエラーが表示された場合は、X410 が起動しているか、環境変数 `DISPLAY` が正しく設定されているかなどを確認すると良い。

CLI を使用する場合
---
注意 : CLI は X11 を必要としない。ただし、引数に何も指定しないと GUI 版が起動してしまうので注意すること。

### 実行方法

作業フォルダとして `/Workspace` を用意しているので、変換に必要なファイルはこのフォルダに配置すると良い。下記の例では、ホスト上の作業フォルダを /Workspace にマウントしている。

```sh
docker run --rm -v /c/works/docker/JPdfBookmarks:/workspace hihigash/jpdfbookmarks jpdfbookmarks_cli sample.pdf -a bookmark.txt -
e UTF-8 -o out.pdf
```

### Bookmark.txt 記入例

Bookmark.txt の記入例を以下に示す。

```
1. Foo/1
    1.1 Bar/2
2. Hoge/10
    2.1 Piyo/11
```

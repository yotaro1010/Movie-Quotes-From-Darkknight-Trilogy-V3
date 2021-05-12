# Movie-Quotes-From-Darkknight-Trilogy-V3



## Overview

Movie-Quotes-From-Darkknight-Trilogy-V2をリファクタリングしました。

SideMenuの他に画像キャッシングの際にNukeというライブラリを使用しました。
その他、細かく個別にディレクトリを作り、コードの可読性を高めました。

映画ダークナイト三部作から印象的なセリフを聞くことができるアプリです。
cellをタップすると、セリフごとのカードが表示され、playボタンを押すことでセリフを聞くことができます。
またこの機能の他にアプリ内セリフ検索機能とTheMovieDataBaseAPIを用いた映画検索機能を搭載しています。
TheMovieDataBase (https://www.themoviedb.org)

You can listen to some iconic quotes from movie series "the Dark Knight trilogy" with tapping collectionView cell. 
Also it has Simple mobile application that allow you to search movies with movie title. 
The data will be retrieved from TheMovieDb. See API for details.(https://www.themoviedb.org)

### Preview
Here is short GIF preview which demonstrates design and features of the App.

![movieQuotes_gif](https://user-images.githubusercontent.com/74696274/111886715-3699e880-8a13-11eb-97c6-30f6b8a7fd47.gif)

## Library used in app
SideMenu https://github.com/jonkykong/SideMenu

Nuke https://github.com/kean/Nuke

使用するとメモリリークが起きてしまうため、現在改善中(Alamofire https://github.com/Alamofire/Alamofire)


## Author
[wantedly](https://www.wantedly.com/id/yotaro_ito)
[github](https://github.com/yotaro1010)

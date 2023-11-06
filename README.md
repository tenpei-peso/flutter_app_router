ディレクトリ

└── lib/
    ├── infrastructure/ (DB 実行ファイル)
    │   ├── repository/
    │   │   ├── api/
    │   │   │   └── supabase_repo.impl
    │   │   └── local/
    │   │       └── sharedpreferences_repo.impl
    │   └── foundation/ (基盤系のインスタンスまとめ)
    │       ├── supabase/
    │       │   └── supabase_auth.dart
    │       └── sharedpreferences/
    │           └── sharedpreferences.dart
    ├── domain/ (DB アクセス関連)
    │   ├── repositorys/ (DB 実行ファイルの抽象クラス)
    │   │   ├── api/
    │   │   │   └── supabase_repo.dart
    │   │   └── local/
    │   │       └── sharedpreferences_repo.dart
    │   ├── entities/
    │   │   └── user.dart
    │   └── useCases/ (repositorysを注入し、具体的なロジックを書く)
    │       └── profile/
    │           ├── profile_notifier.dart (stateが変わるもののみ)
    │           └── profile_list.dart (他のproviderなどを使用して複雑なロジック組む場合)
    └── presentation/
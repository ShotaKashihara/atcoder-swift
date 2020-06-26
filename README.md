# atcoder-swift

## フォルダの作成
```bash
swift package init --type executable --name main
```

デバッグビルド
```
swiftc -Ounchecked -o {dirname}/a.out
```

ビルド
```
swiftc -Ounchecked -o {dirname}/a.out {dirname}/{basename}
```

テスト
```
cd ${fileDirname}
rm -f ./main
oj test -c ./main -d ./tests
```

提出
```
cd ${fileDirname}
acc s main.swift
```





/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc 
-L /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/pm/4_2 
-lPackageDescription 
-Xlinker 
-rpath 
-Xlinker /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/pm/4_2 
-swift-version 5 
-I /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/pm/4_2 
-target x86_64-apple-macosx10.10 
-sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk 
-package-description-version 5.2.0 
/Users/wantedly/Documents/git/atcoder-swift/template-package/Package.swift 
-o /var/folders/1g/mfpcs4k96y38d_bj2pl6lkg80000gn/T/TemporaryDirectory.El3pdz/template-package-manifest
/var/folders/1g/mfpcs4k96y38d_bj2pl6lkg80000gn/T/TemporaryDirectory.El3pdz/template-package-manifest 
-fileno 1 sandbox-exec -p '(version 1)
# DLTDOJO 熵熱踢道場

![DLTDOJO](dltdojo.png "DLT DOJO")

熵熱踢道場 Distributed Ledger Technology Dojo (DLTDOJO) 提供快速練習驗證分散式帳本區塊鏈概念的環境，道場設計為不需背景知識都可練習實做。

## 道場慣用字

### DLCODE 熵熱碼
DLCODE代表下面概念。

* Smart Contract
* Blockchain Smart Contract
* Distributed Ledger SmartContract
* Bitcoin Script
* Ethereum Solidity
* Hyperledger Fabric ChainCode
* Blockchain Code
* Blockchain Script
* 智能合約
* 區塊鏈智能合約
* 分散式帳本智能合約

## SETUP

### [Level1](level1) Bitcoin 比特幣轉帳

```
$ mkdir foo && cd foo
$ docker run -v $(pwd):/tmp y12docker/dltdojo build --dojo.btc 4 --name lv1
$ source lv1-alias.sh
$ dcup
...
...
$ dcend
```

### [Level2](level2) Ethereum 轉帳

如要避免實際部署網路時間，可使用--dojo.eth 2設定開啟雙點獨立開發模式，不需另外下載DAG檔，開發模式節點不互通無法做跨節點轉帳練習。

```
$ docker run -v $(pwd):/tmp y12docker/dltdojo build --dojo.eth 6 --name lv2
```

### [Level3](level3) Ethereum 資產轉移

```
$ docker run -v $(pwd):/tmp y12docker/dltdojo build --dojo.eth 6 --name lv3
```

### WIP Level4 Hyperledger Fabric 資產轉移

## 參考連結

<https://github.com/bitcoin/bitcoin>

<https://github.com/ethereum/>

<https://github.com/yeasy/docker-compose-files/tree/master/hyperledger/1.0>

<https://github.com/corda/corda>

y12docker/dltdojo - Docker Hub <https://hub.docker.com/r/y12docker/dltdojo/>

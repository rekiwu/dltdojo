### 2017-02-18T18:26:33+0800
* abe explorer http://192.168.2.73:12750/
* jornc explorer http://192.168.2.73:12751/

```
$ source alias.sh
$ dcup
$ dc ps
      Name             Command             State              Ports
-------------------------------------------------------------------------
dcblockcerts_abe   /start.sh          Up                 0.0.0.0:12750->1
_1                                                       2750/tcp
dcblockcerts_btc   /start.sh          Up                 18332/tcp,
boot_1                                                   18333/tcp
dcblockcerts_cer   /entrypoint.sh     Up                 18332/tcp,
t_1                /start.sh                             18333/tcp,
                                                         18444/tcp,
                                                         8332/tcp,
                                                         8333/tcp
dcblockcerts_jor   /docker-           Up                 0.0.0.0:12751->8
exp_1              entrypoint.sh                         080/tcp
                   /sta ...

$ dc exec cert bitcoin-cli generate 5
[
  "00e5382212d117ef705a7d33dd917ebb47c012d89a491ace3421c39a5867b87b",
  "0e5936e9ea5094c8ad947ff59c802ab33db98e37ee051fc9566243b1eefc50c5",
  "0612fb4bb4a8b508aada88c68af6454697275a9c939ea7846774335ff8f372a3",
  "58dc34c43334e76206044701ad4a17c83c8b86d57751ebca7f16fa37cc89bb33",
  "24ad6c62d766d319804f0e26b14a507a3526c1026783f2617142aade2bba41f8"
]
$ dc exec btcboot bitcoin-cli generate 5
[
  "1c840e3b8d7c17e9942940d31694cebabc5bafead0f3ad7eaca1e141c35ec7cc",
  "55dbc452a10efe5891e064443bdbd7516be8c264741b082fe76cfecdef00b338",
  "5a2c2faa46e26affa6d32379f3ae835732e002fb256d34d154a361a56504a047",
  "797de1ba3c3179005f4b885745d2a1be948cf86dcc86f9baed9782bc148b957a",
  "69a5077f51580e216cb5adc756600373478f912ab6fa1153b958eccaf3577892"
]
$ dcstop
```
### 2017-02-18T18:13:24+0800
```
$ docker build -t y12docker/dltdojo-blockcerts .
$ docker run -it --rm y12docker/dltdojo-blockcerts /start.sh
bash-4.3# cat /etc/cert-issuer/data/blockchain_certificates/6c6bd2ec-d0d6-41a9-bec8-57bb904c62a8.json  | jq .
..
"receipt": {
  "type": "ChainpointSHA256v2",
  "targetHash": "4e47886ef05f5ad36a06bfa175b566b08db5d48315fd15e120a23a07a7dacae5",
  "merkleRoot": "4e47886ef05f5ad36a06bfa175b566b08db5d48315fd15e120a23a07a7dacae5",
  "proof": [],
  "anchors": [
    {
      "type": "BTCOpReturn",
      "sourceId": "7e73ce4d0e7d3508d37f743eba346bac9cbc11d6b3bc84a22f3f245cf97e9846"
    }
  ],
  "@context": "https://w3id.org/chainpoint/v2"
}
```
### 2017-02-18T17:07:00+0800
```
$ docker build -t y12docker/dltdojo-blockcerts .
$ docker run -it --rm y12docker/dltdojo-blockcerts /start.sh
Bitcoin server starting
Issuer Address=mg7U53Nimc2B4511Zz4bo4MHTEJ7mpuDLv
Revocation Address=mqkrCrn5xBJxB9nu5DqVJhGBeixiiAd8vX
[
  "136c5ead191ab38631cba4d60b88f48f6a5936672d2b433ffa1b6c6002ce5fba",
  "4b3832fbad8c8f513592be5414afe8873e729b5d809a08cc020c03bef4fa5b5c",
  "216f7b356f2c9c331162802478da14a555ad205285f66b4db674e5695fc93c85",
  "4ddc786d6f1a96fb0e6cfcf4ba5b74adbac7bcded1b78e4e5f789c1509016de1",
  "1341fb1415b5d6c69f160f54061fd5ff23d70b325a5b537d280da470de8d0e99",
  "4a859d8aae2af2db98626588a4c31b0d31dce2c6b72cb684de0ea2d967d0de0a",
  "74ae2f4cc0cd10d7fe0cf4c3266992af60ce9205e4bc3ee0bb139f42d99ab2bb",
  "758dd18a5c378e34f0c948048afbb25f082e47a0b878fdd6e25d471711c20079",
  "094ab1749ba4444537ea420ca4c5aeef3f03f8feafcd10a7ae11122732b8f2ea",
  "79b5021fcda7d923e00ecfb13f13fd4c6f003d3b495ba4d13b93da3494e27291",
....
  "0e721f546275c55d277453f570ebc25bbded23b2df751d21908e39f8095bdf75",
  "59e622afe6ab3c20369a2127ce9be3ee04f3b5ffeb4c750b872e08eee23d538f",
  "4d9b88493ae4e59fcc8cfc947196e8af7c1a65d4dcc8b50b419ed0f1710679bc",
  "0bc986531ceeea84e47442ad786196dc6edc92c134024db864d5c12ddb31a86a",
  "5b18be16d8e442d392c445fc8da4bcf76afdf3ab53944b1b37edcf35684d530b",
  "316f31881e41d87ce6dbb5e10b4589bdf6125bfd380c9fd6931703c9b6bf6378",
  "508579daafda7c03a497e6d6b3f046b3f3c5e09c62aa535fa37d89dc74588421"
]
3f6bad7083c1830eef5e188a3b7c999411ac70e8e2a0f8e41b325f99d2280919
[
  "24c4f74e876a9e6513581cd13e43a7ba2bc99547d08970aa0048b1a8a3e960cf"
]
bash-4.3# cd /cert-issuer/ && cert-signer -c /etc/cert-issuer/conf.ini
INFO:root:Processing 1 certificates
INFO - Processing 1 certificates
INFO:root:Signing certificates and writing to folder /etc/cert-issuer/data/signed_certificates
INFO - Signing certificates and writing to folder /etc/cert-issuer/data/signed_certificates
INFO:root:signing certificates
INFO - signing certificates
INFO:root:Signed certificates are in folder /etc/cert-issuer/data/signed_certificates
INFO - Signed certificates are in folder /etc/cert-issuer/data/signed_certificates
# cert-issuer -c /etc/cert-issuer/conf.ini

INFO:root:Finished signing transaction
INFO - Finished signing transaction
INFO:root:The actual transaction size is 336 bytes
INFO - The actual transaction size is 336 bytes
INFO:root:verifying op_return value for transaction
INFO - verifying op_return value for transaction
INFO:root:verified OP_RETURN
INFO - verified OP_RETURN
INFO:root:Broadcast transaction with txid 42ab0ae97329d9bfbc79610c89b0c54e4820a55afa5cd993511b83a931a39b69
INFO - Broadcast transaction with txid 42ab0ae97329d9bfbc79610c89b0c54e4820a55afa5cd993511b83a931a39b69
INFO:root:Your Blockchain Certificates are in /etc/cert-issuer/data/blockchain_certificates
INFO - Your Blockchain Certificates are in /etc/cert-issuer/data/blockchain_certificates

# ls /etc/cert-issuer/data/blockchain_certificates
6c6bd2ec-d0d6-41a9-bec8-57bb904c62a8.json
# cat /etc/cert-issuer/data/blockchain_certificates/6c6bd2ec-d0d6-41a9-bec8-57bb904c62a8.json
```

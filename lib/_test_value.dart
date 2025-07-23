// https://jlopp.github.io/xpub-converter

class TestValue {
  // XPUB
  static get xpub =>
      'xpub6DJwRncrB8eNrzUq8XxgjwCZsEeWP8FeqBJbJQZ8JfuDwLdAzyjhHiHJieNuar1wjQTyihhMWtaKGE4DUd8uBgtyrNJqF5drwbNVUqb83b7';
  static get xpubFingerprint => '2bcd33b0';
  // conversions to other formats
  static get xpubToYpub =>
      'ypub6Y9CjTHmKpBriHfwxtkJx2J53CnxKkF9kHpp5oT1ggH6zSSQFduFumwSjrLVakfs93anUBHuyYvs9WfnCKYuyvaaii1FpzTMDKS8sVJo82W';
  static get xpubToZpub =>
      'zpub6ryU37xgUVjLZas4oFXwA7PaDAwQGNEefQM2sCLu4gez3YFdWJ4pXqbam4J5afKnYghbDetUSDHR2oHLv1xvnAGBb3hgQuGqV3VnG2rvas6';
  static get xpubToTpub =>
      'tpubDDgZx2SXtQbq8nfgaiwmwrXwCMkANWkiNottexcGeaf7gdHt5CanS9x8xgTh7LyBXJztLHDE3zQMxQYpsUz958MGuy48vcJ6XYxuEuPJAHp';
  static get xpubToUpub =>
      'upub5Ep9Wnc6j61wK6uUdTbp7fv4MLDAZGHA5qjvxDsUAeman3BVF1F1RXJtf2W9b84BWV7ZUGug8uWfcNDXKXtrnyrBFMDZVMBQ8RBZK5eWL4r';
  static get xpubToVpub =>
      'vpub5ZeQpTH1smZRAQ6bTpPSKm1ZXJMcVtGezxG9jcmMYf9Tq8ziVfQa3ay2gETjb2i6v8ENDkWEbZsDVeq63EJsbDXn7guz5FztQ9FChkr8jdA';

  // YPUB
  static get ypub =>
      'ypub6XepkBPvLjJ2P2XHVUEoYfYBUaHwg39ESnmxbs6UFHwk6rRAjanUahAm6cnmEBRytL2bvE7BZ7XpyDz9DP86yaReJNRD3KfVdCQM5YZ6LEs';
  static get ypubToXpub =>
      'xpub6CpZSWj1C3kYXjLAf7TBLaSgJc9VjR9jXgFjpUCasHZs3kbwUvcuxdWd5QqBEGn4UguoAkWd6TBH5wNaVgi6BLk3S2inTQr1MULhgxnrxKW';
  static get ypubFingerprint => 'ecd6654c';

  // ZPUB
  static get zpub =>
      'zpub6ro6vd6Cn6apSQsrXVTE8d6UkygMYj1eAoXW9yUwbE2c1sfSQw2sEMyA4gGtxMpHv64NkoJdSYR7aEnJgUNNoQw7QZnys1vZ1qefVwPVc8T';
  static get zpubToXpub =>
      'xpub6D8aKHkNUjVrjpVcrmsyiSuUR3PTfV2eLaV4bBhAqDGqug2yuchjzEet2GMixYWT6opmFr7WXDi1ofZBF5YMCwZuftQ8hCHaUPXNiqfJvLs';
  static get zpubFingerprint => 'f6c41dd4';

  // Descriptor
  static get walletMasterFingerprint => '86241f88';
  static get descriptorP2pkhBip44 =>
      'pkh([$walletMasterFingerprint/44h/0h/0h]$xpub/<0;1>/*)#fzh6clmf';
  static get descriptorP2shBip49 =>
      'sh(wpkh([$walletMasterFingerprint/49h/0h/0h]$xpub/<0;1>/*))#6nkjq52v';
  static get descriptorP2wpkhBip84 =>
      'wpkh([$walletMasterFingerprint/84h/0h/0h]$xpub/<0;1>/*)#ht0s3dna';

  static get descriptorChangeOnly =>
      'sh(wpkh([$walletMasterFingerprint/49h/0h/0h]/$xpub/1/*))';

  // Bitcoin
  static get mainnetP2PKH => '17VZNX1SN5NtKa8UQFxwQbFeFc3iqRYhem';
  static get mainnetP2SH => '3EktnHQD7RiAE6uzMj2ZifT9YgRrkSgzQX';
  static get mainnetBech32 => 'bc1qw508d6qejxtdg4y5r3zarvary0c5xw7kv8f3t4';

  static get testnetP2PKH => 'mipcBbFg9gMiCh81Kj8tqqdgoZub1ZJRfn';
  static get testnetP2SH => '2MzQwSSnBHWHqSAqtTVQ6v47XtaisrJa1Vc';
  static get testnetBech32 => 'tb1qw508d6qejxtdg4y5r3zarvary0c5xw7kxpjzsx';

  static get btcWifUncompressed =>
      '5Hwgr3u458GLafKBgxtssHSPqJnYoGrSzgQsPwLFhLNYskDPyyA';
  static get btcWifElectrumDeprecatedUncompressed =>
      '5TfQjD9DLFeUFmDiDrzsdtSGQss93o4pvsmQcgmjfcQVLsEgAoM';

  static get btcWifCompressed =>
      'L1aW4aubDFB7yfras2S1mN3bqg9nwySY8nkoLmJebSLD5BWv3ENZ';
  static get btcWifElectrumDeprecatedCompressed =>
      'LkUevPi661korFvRdQQUkEX35rA484oAwzsT93383q6mUqVe5cw2';
  static get btcWifElectrumDeprecatedCompressedAlt =>
      'M3dv4iRtSKb5oHwxjZCGLai1aiZMnuLdGt7iFwjK2ncC3Vu7tRwP';

  static get testnetWifUncompressed =>
      '92Pg46rUhgTT7romnV7iGW6W1gbGdeezqdbJCzShkCsYNzyyNcc';
  static get testnetWifCompressed =>
      'cNJFgo1driFnPcBdBX8BrJrpxchBWXwXCvNH5SoSkdcF6JXXwHMm';

  // Bitcoin Extended Keys
  static get btcXpub =>
      'xpub661MyMwAqRbcEYS8w7XLSVeEsBXy79zSzH1J8vCdxAZningWLdN3zgtU6LBpB85b3D2yc8sfvZU521AAwdZafEz7mnzBBsz4wKY5e4cp9LB';
  static get btcXprv =>
      'xprv9s21ZrQH143K24Mfq5zL5MhWK9hUhhGbd45hLXo2Pq2oqzMMo63oStZzF93Y5wvzdUayhgkkFoicQZcP3y52uPPxFnfoLZB21Teqt1VvEHx';
  static get testnetTpub =>
      'tpubD6NzVbkrYhZ4WLczPJWReQycCJdd6YVWXubbVUFnJ5KgU5MDQrD998ZJLNGbhd2pq7ZtDiPYTfJ7iBenLVQpYgSQqPjUsQeJXH8VQ8xA67D';
  static get testnetTprv =>
      'tprv8ZgxMBicQKsPcsbCVeqqF1KVdH7gwDJbxbzpCxDUsoXHdb6SnTPYxdwSAKDC6KKJzv7khnNWRAJQsRA8BBQyiSfYnRt6zuu4vZQGKjeW4YF';

  // Liquid Addresses
  static get liquidAddressMain =>
      'lq1qq0r7uz2f8csrfnr2a4pseszaugm4fefuf6kr0sw0vpk4p5uvfe9yvtg8w8ayllvg7hd39dk6wsma6jvcwyd8sfyk485w25282';

  // Lightning Invoices
  static get bolt11 =>
      'lnbc10u1p59tufasp53yuqahahgct058zglxvhezp9nyz5fvt2kn2lsl6mg9qgsts8c72spp56hym2dpcyy0878h7q5h4t30cwclp9vd0tqpn4dns0a3mmspzkh9qdqqxqyp2xqcqz95rzjqg2n4jluz7ty6mn96krzje43zm7ylttjvcxcccg99tmm30s6lm4d6zzxeyqq28qqqqqqqqqqqqqqq9gq2y9qyysgqpmw883kkclyxpr2u8mg9pl47909yhtt83pjvt3qz3s9puyf39vdp4ar7zu47r4mfawkc2s99vm292udx9n3s5fnrjyngnsxkxn2l60qpn65s0t';

  // BIP21 URIs
  static get bip21UriBasic => 'bitcoin:$mainnetBech32';
  static get bip21UriWithAmount => 'bitcoin:$mainnetBech32?amount=0.001';
  static get liquidUriBasic => 'liquidnetwork:$liquidAddressMain';

  // PSBT
  static get psbtBase64 =>
      r'cHNidP8BAHsCAAAAAhuVpgVRdOxkuC7wW2rvw4800OVxl+QCgezYKHtCYN7GAQAAAAD/////HPTH9wFgyf4iQ2xw4DIDP8t9IjCePWDjhqgs8fXvSIcAAAAAAP////8BigIAAAAAAAAWABTHctb5VULhHvEejvx8emmDCtOKBQAAAAAAAAAA';

  // Standard Cases
  static get bitcoinSegwitUppercase =>
      'BC1QQPUEY8TZEUFG5DPJUF37XHNVEMKFAAHN6ZN2UQ';
  static get bitcoinSegwitLowercase =>
      'bc1qqpuey8tzeufg5dpjuf37xhnvemkfaahn6zn2uq';
  static get bitcoinLegacy => '1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa';
  static get bitcoinCompatible => '34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo';
  static get liquidSegwitUppercase =>
      'LQ1QQTCDJZVADW7YHHZ6KGN9UMLE7Z5A4DTCQYZRD0NNF8M4LH7M6WSHG8KALP4E23DRWG6XSW2CXNERWQY9SWYSC85CJVLUTMD80';
  static get liquidSegwitLowercase =>
      'lq1qqtcdjzvadw7yhhz6kgn9umle7z5a4dtcqyzrd0nnf8m4lh7m6wshg8kalp4e23drwg6xsw2cxnerwqy9swysc85cjvlutmd80';
  static get liquidCompatible =>
      'VJLJfVwTNyxCVtHNg1hdFCNf2urE3qUigKGxJifWdbGvv685GLYAB25v8zsT26v8XxWcne9opyZXihTo';
  static get bolt11Uppercase =>
      'LNBC2500U1PVJLUEZSP5ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYGSPP5QQQSYQCYQ5RQWZQFQQQSYQCYQ5RQWZQFQQQSYQCYQ5RQWZQFQQQSYQCYQ5RQWZQFQYPQDQ5XYSXXATSYPG3K7ENXV4JSXQZPU9QRSGQUK0RL77NJ30YXDY8J9VDX85FKPMDLA2087NE0XH8NHEDH8W27KYKEE0LP53UT353S06FV3QFEHEXT0EH0YMJPF39TUVEN09SAM30G4VGPFNA3RH';
  static get bolt11Lowercase =>
      'lnbc2500u1pvjluezsp5zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zygspp5qqqsyqcyq5rqwzqfqqqsyqcyq5rqwzqfqqqsyqcyq5rqwzqfqypqdq5xysxxatsyp3k7enxv4jsxqzpu9qrsgquk0rl77nj30yxdy8j9vdx85fkpmdla2087ne0xh8nhedh8w27kyke0lp53ut353s06fv3qfegext0eh0ymjpf39tuven09sam30g4vgpfna3rh';
  static get lnurlUppercase =>
      'LNURL1DP68GURN8GHJ7ER9D4HJUMRWVF5HGUEWVDHK6TMHD96XSERJV9MJ7CTSDYHHVVF0D3H82UNV9AVYS6ZV899XS4J6WFYRV6Z9TQU4GUT9VF48SWY20AR';
  static get lnurlLowercase =>
      'lnurl1dp68gurn8ghj7er9d4hjumrwvf5hguewvdhk6tmhd96xserjv9mj7ctsdyhhvvf0d3h82unv9avys6zv899xs4j6wfyrv6z9tqu4gut9vf48swy20ar';
  static get lnAddressUppercase => 'ISHI@WALLETOFSATOSHI.COM';
  static get lnAddressLowercase => 'ishi@walletofsatoshi.com';

  // BIP21 Bitcoin URIs
  static get bip21BitcoinSegwitLowercaseAmountLabel =>
      'bitcoin:bc1qqpuey8tzeufg5dpjuf37xhnvemkfaahn6zn2uq?amount=0.0001&label=x';
  static get bip21BitcoinSegwitLowercaseAmountOnly =>
      'bitcoin:bc1qqpuey8tzeufg5dpjuf37xhnvemkfaahn6zn2uq?amount=0.0001';
  static get bip21BitcoinSegwitLowercaseLabelOnly =>
      'bitcoin:bc1qqpuey8tzeufg5dpjuf37xhnvemkfaahn6zn2uq?label=x';
  static get bip21BitcoinSegwitLowercaseBasic =>
      'bitcoin:bc1qqpuey8tzeufg5dpjuf37xhnvemkfaahn6zn2uq';
  static get bip21BitcoinSegwitUppercaseAmountLabel =>
      'BITCOIN:BC1QQPUEY8TZEUFG5DPJUF37XHNVEMKFAAHN6ZN2UQ?amount=0.0001&label=x';
  static get bip21BitcoinSegwitUppercaseAmountOnly =>
      'BITCOIN:BC1QQPUEY8TZEUFG5DPJUF37XHNVEMKFAAHN6ZN2UQ?amount=0.0001';
  static get bip21BitcoinSegwitUppercaseLabelOnly =>
      'BITCOIN:BC1QQPUEY8TZEUFG5DPJUF37XHNVEMKFAAHN6ZN2UQ?label=x';
  static get bip21BitcoinSegwitUppercaseBasic =>
      'BITCOIN:BC1QQPUEY8TZEUFG5DPJUF37XHNVEMKFAAHN6ZN2UQ';
  static get bip21BitcoinLegacyAmountLabel =>
      'bitcoin:1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa?amount=0.0001&label=x';
  static get bip21BitcoinLegacyAmountOnly =>
      'bitcoin:1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa?amount=0.0001';
  static get bip21BitcoinLegacyLabelOnly =>
      'bitcoin:1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa?label=x';
  static get bip21BitcoinLegacyBasic =>
      'bitcoin:1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa';
  static get bip21BitcoinCompatibleAmountLabel =>
      'bitcoin:34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo?amount=0.0001&label=x';
  static get bip21BitcoinCompatibleAmountOnly =>
      'bitcoin:34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo?amount=0.0001';
  static get bip21BitcoinCompatibleLabelOnly =>
      'bitcoin:34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo?label=x';
  static get bip21BitcoinCompatibleBasic =>
      'bitcoin:34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo';
  static get bip21BitcoinSegwitAmountLabelMessage =>
      'bitcoin:BC1QYLH3U67J673H6Y6ALV70M0PL2YZ53TZHVXGG7U?amount=0.00001&label=sbddesign%3A%20For%20lunch%20Tuesday&message=For%20lunch%20Tuesday';
  static get bip21BitcoinSegwitAmountMessage =>
      'bitcoin:BC1QYLH3U67J673H6Y6ALV70M0PL2YZ53TZHVXGG7U?amount=0.00001&message=For%20lunch%20Tuesday';
  static get bip21BitcoinSegwitLabelMessage =>
      'bitcoin:BC1QYLH3U67J673H6Y6ALV70M0PL2YZ53TZHVXGG7U?label=sbddesign%3A%20For%20lunch%20Tuesday&message=For%20lunch%20Tuesday';
  static get bip21BitcoinSegwitMessageOnly =>
      'bitcoin:BC1QYLH3U67J673H6Y6ALV70M0PL2YZ53TZHVXGG7U?message=For%20lunch%20Tuesday';

  // BIP21 Liquid URIs
  static get bip21LiquidSegwitUppercaseAmountLabel =>
      'liquidnetwork:LQ1QQTCDJZVADW7YHHZ6KGNG9UMLE7Z5A4DTCQYZRD0NNF8M4LH7M6WSHG8KALP4E23DRWG6XSW2CXNERWQY9SWYSC85CJVLUTMD80?amount=0.0001&assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d&label=x';
  static get bip21LiquidSegwitUppercaseAmountOnly =>
      'liquidnetwork:LQ1QQTCDJZVADW7YHHZ6KGNG9UMLE7Z5A4DTCQYZRD0NNF8M4LH7M6WSHG8KALP4E23DRWG6XSW2CXNERWQY9SWYSC85CJVLUTMD80?amount=0.0001&assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d';
  static get bip21LiquidSegwitUppercaseLabelOnly =>
      'liquidnetwork:LQ1QQTCDJZVADW7YHHZ6KGNG9UMLE7Z5A4DTCQYZRD0NNF8M4LH7M6WSHG8KALP4E23DRWG6XSW2CXNERWQY9SWYSC85CJVLUTMD80?assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d&label=x';
  static get bip21LiquidSegwitUppercaseBasic =>
      'liquidnetwork:LQ1QQTCDJZVADW7YHHZ6KGNG9UMLE7Z5A4DTCQYZRD0NNF8M4LH7M6WSHG8KALP4E23DRWG6XSW2CXNERWQY9SWYSC85CJVLUTMD80?assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d';
  static get bip21LiquidSegwitLowercaseAmountLabel =>
      'LIQUIDNETWORK:lq1qqtcdjzvadw7yhhz6kgn9umle7z5a4dtcqyzrd0nnf8m4lh7m6wshg8kalp4e23drwg6xsw2cxnerwqy9swysc85cjvlutmd80?amount=0.0001&assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d&label=x';
  static get bip21LiquidSegwitLowercaseAmountOnly =>
      'LIQUIDNETWORK:lq1qqtcdjzvadw7yhhz6kgn9umle7z5a4dtcqyzrd0nnf8m4lh7m6wshg8kalp4e23drwg6xsw2cxnerwqy9swysc85cjvlutmd80?amount=0.0001&assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d';
  static get bip21LiquidSegwitLowercaseLabelOnly =>
      'LIQUIDNETWORK:lq1qqtcdjzvadw7yhhz6kgn9umle7z5a4dtcqyzrd0nnf8m4lh7m6wshg8kalp4e23drwg6xsw2cxnerwqy9swysc85cjvlutmd80?assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d&label=x';
  static get bip21LiquidSegwitLowercaseBasic =>
      'LIQUIDNETWORK:lq1qqtcdjzvadw7yhhz6kgn9umle7z5a4dtcqyzrd0nnf8m4lh7m6wshg8kalp4e23drwg6xsw2cxnerwqy9swysc85cjvlutmd80?assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d';
  static get bip21LiquidCompatibleAmountLabel =>
      'liquidnetwork:VJLJfVwTNyxCVtHNg1hdFCNf2urE3qUigKGxJifWdbGvv685GLYAB25v8zsT26v8XxWcne9opyZXihTo?amount=0.0001&assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d&label=x';
  static get bip21LiquidCompatibleAmountOnly =>
      'liquidnetwork:VJLJfVwTNyxCVtHNg1hdFCNf2urE3qUigKGxJifWdbGvv685GLYAB25v8zsT26v8XxWcne9opyZXihTo?amount=0.0001&assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d';
  static get bip21LiquidCompatibleLabelOnly =>
      'liquidnetwork:VJLJfVwTNyxCVtHNg1hdFCNf2urE3qUigKGxJifWdbGvv685GLYAB25v8zsT26v8XxWcne9opyZXihTo?assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d&label=x';
  static get bip21LiquidCompatibleBasic =>
      'liquidnetwork:VJLJfVwTNyxCVtHNg1hdFCNf2urE3qUigKGxJifWdbGvv685GLYAB25v8zsT26v8XxWcne9opyZXihTo?assetid=6f0279e9ed041c3d710a9f57d0c02928416460c4b722ae3457a11eec381c526d';

  // Payjoin Bitcoin URIs
  static get payjoinBitcoinSegwitUppercaseAmountLabel =>
      'bitcoin:bc1qqpuey8tzeufg5dpjuf37xhnvemkfaahn6zn2uq?amount=0.0001&label=x';
  static get payjoinBitcoinSegwitUppercaseAmountOnly =>
      'bitcoin:bc1qqpuey8tzeufg5dpjuf37xhnvemkfaahn6zn2uq?amount=0.0001';
  static get payjoinBitcoinSegwitUppercaseLabelOnly =>
      'bitcoin:bc1qqpuey8tzeufg5dpjuf37xhnvemkfaahn6zn2uq?label=x';
  static get payjoinBitcoinSegwitUppercaseBasic =>
      'bitcoin:bc1qqpuey8tzeufg5dpjuf37xhnvemkfaahn6zn2uq';
  static get payjoinBitcoinSegwitLowercaseAmountLabel =>
      'BITCOIN:BC1QQPUEY8TZEUFG5DPJUF37XHNVEMKFAAHN6ZN2UQ?amount=0.0001&label=x';
  static get payjoinBitcoinSegwitLowercaseAmountOnly =>
      'BITCOIN:BC1QQPUEY8TZEUFG5DPJUF37XHNVEMKFAAHN6ZN2UQ?amount=0.0001';
  static get payjoinBitcoinSegwitLowercaseLabelOnly =>
      'BITCOIN:BC1QQPUEY8TZEUFG5DPJUF37XHNVEMKFAAHN6ZN2UQ?label=x';
  static get payjoinBitcoinSegwitLowercaseBasic =>
      'BITCOIN:BC1QQPUEY8TZEUFG5DPJUF37XHNVEMKFAAHN6ZN2UQ';
  static get payjoinBitcoinLegacyAmountLabel =>
      'bitcoin:1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa?amount=0.0001&label=x';
  static get payjoinBitcoinLegacyAmountOnly =>
      'bitcoin:1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa?amount=0.0001';
  static get payjoinBitcoinLegacyLabelOnly =>
      'bitcoin:1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa?label=x';
  static get payjoinBitcoinLegacyBasic =>
      'bitcoin:1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa';
  static get payjoinBitcoinCompatibleAmountLabel =>
      'bitcoin:34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo?amount=0.0001&label=x';
  static get payjoinBitcoinCompatibleAmountOnly =>
      'bitcoin:34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo?amount=0.0001';
  static get payjoinBitcoinCompatibleLabelOnly =>
      'bitcoin:34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo?label=x';
  static get payjoinBitcoinCompatibleBasic =>
      'bitcoin:34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo';

  // UnifiedQR
  static get unifiedQrUppercase =>
      'bitcoin:BC1QQPUEY8TZEUFG5DPJUF37XHNVEMKFAAHN6ZN2UQ?amount=0.0001&label=x&lightning=LNBC2500U1PVJLUEZSP5ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYG3ZYGSPP5QQQSYQCYQ5RQWZQFQQQSYQCYQ5RQWZQFQQQSYQCYQ5RQWZQFQQQSYQCYQ5RQWZQFQYPQDQ5XYSXXATSYPG3K7ENXV4JSXQZPU9QRSGQUK0RL77NJ30YXDY8J9VDX85FKPMDLA2087NE0XH8NHEDH8W27KYKEE0LP53UT353S06FV3QFEHEXT0EH0YMJPF39TUVEN09SAM30G4VGPFNA3RH';
  static get unifiedQrLowercase =>
      'bitcoin:bc1qqpuey8tzeufg5dpjuf37xhnvemkfaahn6zn2uq?amount=0.0001&label=x&lightning=lnbc2500u1pvjluezsp5zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zygspp5qqqsyqcyq5rqwzqfqqqsyqcyq5rqwzqfqqqsyqcyq5rqwzqfqypqdq5xysxxatsyp3k7enxv4jsxqzpu9qrsgquk0rl77nj30yxdy8j9vdx85fkpmdla2087ne0xh8nhedh8w27kyke0lp53ut353s06fv3qfegext0eh0ymjpf39tuven09sam30g4vgpfna3rh';
}

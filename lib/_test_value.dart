// https://jlopp.github.io/xpub-converter

class TestValue {
  static get xpub =>
      'xpub6DJwRncrB8eNrzUq8XxgjwCZsEeWP8FeqBJbJQZ8JfuDwLdAzyjhHiHJieNuar1wjQTyihhMWtaKGE4DUd8uBgtyrNJqF5drwbNVUqb83b7';
  static get xpubFingerprint => '2bcd33b0';
  static get ypub =>
      'ypub6XepkBPvLjJ2P2XHVUEoYfYBUaHwg39ESnmxbs6UFHwk6rRAjanUahAm6cnmEBRytL2bvE7BZ7XpyDz9DP86yaReJNRD3KfVdCQM5YZ6LEs';
  static get ypubFingerprint => 'ecd6654c';
  static get zpub =>
      'zpub6ro6vd6Cn6apSQsrXVTE8d6UkygMYj1eAoXW9yUwbE2c1sfSQw2sEMyA4gGtxMpHv64NkoJdSYR7aEnJgUNNoQw7QZnys1vZ1qefVwPVc8T';
  static get zpubFingerprint => 'f6c41dd4';

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
}

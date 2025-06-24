// Bitcoin
const mainnetP2PKH = '17VZNX1SN5NtKa8UQFxwQbFeFc3iqRYhem';
const mainnetP2SH = '3EktnHQD7RiAE6uzMj2ZifT9YgRrkSgzQX';
const mainnetBech32 = 'bc1qw508d6qejxtdg4y5r3zarvary0c5xw7kv8f3t4';

const testnetP2PKH = 'mipcBbFg9gMiCh81Kj8tqqdgoZub1ZJRfn';
const testnetP2SH = '2MzQwSSnBHWHqSAqtTVQ6v47XtaisrJa1Vc';
const testnetBech32 = 'tb1qw508d6qejxtdg4y5r3zarvary0c5xw7kxpjzsx';

const btcWifUncompressed =
    '5Hwgr3u458GLafKBgxtssHSPqJnYoGrSzgQsPwLFhLNYskDPyyA';
const btcWifElectrumDeprecatedUncompressed =
    '5TfQjD9DLFeUFmDiDrzsdtSGQss93o4pvsmQcgmjfcQVLsEgAoM';

const btcWifCompressed = 'L1aW4aubDFB7yfras2S1mN3bqg9nwySY8nkoLmJebSLD5BWv3ENZ';
const btcWifElectrumDeprecatedCompressed =
    'LkUevPi661korFvRdQQUkEX35rA484oAwzsT93383q6mUqVe5cw2';
const btcWifElectrumDeprecatedCompressedAlt =
    'M3dv4iRtSKb5oHwxjZCGLai1aiZMnuLdGt7iFwjK2ncC3Vu7tRwP';

const testnetWifUncompressed =
    '92Pg46rUhgTT7romnV7iGW6W1gbGdeezqdbJCzShkCsYNzyyNcc';
const testnetWifCompressed =
    'cNJFgo1driFnPcBdBX8BrJrpxchBWXwXCvNH5SoSkdcF6JXXwHMm';

// Bitcoin Extended Keys
const btcXpub =
    'xpub661MyMwAqRbcEYS8w7XLSVeEsBXy79zSzH1J8vCdxAZningWLdN3zgtU6LBpB85b3D2yc8sfvZU521AAwdZafEz7mnzBBsz4wKY5e4cp9LB';
const btcXprv =
    'xprv9s21ZrQH143K24Mfq5zL5MhWK9hUhhGbd45hLXo2Pq2oqzMMo63oStZzF93Y5wvzdUayhgkkFoicQZcP3y52uPPxFnfoLZB21Teqt1VvEHx';
const testnetTpub =
    'tpubD6NzVbkrYhZ4WLczPJWReQycCJdd6YVWXubbVUFnJ5KgU5MDQrD998ZJLNGbhd2pq7ZtDiPYTfJ7iBenLVQpYgSQqPjUsQeJXH8VQ8xA67D';
const testnetTprv =
    'tprv8ZgxMBicQKsPcsbCVeqqF1KVdH7gwDJbxbzpCxDUsoXHdb6SnTPYxdwSAKDC6KKJzv7khnNWRAJQsRA8BBQyiSfYnRt6zuu4vZQGKjeW4YF';

// Liquid Addresses
const liquidAddressMain =
    'lq1qq0r7uz2f8csrfnr2a4pseszaugm4fefuf6kr0sw0vpk4p5uvfe9yvtg8w8ayllvg7hd39dk6wsma6jvcwyd8sfyk485w25282';

// Lightning Invoices
const bolt11 =
    'lnbc10u1p59tufasp53yuqahahgct058zglxvhezp9nyz5fvt2kn2lsl6mg9qgsts8c72spp56hym2dpcyy0878h7q5h4t30cwclp9vd0tqpn4dns0a3mmspzkh9qdqqxqyp2xqcqz95rzjqg2n4jluz7ty6mn96krzje43zm7ylttjvcxcccg99tmm30s6lm4d6zzxeyqq28qqqqqqqqqqqqqqq9gq2y9qyysgqpmw883kkclyxpr2u8mg9pl47909yhtt83pjvt3qz3s9puyf39vdp4ar7zu47r4mfawkc2s99vm292udx9n3s5fnrjyngnsxkxn2l60qpn65s0t';

// BIP21 URIs
const bip21UriBasic = 'bitcoin:$mainnetBech32';
const bip21UriWithAmount = 'bitcoin:$mainnetBech32?amount=0.001';
const liquidUriBasic = 'liquidnetwork:$liquidAddressMain';

// PSBT
const psbtBase64 =
    r'cHNidP8BAHsCAAAAAhuVpgVRdOxkuC7wW2rvw4800OVxl+QCgezYKHtCYN7GAQAAAAD/////HPTH9wFgyf4iQ2xw4DIDP8t9IjCePWDjhqgs8fXvSIcAAAAAAP////8BigIAAAAAAAAWABTHctb5VULhHvEejvx8emmDCtOKBQAAAAAAAAAA';

// Descriptor
const externalDescriptor =
    'wpkh([182551a3/84h/0h/0h]xpub6DM9LRnPTBFRREps8bsNhfGKZ9Phwz6QSWG4iwdxLF2jfMKCncXD7pMyZhjWXmD8QQGPa1ENYZuvV8shstsZmfpZKAXinpoweXCuNBMc5uz/0/*)';
const combinedDescriptor =
    'wpkh([182551a3/84h/0h/0h]xpub6DM9LRnPTBFRREps8bsNhfGKZ9Phwz6QSWG4iwdxLF2jfMKCncXD7pMyZhjWXmD8QQGPa1ENYZuvV8shstsZmfpZKAXinpoweXCuNBMc5uz/<0;1>/*)#4f2pnnww';

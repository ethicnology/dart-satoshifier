// https://jlopp.github.io/xpub-converter

const xpub =
    'xpub6DJwRncrB8eNrzUq8XxgjwCZsEeWP8FeqBJbJQZ8JfuDwLdAzyjhHiHJieNuar1wjQTyihhMWtaKGE4DUd8uBgtyrNJqF5drwbNVUqb83b7';
const xpubFingerprint = '2bcd33b0';
const ypub =
    'ypub6XepkBPvLjJ2P2XHVUEoYfYBUaHwg39ESnmxbs6UFHwk6rRAjanUahAm6cnmEBRytL2bvE7BZ7XpyDz9DP86yaReJNRD3KfVdCQM5YZ6LEs';
const ypubFingerprint = 'ecd6654c';
const zpub =
    'zpub6ro6vd6Cn6apSQsrXVTE8d6UkygMYj1eAoXW9yUwbE2c1sfSQw2sEMyA4gGtxMpHv64NkoJdSYR7aEnJgUNNoQw7QZnys1vZ1qefVwPVc8T';
const zpubFingerprint = 'f6c41dd4';

const walletMasterFingerprint = '86241f88';
const descriptorP2shBip49 =
    'sh(wpkh([$walletMasterFingerprint/49h/0h/0h]/$xpub/<0;1>/*))#6nkjq52v';
const descriptorP2pkhBip44 =
    'pkh([$walletMasterFingerprint/44h/0h/0h]$xpub/<0;1>/*)#fzh6clmf';
const descriptorP2wpkhBip84 =
    'wpkh([$walletMasterFingerprint/84h/0h/0h]$xpub/<0;1>/*)#ht0s3dna';

const descriptorChangeOnly =
    'sh(wpkh([$walletMasterFingerprint/49h/0h/0h]/$xpub/1/*))';

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "85fdd432655abf5a4135b30b4c0959fc",
".git/config": "dd998ad0a1d9372c61999e52da92c997",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "a8d53c33048f26e4922b0d502eb4f8ae",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "5e1658f89823ef82e1b727d083347cc8",
".git/logs/refs/heads/main": "5e1658f89823ef82e1b727d083347cc8",
".git/logs/refs/remotes/origin/main": "0dfbdb7ae9c88239888158af6aee8fa7",
".git/objects/03/17269b9b93d23051aacb74d7bcc13188ac7869": "eca770653a501414d49eb262701bb9cc",
".git/objects/03/8f06e890fd48d0b73d20655bcd8902cc11ffc7": "a35f4666b60e59bcf31f96dc4a0228c6",
".git/objects/05/6653d8f43edd632835ddcbccba270f166dcc19": "ee4c60634ba795dfd615c2f43bc600cf",
".git/objects/06/ac6fddce8c4f81d75d79162314aa314bbb5838": "7ffe588ab694dc4ca91cd465d66509d5",
".git/objects/07/6945f42efdde92e1ffc1a7f9773ac2b9b3e75a": "07849ad0604a63e35c7173355f95f4f6",
".git/objects/08/32d0db2def1613c1c45aa4fe9156a1c6b7d589": "e05df183e5eeaddf39672a2516f9c41d",
".git/objects/0d/237925d9ff93655828006753dc8dcb726981a7": "078dc13fa0032809e56d3fca9f1ae018",
".git/objects/0f/d6fd3c8d4dfe06634fb903dcefa068acb84aca": "0b45399adca3234e6525392025947960",
".git/objects/10/f8ed245b5667bcf234af6e62d2f0120b7435d2": "cb911a196d9c533f798582777d68706f",
".git/objects/11/e0a33d6e9e610ef47d2f015f2f8b337b244a80": "8cd780a25bd39fec28964f7dfb5215dd",
".git/objects/12/18e6f0191618a76cca3ab0cd1a96d4687984e0": "3355ea90426ebc24b64d3c75d7ff42d9",
".git/objects/1a/bec63b646503feffc6d3b561ef8ac7acf74cf9": "d1a6dc5347ccfc928fb862c52e7b7624",
".git/objects/1c/86e3111cb6c437ae866a7b1f192f13201fd614": "92065074106c752146bc0ca842e8c6da",
".git/objects/1e/f7c34d24ddf1bd000998963cb391483bc6a37f": "97508e9655449745a8caf63908361064",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/1f/6c4eebda587d3262315fce836831bd405349a9": "eb6e4b3bd226591a8313ace6964a36c9",
".git/objects/21/c5171e9eb9e0b3ae2f893a30933fe59e5ad50b": "686b4d3e8a8d209f4de41e3e282943b9",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/25/8b3eee70f98b2ece403869d9fe41ff8d32b7e1": "05e38b9242f2ece7b4208c191bc7b258",
".git/objects/27/966aee8fe8b4d1dd7c6aed5870bc67405e59e2": "5e714b74c70c37a784d0bbe08c696023",
".git/objects/28/8cb9e6ccfd58b8f4b6dd34f02f797fdb988c98": "636cd190df99095d8913ea13e5505722",
".git/objects/2b/4cd3a46869f071df39cf83c937e1b3570e9562": "4c12853e80c1e9a52d85c09c34602b1b",
".git/objects/2c/08cdc0dcff398acc6d13a3cf12ca7d38422a98": "7bca4c28ac176e74501f9d2e75afc5c1",
".git/objects/2d/ed864d680c73bcb5881e652e11ad4ce6573ca4": "49d9a1f3cebd15366abb32ac01eb3d5c",
".git/objects/2f/5b76519318d100d3476f87834e4bb85cdfdce6": "f7df40c9c5c813f2e07066e85d75865f",
".git/objects/31/e3956b58216e95dcc28d13274a67590d07bd44": "4861934ed5dd6af2db59ccbccb2482c6",
".git/objects/32/aa3cae58a7432051fc105cc91fca4d95d1d011": "4f8558ca16d04c4f28116d3292ae263d",
".git/objects/35/3a179d39778a9df05c06c6ce10595761376697": "a7736ebd9f3fc0d5543da0c889da19f5",
".git/objects/35/9160da6ce59e2539511f0417d4e642965a4768": "fba822fdb7d74e96d9a47cc5e60f8a56",
".git/objects/35/d34ca3996807ed6879f2207f9ad03ba5c611f9": "844d43f1126ee2532c8e91a1e9f2996d",
".git/objects/36/aa4a24025850fd8fcec6b1a51babe87abcdb5f": "ac6551122a10d5f84e91be36e4d271f7",
".git/objects/3a/7525f2996a1138fe67d2a0904bf5d214bfd22c": "ab6f2f6356cba61e57d5c10c2e18739d",
".git/objects/3c/bb81fe40c3ddcc1556a4a1dd85cb68ec351ea3": "c67fe67d1154e697c7f1cadf1f723bff",
".git/objects/3c/cd9fd3091a83ebc8b58e9cf1105c7a0909c640": "9cf4315d38be800368cfdba0ec847f89",
".git/objects/3e/23266e58d0be23e9b7869310ff0a98d403fa0f": "75ec9becbe3c8908813f9259794100bb",
".git/objects/40/0d5b186c9951e294699e64671b9dde52c6f6a0": "f6bd3c7f9b239e8898bace6f9a7446b9",
".git/objects/40/4e61fb1aa67838fa7569cb8df642b7f6c4bc2d": "827506325527d384237da71187eb4626",
".git/objects/41/56cdf4c52e87887e617e38cf1b47a473d67fd7": "a8a9ba93a29d2e4c7b0258eb54fb9ba5",
".git/objects/41/af92816568024a4cf5cdae10b0cdf4d29cc30c": "e861677bb5a70cc5bac967df992d9672",
".git/objects/42/83872c2e44082b6e73a1cf57335f4380a6cb1d": "3f31eee22396f4303104c1acab7a0dc4",
".git/objects/44/a8b8e41b111fcf913a963e318b98e7f6976886": "5014fdb68f6b941b7c134a717a3a2bc6",
".git/objects/45/90a6f8c7df9514e0f3eb01268fb2b04442c036": "4f10eefe7d50aee4971db344b3d366d5",
".git/objects/45/9cf4d5ec7a9d1a30ce5519686de5110b04b410": "8506baf699c491b9fbd691e423727a26",
".git/objects/46/39cc3d2a5e9a3a649a196309e2927cab3a5b6f": "bb78becebab12004c0b1ca2c19534da9",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/46/b5594ed602513449b051078feb5d6079cd5413": "33da29f98be22f58d30d1a7523ed1a45",
".git/objects/48/069fc4c82ac734928066969cb507c70ea7fa05": "69d26686370cba50f0283fcda30a4d11",
".git/objects/48/f706377cb789ac788c0b3f94dd92bc636e7b8b": "429634dde33b8efedbfadec3ac3b1138",
".git/objects/4b/05f16eb602a227c59d5452d95de9f6985fa5e7": "32a5d1a8c1e143ae9ce902bff43fdc23",
".git/objects/4b/127ce501f2b2dde560548d43999632ebdbc8dc": "673f150308f0f3aa34318c9c4708517e",
".git/objects/4b/d3072b5ca0459cec0cca5a77702a1c62718662": "669af6a6882f7497561d932254f4d97c",
".git/objects/4e/6e9082c219dfd84b1df89bda4a91ec7713c857": "ab1e4b80f8215d3362ba0e04a4eee784",
".git/objects/4e/ea1a3fc998e98efad9eb80195b172a759da12f": "223b340f7ffba5d7829814a3ee1fcb97",
".git/objects/50/abd1ebc2231fb4902e79bf2a0c23402498fed9": "3d51636d04bd60cfe7d7d5931e1711c4",
".git/objects/51/7d96871bef547b11a26801b3ea01071c59aaec": "f93c5833c32a70736763c87975dd5c77",
".git/objects/52/a67e5b26f7921a8498baaddf949054188f0ef5": "ec9d8138a669ac4f2381d908835519b4",
".git/objects/53/1512346b54120800b14ccbb5808fba651e29d3": "9a2dc01ed484ced1d7c28c18c34e5ef9",
".git/objects/54/2938a4d1bd6e8358237ad00be775c323fa92b4": "847b886ff2e9154a5868c146ad968e1a",
".git/objects/55/73d68e91a15ffe50bd3fa73259126fe0be999a": "2b29a2761aa4b38c9fffa0292f86c2ed",
".git/objects/55/82ea4b9ae263f80dc6b9bd6a6803b73b9d3b69": "0830c899a49a8ffaad423ac33d958267",
".git/objects/57/be2faafad86cb1f0ce0e0c01cb0060bcd72dab": "4c59f0a669e2e4737afda4172b1891af",
".git/objects/58/01ae69c3156b4f9d6d08cede199063bb50455d": "87ba800ed1a01da26f812a6cb445383a",
".git/objects/5b/04afce1796de75a6a7adc7eeeebe05d6fad923": "4035b94282fdf55782b873df77683bf1",
".git/objects/5e/bf37944a56f2b5e479e3858392c6e9030da2da": "d874f5ce1eb6512c7b77ebd17b676f00",
".git/objects/65/7beb34ac1ed0db68d40a95bf83e71b86897580": "8623c87501eea7a74274ee436afc55d3",
".git/objects/65/d04ad45c981f6f12dee5f4cc4823d3824682f5": "72380b95bde4eb8ba345f6855bf9ef8d",
".git/objects/6a/e1b48a54141b5005432b341b52c099bc73ce60": "b1c9753b9f466aeb18aff8fbeddb9d82",
".git/objects/6b/e909fbf40b23748412f0ea89bf0fae827ed976": "5f118419157d9534688915220cc803f7",
".git/objects/6e/e860c448cd3a6bed0c885f9c61d96e649ce281": "30c9a5f2e229167429273983f33d492b",
".git/objects/70/603a0736b1fd3d35e347070cf368433c3ba58c": "4bb35b881918e0be2764b0193d792dc6",
".git/objects/72/0f829739fef879866551ec36b8b84e820aac31": "37fb7a0c321fe973b432fe62301d9bda",
".git/objects/75/e47f48d596eb5ee5b19781df0109c3d6b825e7": "48aca49af73e81def67530b9489fdf35",
".git/objects/77/a228cccb9c811fb544d584a9e2beace85f3f19": "2013a4a1257e5567cfd7bebaba0d6eec",
".git/objects/79/82eb6f5f73e11131db946dcf6f17b408321f9b": "ffb38b05b875bdd01658f131b3da3857",
".git/objects/79/bb9efbec3587e38c2b387ea0b3a1e48c416816": "0229e532fa7f89c7169f625b8729cbb5",
".git/objects/7b/6826255e11bb2818a78cb4e5462be5567ef3bc": "392332bebc73d45492ca348dd8434e7c",
".git/objects/7f/740f29174f17fd9d14e37ff128fc2a7768ec7d": "0d60c49039e0474480fa507dcd7bb188",
".git/objects/7f/7476a786d05c9dace51e28c0adc7a6ee947814": "95d68dd3a4c9e67977a2dfd42b0364bd",
".git/objects/84/0516208d35dcb4298847ab835e2ef84ada92fa": "36a4a870d8d9c1c623d8e1be329049da",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/6076add1924a300287c3330d97fa2325c15693": "5228730e76bb2382814b464a57e7ec5a",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/90/bcfcf0a77ab618a826db0fd8b0942963b653af": "fc109675cdf1233dd6599a4c3c0a7a69",
".git/objects/96/827c7ba612a11e259777edc2b1a42e703e8dc2": "7667ab6a84b37264df7b599afa29e57a",
".git/objects/98/216bb48b3fccf31af5427b82f36f5c89e8c886": "c1df57f8594a56acda89a0cf98241a79",
".git/objects/98/57c9b3b0448c92818efc5fda0f206b21914168": "ecbde07c564dabbec0f249821051b8af",
".git/objects/9f/30fd155b49ab5d0167a54d03e676811f8cd0bc": "44b1bd4c60b450f077bfd059b78f9d9c",
".git/objects/a0/657a1c44622c80df7045dad61f5a95bfd86344": "ba28932305612d206f9f407c95f6fd0d",
".git/objects/a3/d6c650bbe25aaa2603b0df439b4df4d02853e7": "08b82833858184f51b1866e1b5932adc",
".git/objects/a7/415881ce2cb21211abddb64c24d71a940690d9": "7c2ab39392617f9faee2c0d5a847e1cf",
".git/objects/ac/2147fdf4626566419ba5325c765e2eedc86110": "b3fbb9e54b1ed7cc5c7fe2d9a89d4bbd",
".git/objects/ac/9efb06cf097569adbcb59ffff3fdabc9684798": "4c146e366155edbdc26484be47c442d7",
".git/objects/af/25c187caabc0d0c60574626a646d43aa98dcd8": "ac11a2cdc304cafdd1af167d6b879940",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b5/3541f423fbe14149b910446a141b00a5efec9c": "9e30e7b2904cee012f62a7c5c668a652",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/7f9bc6b26219bb70776e87da1af23aee85753a": "60114b0cb85af5c3f312411c041a82ea",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/6b30b80665af0f48d94f925b753d16b7f38d04": "353d69b8bcb2e16a73d05b7cc0f1d3e2",
".git/objects/ba/3c94c349e4c1b353defd6e20ac5889aa702696": "d9912aa8a91375b9c37eba2fbc38d534",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/bc/b69c1aa5c0e3e9c060cf8b86b11e8ea0e7a3e0": "fbb1023093a5686b9a3490c93b866269",
".git/objects/be/8109efb700f9b47c51807cbeee8ec11f0dd62d": "37f834da789966ecd9d250ace758d5ca",
".git/objects/be/99b58098158a76567ae8af11d885bf13097101": "4fd3e5af50655869383fe687af40c762",
".git/objects/c0/01ad33a4065da7aabb205ea964b7814fada049": "301284b67be54b25326a21b0777bbe49",
".git/objects/c0/8c87792d7a68ffd71898fa598b9b983f7e7ef9": "f455d63cfccab304798020f3d589d259",
".git/objects/c3/cefd9ce1b782c3bf960e1cd2cf439420939b35": "f4ebe3446b9dd54fde6c43898083f1b6",
".git/objects/c4/0da0fc2e284cabfe9230b1e9fb73b488575970": "21b0d390e9abfd4c917f71322353ea8a",
".git/objects/c4/491c46f9f05263194b488d0ffd55ac5dcf86e5": "0a3b05a2bc28524fbe4171bc52bbea8c",
".git/objects/c5/c9950c3414a685bb96c946f9be96f99bd61ba4": "106c9e1f7165d90401c3c4a845297a07",
".git/objects/ca/959df1d1561606da76103556bbf2fe7d552d68": "068fcd7bba4e98aad70b94028f23d347",
".git/objects/ca/c9679473b9a6cb078adb8e52b2164b8d901ecf": "efd657787042465bf94510799c10bb4e",
".git/objects/cb/9dfd5f88604b6d7da3a7c090518341c5206cf6": "73b33cb97ac762d69aa112f1e1862110",
".git/objects/ce/e3c5bb4ad9ca1b7e02e3391cc1cbba998308b7": "8e23cc0d8eea61c17a30b19ec3ccb417",
".git/objects/d0/23371979cf1e985205df19078051c10de0a82d": "700b71074bad7afee32068791dec7442",
".git/objects/d1/1be8a8e245977884a3def5d4aca3ff59429522": "7a8657b918cc96f9adcbdcdf174be3df",
".git/objects/d1/38379ad0f578d2056f733b433a1282d29d5f0b": "a62f9780c226acd61486481ccda3665f",
".git/objects/d3/7669c50985d630aed696f354bec82f4803277e": "14cd8736760d544386f817a0e38d6685",
".git/objects/d3/e9a484e7be9f98f88470bf601208c4ff4e3ab1": "bc1bcd089e16f4f327c2b93b8135c15c",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d4/c9f9c25aee6e9c14e27312355383654db037e4": "3f0554904c34af79bb0e9af699b87ff3",
".git/objects/d5/bb50b3c3bc534b51ba035a5e8495ba7af5025b": "81d30e6f235d2cd1960b1a0d917b3043",
".git/objects/d5/bc03b5813b0ac86ccacfa997f3d0eb6a7d850c": "ccf383e19e59a01446721d07bd2c9a0a",
".git/objects/d6/401704f06548039702be9e1982ff37b53fe256": "4dd6cd07c599a9280f8b3a5c63e62ce0",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/da/fd65422747502c19b5c74b4230282644d2169c": "d8a62caf99a372ff6c7692e143787ce3",
".git/objects/de/3712a05122064e187c51b696b3c9e612084df0": "a9bf690b4bdc6e518dccbc63c8411e3a",
".git/objects/e7/20db5ca5c1db556d57c735aee6f488b4783c14": "1ec27994cddadd00a90fa991c651a93b",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/eb/cd3d0d1f71194d7b97f2104535329688171569": "bc9e86640ab8d418a635d2d5f3472450",
".git/objects/ed/3530b4c57e247033e6dcaa63bd7b1cbdb56312": "48ca2e345b01913c28a1413dc0278205",
".git/objects/ee/57c8d0e2540d9a5a7b2d96b8906d58f143691e": "b151424b683e8c394622e688a6a1309e",
".git/objects/ef/2fdce24fafe021c907702d7212e921ee28ed7e": "1499eac611e8547d3ff07ccdeab009e2",
".git/objects/f0/912e4c2c868518474ef152bca5ab0c993ece3c": "42ded6d7a20455008044035c61147a3b",
".git/objects/f0/c96c4233d780fc2fb14e4e650934e82f4dec48": "96a0e7ed4500b03fd775cfcc82ea8e97",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f4/eaf8b50ef6cf6c5c04529023940e1dd571796a": "022b2b675261aa773daef81d7f307dd5",
".git/objects/f8/1d7bc8ce236c884ec940c13193b8271a8b9c3b": "7596943e0c73548e3d24e6e705fc15ad",
".git/objects/f9/f16ac7898b507427140907d779842809913c5e": "abb275399589b419ef333ae3fdfb204f",
".git/objects/ff/71acf24929c6bc7bf70e0270936cf592c9bfb1": "0f1ad81f302ac43cea6512663c7ad221",
".git/refs/heads/main": "a330f9fc502fef78b3497fad93b9fe42",
".git/refs/remotes/origin/main": "a330f9fc502fef78b3497fad93b9fe42",
"assets/AssetManifest.bin": "25a05c55db268d222d9d3942984a8441",
"assets/AssetManifest.bin.json": "61a100214c4571c95714c2655ea5b70e",
"assets/AssetManifest.json": "c1b9bcc838a69a63ee657e651d072954",
"assets/assets/androidplatform_image.png": "aad5d86ecd87788ec2e33aaf617dba5f",
"assets/assets/avata.png": "f05defcd07eb914e1aea5284a9a3a4b6",
"assets/assets/c%2523_image.png": "817301bc58fd595a83b4cdcd25517512",
"assets/assets/c++_image.png": "9701940429678303f56355178ec5c4b4",
"assets/assets/crossplatform_image.png": "55f42bd6422bf57094c99ecdb85c78ca",
"assets/assets/express_image.png": "5bb416a5ce9ca50de542d1b7b2de8e8f",
"assets/assets/flutter_image.png": "b217e222d3aca4809f40b4d614ac1285",
"assets/assets/javascript_image.png": "71cc0521ad860c4697a36b5ad313c4a4",
"assets/assets/jetpackcompose_image.png": "684855202148b6ff449c638b911a7890",
"assets/assets/kotlin_image.png": "12e34f44cc5dbd3ae4bdca255b70438b",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "e796158e948c2c1099752afa1c4a21e0",
"assets/NOTICES": "296780fbde859d0815e03d6fac85378a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "c8955389283c13d8d3db2e290ede2c62",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "db530386db3ab051cdfe470901538803",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "cfb4845c5c11e28caaa8417bdae43c05",
"/": "cfb4845c5c11e28caaa8417bdae43c05",
"main.dart.js": "766c2ed181496337d9dfbd226a13c93a",
"manifest.json": "07f66434d604ccac1b4d5244f35598aa",
"version.json": "7367c9ca1c69727a8bb09a7d2d21d48c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

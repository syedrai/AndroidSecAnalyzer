.class Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
.super Ljava/lang/Object;
.source "FalconVrfy.java"


# instance fields
.field final GMb:[S

.field final Q:I

.field final Q0I:I

.field final R:I

.field final R2:I

.field common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

.field final iGMb:[S


# direct methods
.method constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x3001

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->Q:I

    .line 29
    const/16 v0, 0x2fff

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->Q0I:I

    .line 30
    const/16 v0, 0xffb

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->R:I

    .line 31
    const/16 v0, 0x2ac8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->R2:I

    .line 39
    const/16 v0, 0x400

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->GMb:[S

    .line 175
    new-array v0, v0, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->iGMb:[S

    .line 10
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    .line 11
    return-void

    nop

    :array_0
    .array-data 2
        0xffbs
        0x1ed0s
        0x2b34s
        0x2bc8s
        0x1b30s
        0x10f6s
        0x1883s
        0x261fs
        0x637s
        0x18ffs
        0x2505s
        0x1492s
        0x24as
        0x16c1s
        0x1d72s
        0x25ees
        0x46es
        0x1907s
        0x6afs
        0x3c5s
        0x1bbbs
        0x1dfas
        0xe9fs
        0x192as
        0x28aes
        0x1fa4s
        0x75ds
        0x698s
        0x554s
        0x2859s
        0x27b4s
        0x23dcs
        0x2fb2s
        0x1860s
        0x3e5s
        0x75s
        0x12afs
        0x1137s
        0x60ds
        0x1ba0s
        0xb0ds
        0x193as
        0x114fs
        0x22ads
        0x1be8s
        0xa04s
        0x1620s
        0xfcas
        0x2f9ds
        0x1b0s
        0x29ffs
        0x4d5s
        0x1dbas
        0x5fes
        0xf8fs
        0x1eb7s
        0x885s
        0x18a4s
        0x2210s
        0x19aas
        0x12ebs
        0x69as
        0xes
        0xf20s
        0x15c1s
        0x2498s
        0x2f83s
        0x7e3s
        0x1d77s
        0x90bs
        0x1241s
        0x1cacs
        0x611s
        0x484s
        0x20d1s
        0x2c7ds
        0x3fcs
        0xb97s
        0x2a14s
        0x1b85s
        0xcf4s
        0x2be4s
        0x14a5s
        0x2d3as
        0x298ds
        0x2766s
        0x2515s
        0x1824s
        0x243ds
        0x17f2s
        0xcfbs
        0x373s
        0x28e5s
        0x1e9s
        0x5des
        0xb23s
        0x2b35s
        0x2601s
        0xab6s
        0x2fd1s
        0x136as
        0x28f1s
        0x275es
        0x4abs
        0x2das
        0x6e2s
        0xf0es
        0x7ees
        0x1704s
        0x2aaas
        0x233cs
        0x149as
        0x23dbs
        0xe14s
        0xec6s
        0x27des
        0xc6cs
        0xd8bs
        0x123cs
        0x98es
        0x1dbds
        0x24aas
        0x342s
        0x1e17s
        0x1ab4s
        0xd4bs
        0x14e7s
        0x2ff4s
        0xdfcs
        0x6cbs
        0x2a44s
        0x263bs
        0x27e1s
        0xfe6s
        0x2fdas
        0x214ds
        0x28a1s
        0xabds
        0x1caas
        0x294es
        0x1798s
        0x3afs
        0x2472s
        0x5c5s
        0x1ad1s
        0x25c4s
        0xe01s
        0x19e9s
        0x2f71s
        0xfdfs
        0xe64s
        0x1e00s
        0x1ffcs
        0x1af6s
        0xdcds
        0x264fs
        0x17cas
        0x2d7s
        0x2773s
        0x1b5bs
        0x1b21s
        0x79ds
        0x2603s
        0x293fs
        0x17a9s
        0x17as
        0x1ebfs
        0x223bs
        0x22c5s
        0x240ds
        0x228es
        0x11c7s
        0x2575s
        0x2d90s
        0x1dces
        0x2275s
        0x1630s
        0x135cs
        0x186bs
        0x20c4s
        0x27acs
        0x2213s
        0x925s
        0xc57s
        0x5bbs
        0x1554s
        0x2169s
        0x1e67s
        0xa59s
        0x910s
        0x234cs
        0x182cs
        0x2e1s
        0xe72s
        0x125bs
        0x1679s
        0x2356s
        0xe67s
        0x10s
        0x392s
        0x1442s
        0x2923s
        0x11c8s
        0x7acs
        0xdb5s
        0x20f4s
        0x1d5cs
        0x1505s
        0x29eds
        0xcd1s
        0x1b7ds
        0x424s
        0xb4fs
        0x1bf4s
        0x22b7s
        0x14eds
        0x1909s
        0x2005s
        0xb92s
        0x18e7s
        0x13c8s
        0x19eas
        0x15f9s
        0x116s
        0x3a4s
        0x27f5s
        0x22dfs
        0x1ddas
        0x15fs
        0x2452s
        0xeds
        0x16e2s
        0x1e0cs
        0xc4as
        0x2f5es
        0x1da2s
        0x805s
        0x2c15s
        0xedas
        0x1454s
        0x11fas
        0x6d4s
        0x2c24s
        0x154s
        0xe7fs
        0x1206s
        0x12cs
        0x2af1s
        0x13ces
        0x2741s
        0x2d60s
        0x2fd7s
        0x1cfds
        0x29d3s
        0x1672s
        0x1616s
        0xefbs
        0x15b1s
        0x4c8s
        0x211cs
        0x2415s
        0xf05s
        0xfas
        0x2bc9s
        0x1081s
        0x18b6s
        0x25d0s
        0x2fdes
        0x1028s
        0xadas
        0x2b4s
        0x2268s
        0x190as
        0x1a3es
        0x2779s
        0x28b2s
        0xeafs
        0x1cbcs
        0x2c61s
        0x20f1s
        0x1925s
        0xe44s
        0x18c6s
        0x2312s
        0x150fs
        0x8e0s
        0x194cs
        0x1cf8s
        0x20e2s
        0x2a48s
        0x2ed2s
        0x1665s
        0x36cs
        0x1b76s
        0x877s
        0x984s
        0xd72s
        0x2401s
        0x200es
        0x12fas
        0x174cs
        0xabas
        0x1c0as
        0x59as
        0x1cdds
        0x22afs
        0x29a5s
        0x2cc1s
        0x107cs
        0x598s
        0x2a50s
        0x10e8s
        0x216ds
        0x74bs
        0x24ees
        0x970s
        0xee8s
        0x2374s
        0x2aes
        0x1511s
        0x9dbs
        0x10f3s
        0x17e3s
        0x26bs
        0x3a9s
        0xb12s
        0x1e5fs
        0xccfs
        0x93bs
        0x1d40s
        0x17e0s
        0x13c0s
        0x338s
        0x27dcs
        0x2daas
        0x459s
        0xaa7s
        0x2678s
        0x380s
        0x7ecs
        0x13d3s
        0xa5es
        0x28e0s
        0x1eccs
        0x2f89s
        0x153as
        0xbfes
        0x1900s
        0x23acs
        0x2d98s
        0x2f79s
        0x11a8s
        0x4f9s
        0x260bs
        0x2cccs
        0x26d1s
        0x2737s
        0x25f8s
        0x8d6s
        0x24b7s
        0x2bb8s
        0x13bs
        0x119fs
        0x486s
        0x17ads
        0x1a5fs
        0x2e59s
        0x165s
        0x1cc7s
        0x11c6s
        0x3d7s
        0x2156s
        0x20a0s
        0x278es
        0x1d6as
        0x2425s
        0x110fs
        0x1465s
        0xf9fs
        0x2249s
        0xc59s
        0x1b4es
        0x1022s
        0x2d84s
        0xd2es
        0x2cd5s
        0x6d9s
        0x124s
        0x21e9s
        0xaf6s
        0x288as
        0x2f9cs
        0x16a8s
        0x2e23s
        0xc6ds
        0x7c4s
        0x400s
        0x247cs
        0x9ads
        0x2ab0s
        0x11e6s
        0x1a5es
        0xe23s
        0x157fs
        0x1471s
        0x99fs
        0x2116s
        0x1de2s
        0x1f1cs
        0x18fbs
        0x42fs
        0x4f8s
        0xd92s
        0x2b25s
        0xcdbs
        0x2c50s
        0x2136s
        0x2506s
        0x266ds
        0x4e5s
        0x741s
        0x1859s
        0x1270s
        0x2d29s
        0x1792s
        0x2659s
        0xd0bs
        0x705s
        0xb3fs
        0x1862s
        0x1450s
        0x842s
        0x1f1as
        0x2489s
        0x2c63s
        0x1563s
        0x17c4s
        0x2581s
        0x100cs
        0x1c9bs
        0x28c6s
        0x24ffs
        0x4f7s
        0x198s
        0x1affs
        0xc07s
        0x168s
        0x2054s
        0x2d0fs
        0x23c4s
        0x2359s
        0x2d13s
        0x352s
        0x21a9s
        0x310s
        0x1eefs
        0x208es
        0x2f8as
        0x736s
        0x27e5s
        0x2f98s
        0x1e93s
        0x2e7fs
        0x15e0s
        0x2633s
        0x3f4s
        0x2d1s
        0xae0s
        0x1a14s
        0x1998s
        0x14e4s
        0x1148s
        0x1aa0s
        0x20d5s
        0x26e7s
        0x141es
        0x934s
        0x15b0s
        0x1493s
        0x535s
        0x2261s
        0x25bds
        0x1c8cs
        0x169cs
        0x132es
        0x38ds
        0x2d5ds
        0x112bs
        0x202es
        0x1a1es
        0x10ces
        0xbe4s
        0x8eds
        0x2fd9s
        0x7abs
        0x2400s
        0x10c8s
        0x2e8es
        0x2b7s
        0x1113s
        0x2641s
        0x1314s
        0x96bs
        0x27f6s
        0xa5as
        0x349s
        0xf32s
        0x27f7s
        0x1c50s
        0x2139s
        0x2bbcs
        0x1a20s
        0xfdbs
        0x17acs
        0xe66s
        0x1272s
        0x2e4ds
        0x16b8s
        0x1b92s
        0x1ad4s
        0x2b81s
        0x1ef6s
        0x131es
        0x2ffcs
        0x1006s
        0xf44s
        0xe1as
        0x197ds
        0x1f02s
        0x1f2es
        0x2ec9s
        0x1a63s
        0x219s
        0x11d2s
        0x657s
        0x2023s
        0x2cbds
        0x1d78s
        0x38as
        0x2e28s
        0x254cs
        0x2a6as
        0x25e7s
        0xaffs
        0x2dd8s
        0x1a9ds
        0x1b43s
        0x333s
        0x22c7s
        0x187fs
        0x2a5bs
        0x15cs
        0x1d5as
        0x2093s
        0x1927s
        0x2b6s
        0x354s
        0x161bs
        0xadds
        0xe84s
        0x2d45s
        0xbd0s
        0x5f3s
        0x21d3s
        0x1012s
        0x29f2s
        0xce7s
        0x16fds
        0xba2s
        0x1c79s
        0x2e6cs
        0x23a3s
        0x246bs
        0x2e36s
        0x62s
        0x9des
        0x844s
        0x1023s
        0x2c8fs
        0x734s
        0xe3ds
        0xf4cs
        0x1fc5s
        0x8b0s
        0x2a77s
        0x1f9cs
        0x25b3s
        0x1765s
        0x1be4s
        0x2120s
        0x686s
        0x9fs
        0x2aabs
        0x1336s
        0x80s
        0x1c90s
        0x2d5s
        0x23c5s
        0x138es
        0x18f9s
        0xda6s
        0x179bs
        0x2adcs
        0x1825s
        0x2e3es
        0xd5fs
        0x2912s
        0x1df4s
        0xe6ds
        0x1a02s
        0x1af9s
        0x2eb1s
        0x27e4s
        0x2e92s
        0x238ds
        0x20ads
        0x13f6s
        0x2ds
        0x960s
        0x781s
        0x1119s
        0xaa0s
        0x69fs
        0x33s
        0xaf8s
        0x28as
        0x768s
        0x270ds
        0x26f3s
        0x2eccs
        0x1fa2s
        0x12e1s
        0x1027s
        0x10a1s
        0x16ces
        0x129ds
        0x2ae9s
        0x2d0cs
        0x24es
        0x2fa6s
        0x1e2s
        0x2f8ds
        0x7d6s
        0x1b98s
        0x2722s
        0xf48s
        0x2ef0s
        0x2917s
        0x2c62s
        0x1b2as
        0x8a2s
        0x11cs
        0x1525s
        0x19c9s
        0xf19s
        0x2863s
        0x2bb4s
        0x1857s
        0x205s
        0x255cs
        0x2c11s
        0xf17s
        0x4bas
        0x11fcs
        0x1fe0s
        0x2cb7s
        0x99s
        0x1c24s
        0x1683s
        0x13e1s
        0x2420s
        0x2f7as
        0x2de4s
        0x54as
        0x1a10s
        0xb3s
        0x159cs
        0xa56s
        0x1735s
        0x2f99s
        0x35es
        0xc56s
        0x1dds
        0x1c6fs
        0x162es
        0x1eeas
        0x109es
        0x12es
        0xb4ds
        0x2782s
        0x1aeas
        0x2558s
        0x25afs
        0x2e81s
        0x1002s
        0x2660s
        0x281ds
        0x549s
        0x29dbs
        0x14cds
        0x186es
        0xf6fs
        0x70fs
        0x1931s
        0x1427s
        0x51cs
        0x207bs
        0xd4cs
        0x755s
        0x4cfs
        0x70s
        0x18fes
        0x2dccs
        0x2ff0s
        0x1c76s
        0x5b3s
        0x2ff2s
        0x26a8s
        0xd80s
        0x320s
        0x575s
        0x29b6s
        0x67s
        0x1cfcs
        0x1f28s
        0x3a8s
        0x2fcs
        0x278s
        0x1f3cs
        0x201fs
        0x20fds
        0x1e4es
        0x2a76s
        0x2563s
        0x9ccs
        0x79as
        0x197cs
        0x27aes
        0x414s
        0x10f2s
        0x999s
        0xe39s
        0x67bs
        0x102bs
        0x1250s
        0x2605s
        0x2b8cs
        0xf6as
        0x822s
        0x148ds
        0x7f4s
        0x2e4as
        0x1dd4s
        0x2fccs
        0x14f6s
        0x94cs
        0x577s
        0x1e28s
        0x834s
        0xc91s
        0x2aa0s
        0x22c2s
        0x1d9as
        0x2edbs
        0xae7s
        0x4bfs
        0xd1bs
        0xa97s
        0x8dbs
        0x7d4s
        0x2178s
        0x27c0s
        0xc8es
        0x921s
        0x6d6s
        0x1279s
        0x1385s
        0x1cf7s
        0x18abs
        0x2f0cs
        0x1116s
        0x1bf5s
        0x12ecs
        0xd3s
        0x1f43s
        0x27afs
        0x244as
        0x2cd9s
        0x6c7s
        0x920s
        0x16a1s
        0x2693s
        0x2000s
        0x3das
        0x1d67s
        0x579s
        0x366s
        0xe1fs
        0x2111s
        0xac4s
        0x262as
        0x7f2s
        0x27b8s
        0xcc0s
        0x17f4s
        0x36s
        0xb40s
        0x129bs
        0x2e1ds
        0xc02s
        0x205es
        0x24d4s
        0x1311s
        0x1b15s
        0x442s
        0x2736s
        0xa07s
        0x2c4s
        0x37ds
        0x1941s
        0x1362s
        0x2728s
        0x82as
        0x1656s
        0x29f7s
        0x30cs
        0x127ds
        0x120fs
        0x856s
        0x827s
        0x12c2s
        0x374s
        0x14fcs
        0x16a3s
        0x1732s
        0x10eds
        0x199fs
        0x1d7ds
        0x1495s
        0x29a8s
        0x109cs
        0xcbcs
        0x171ds
        0x2a3es
        0x1688s
        0x26ffs
        0x1fa0s
        0x1e6fs
        0x1a90s
        0x1d43s
        0x1880s
        0x773s
        0x2ac3s
        0x1891s
        0x2e1bs
        0x1790s
        0x2cb9s
        0x493s
        0x23f1s
        0x1efds
        0x9afs
        0x1f22s
        0x2c49s
        0x1b96s
        0x22cfs
        0x1a48s
        0x198es
        0x1fb2s
        0x227cs
        0x19c3s
        0xdd9s
        0x10fcs
        0x1202s
        0x89ds
        0x1b57s
        0x1faas
        0x15b8s
        0x2896s
        0x2469s
        0x9c3s
        0x96ds
        0x1c68s
        0x1ae1s
        0x2956s
        0x245cs
        0x24dds
        0xde2s
        0xcfes
        0x1767s
        0x2ec1s
        0xd57s
        0x2ffbs
        0x266es
        0x2f1fs
        0x10ecs
        0x1e96s
        0x2c41s
        0x19cds
        0x2fefs
        0x7fcs
        0x2d5bs
        0x1cb9s
        0x2bc1s
        0x2d3es
        0xe95s
        0x22efs
        0x26fas
        0x65bs
        0x1c00s
        0xf5fs
        0x13bas
        0xacas
        0x1d48s
        0x288fs
        0x2f3s
        0x676s
        0x2f15s
        0x1358s
        0x2796s
        0x112as
        0x19c0s
        0x1edas
        0x1d49s
        0x22c8s
        0x2efds
        0xdfds
        0x29fcs
        0x162as
        0x2876s
        0x1325s
        0x1cf6s
        0x2243s
        0x2c6s
        0x1a6cs
        0x210es
        0x1c19s
        0x14fbs
        0x1c6as
        0x2b4cs
        0x122s
        0x1eb8s
        0x1aabs
        0x2e2es
        0x9cds
        0x19b2s
        0xfbas
        0x16afs
        0x5b2s
        0x1659s
        0x1682s
        0x1052s
        0x839s
        0x2d65s
        0x12f4s
        0x22c1s
        0xb28s
        0x2cf6s
        0x2430s
        0x9d8s
        0x2248s
        0x1b63s
        0xa57s
        0x76as
        0x1b7fs
        0x173es
        0x2b9bs
        0x1570s
        0x1885s
        0x23des
        0x2cc0s
        0x279s
        0x273es
        0x2d22s
        0x1601s
        0x2573s
        0x91ds
        0x1b60s
        0x1bacs
        0x13b7s
        0x1c1fs
        0x2689s
        0x2325s
        0x239s
        0x18f6s
        0x2a5ds
        0x25cfs
        0x204cs
        0x2cd0s
        0x106bs
        0x7cds
        0x2s
        0x2473s
        0xa2s
        0x1826s
        0x7d0s
        0xe41s
        0x2640s
        0x18dbs
        0x1d85s
        0x182bs
        0x213es
        0x26cfs
        0x15a0s
        0x233bs
        0xe7as
        0x2ee9s
        0x5acs
        0xbfbs
        0x1576s
        0x25dcs
        0x1301s
        0x1783s
        0x1bc2s
        0x258as
        0x11ecs
        0x27b5s
        0x1875s
        0x16ffs
        0xa5cs
        0x27bcs
        0x62cs
        0x288bs
        0x121es
        0x26dds
    .end array-data

    :array_1
    .array-data 2
        0xffbs
        0x1131s
        0x439s
        0x4cds
        0x9e2s
        0x177es
        0x1f0bs
        0x14d1s
        0xa13s
        0x128fs
        0x1940s
        0x2db7s
        0x1b6fs
        0xafcs
        0x1702s
        0x29cas
        0xc25s
        0x84ds
        0x7a8s
        0x2aads
        0x2969s
        0x28a4s
        0x105ds
        0x753s
        0x16d7s
        0x2162s
        0x1207s
        0x1446s
        0x2c3cs
        0x2952s
        0x16fas
        0x2b93s
        0x20e1s
        0x2ff3s
        0x2967s
        0x1d16s
        0x1657s
        0xdf1s
        0x175ds
        0x277cs
        0x114as
        0x2072s
        0x2a03s
        0x1247s
        0x2b2cs
        0x602s
        0x2e51s
        0x64s
        0x2037s
        0x19e1s
        0x25fds
        0x1419s
        0xd54s
        0x1eb2s
        0x16c7s
        0x24f4s
        0x1461s
        0x29f4s
        0x1ecas
        0x1d52s
        0x2f8cs
        0x2c1cs
        0x17a1s
        0x4fs
        0xds
        0x1b1as
        0x22b6s
        0x154ds
        0x11eas
        0x2cbfs
        0xb57s
        0x1244s
        0x2673s
        0x1dc5s
        0x2276s
        0x2395s
        0x823s
        0x213bs
        0x21eds
        0xc26s
        0x1b67s
        0xcc5s
        0x557s
        0x18fds
        0x2813s
        0x20f3s
        0x291fs
        0x2d27s
        0x2b56s
        0x8a3s
        0x710s
        0x1c97s
        0x30s
        0x254bs
        0xa00s
        0x4ccs
        0x24des
        0x2a23s
        0x2e18s
        0x71cs
        0x2c8es
        0x2306s
        0x180fs
        0xbc4s
        0x17dds
        0xaecs
        0x89bs
        0x674s
        0x2c7s
        0x1b5cs
        0x41ds
        0x230ds
        0x147cs
        0x5eds
        0x246as
        0x2c05s
        0x384s
        0xf30s
        0x2b7ds
        0x29f0s
        0x1355s
        0x1dc0s
        0x26f6s
        0x128as
        0x281es
        0x7es
        0xb69s
        0x1a40s
        0x19ebs
        0x198fs
        0x62es
        0x1304s
        0x2as
        0x2a1s
        0x8c0s
        0x1c33s
        0x510s
        0x2ed5s
        0x1dfbs
        0x2182s
        0x2eads
        0x3dds
        0x292ds
        0x1e07s
        0x1bads
        0x2127s
        0x3ecs
        0x27fcs
        0x125fs
        0xa3s
        0x23b7s
        0x11f5s
        0x191fs
        0x2f14s
        0xbafs
        0x2ea2s
        0x1227s
        0xd22s
        0x80cs
        0x2c5ds
        0x2eebs
        0x1a08s
        0x1617s
        0x1c39s
        0x171as
        0x246fs
        0xffcs
        0x16f8s
        0x1b14s
        0xd4as
        0x140ds
        0x24b2s
        0x2bdds
        0x1484s
        0x2330s
        0x614s
        0x1afcs
        0x12a5s
        0xf0ds
        0x224cs
        0x2855s
        0x1e39s
        0x6des
        0x1bbfs
        0x2c6fs
        0x2ff1s
        0x219as
        0xcabs
        0x1988s
        0x1da6s
        0x218fs
        0x2d20s
        0x17d5s
        0xcb5s
        0x26f1s
        0x25a8s
        0x119as
        0xe98s
        0x1aads
        0x2a46s
        0x23aas
        0x26dcs
        0xdees
        0x855s
        0xf3ds
        0x1796s
        0x1ca5s
        0x19d1s
        0xd8cs
        0x1233s
        0x271s
        0xa8cs
        0x1e3as
        0xd73s
        0xbf4s
        0xd3cs
        0xdc6s
        0x1142s
        0x2e87s
        0x1858s
        0x6c2s
        0x9fes
        0x2864s
        0x14e0s
        0x14a6s
        0x88es
        0x2d2as
        0x1837s
        0x9b2s
        0x2234s
        0x150bs
        0x1005s
        0x1201s
        0x219ds
        0x2022s
        0x90s
        0x1618s
        0x2200s
        0xa3ds
        0x1530s
        0x2a3cs
        0xb8fs
        0x2c52s
        0x1869s
        0x6b3s
        0x1357s
        0x2544s
        0x760s
        0xeb4s
        0x27s
        0x201bs
        0x820s
        0x9c6s
        0x5bds
        0x2936s
        0x2205s
        0x15e1s
        0x445s
        0xec8s
        0x13b1s
        0x80as
        0x20cfs
        0x2cb8s
        0x25a7s
        0x80bs
        0x2696s
        0x1ceds
        0x9c0s
        0x1eees
        0x2d4as
        0x173s
        0x1f39s
        0xc01s
        0x2856s
        0x28s
        0x2714s
        0x241ds
        0x1f33s
        0x15e3s
        0xfd3s
        0x1ed6s
        0x2a4s
        0x2c74s
        0x1cd3s
        0x1965s
        0x1375s
        0xa44s
        0xda0s
        0x2accs
        0x1b6es
        0x1a51s
        0x26cds
        0x1be3s
        0x91as
        0xf2cs
        0x1561s
        0x1eb9s
        0x1b1ds
        0x1669s
        0x15eds
        0x2521s
        0x2d30s
        0x2c0ds
        0x9ces
        0x1a21s
        0x182s
        0x116es
        0x69s
        0x81cs
        0x28cbs
        0x77s
        0xf73s
        0x1112s
        0x2cf1s
        0xe58s
        0x2cafs
        0x2ees
        0xca8s
        0xc3ds
        0x2f2s
        0xfads
        0x2e99s
        0x23fas
        0x1502s
        0x2e69s
        0x2b0as
        0xb02s
        0x73bs
        0x1366s
        0x1ff5s
        0xa80s
        0x183ds
        0x1a9es
        0x39es
        0xb78s
        0x10e7s
        0x27bfs
        0x1bb1s
        0x179fs
        0x24c2s
        0x28fcs
        0x22f6s
        0x9a8s
        0x186fs
        0x2d8s
        0x1d91s
        0x17a8s
        0x28c0s
        0x2b1cs
        0x994s
        0xafbs
        0xecbs
        0x3b1s
        0x2326s
        0x4dcs
        0x226fs
        0x2b09s
        0x2bd2s
        0x1706s
        0x10e5s
        0x121fs
        0xeebs
        0x2662s
        0x1b90s
        0x1a82s
        0x21des
        0x15a3s
        0x1e1bs
        0x551s
        0x2654s
        0xb85s
        0x2c01s
        0x283ds
        0x2394s
        0x1des
        0x1959s
        0x65s
        0x777s
        0x250bs
        0xe18s
        0x2edds
        0x2928s
        0x32cs
        0x22d3s
        0x27ds
        0x1fdfs
        0x14b3s
        0x23a8s
        0xdb8s
        0x2062s
        0x1b9cs
        0x1ef2s
        0xbdcs
        0x1297s
        0x873s
        0xf61s
        0xeabs
        0x2c2as
        0x1e3bs
        0x133as
        0x2e9cs
        0x1a8s
        0x15a2s
        0x1854s
        0x2b7bs
        0x1e62s
        0x2ec6s
        0x449s
        0xb4as
        0x272bs
        0xa09s
        0x8cas
        0x930s
        0x335s
        0x9f6s
        0x2b08s
        0x1e59s
        0x88s
        0x269s
        0xc55s
        0x1701s
        0x2403s
        0x1ac7s
        0x78s
        0x1135s
        0x721s
        0x25a3s
        0x1c2es
        0x2815s
        0x2c81s
        0x989s
        0x255as
        0x2ba8s
        0x257s
        0x825s
        0x2cc9s
        0x1c41s
        0x1821s
        0x12c1s
        0x26c6s
        0x2332s
        0x11a2s
        0x24efs
        0x2c58s
        0x2d96s
        0x181es
        0x1f0es
        0x2626s
        0x1af0s
        0x2d53s
        0xc8ds
        0x2119s
        0x2691s
        0xb13s
        0x28b6s
        0xe94s
        0x1f19s
        0x5b1s
        0x2a69s
        0x1f85s
        0x340s
        0x65cs
        0xd52s
        0x1324s
        0x2a67s
        0x13f7s
        0x2547s
        0x18b5s
        0x1d07s
        0xff3s
        0xc00s
        0x228fs
        0x267ds
        0x278as
        0x148bs
        0x2c95s
        0x199cs
        0x12fs
        0x5b9s
        0xf1fs
        0x1309s
        0x16b5s
        0x2721s
        0x1af2s
        0xcefs
        0x173bs
        0x21bds
        0x16dcs
        0xf10s
        0x3a0s
        0x1345s
        0x2152s
        0x74fs
        0x888s
        0x15c3s
        0x16f7s
        0xd99s
        0x2d4ds
        0x2527s
        0x1fd9s
        0x23s
        0xa31s
        0x174bs
        0x1f80s
        0x438s
        0x2f07s
        0x20fcs
        0xbecs
        0xee5s
        0x2b39s
        0x1a50s
        0x2106s
        0x924s
        0x1de3s
        0x776s
        0x29d5s
        0x845s
        0x25a5s
        0x1902s
        0x178cs
        0x84cs
        0x1e15s
        0xa77s
        0x143fs
        0x187es
        0x1d00s
        0xa25s
        0x1a8bs
        0x2406s
        0x2a55s
        0x118s
        0x2187s
        0xcc6s
        0x1a61s
        0x932s
        0xec3s
        0x17d6s
        0x127cs
        0x1726s
        0x9c1s
        0x21c0s
        0x2831s
        0x17dbs
        0x2f5fs
        0xb8es
        0x2fffs
        0x2834s
        0x1f96s
        0x331s
        0xfb5s
        0xa32s
        0x5a4s
        0x170bs
        0x2dc8s
        0xcdcs
        0x978s
        0x13e2s
        0x1c4as
        0x1455s
        0x14a1s
        0x26e4s
        0xa8es
        0x1a00s
        0x2dfs
        0x8c3s
        0x2d88s
        0x341s
        0xc23s
        0x177cs
        0x1a91s
        0x466s
        0x18c3s
        0x1482s
        0x2897s
        0x25aas
        0x149es
        0xdb9s
        0x2629s
        0xbd1s
        0x30bs
        0x24d9s
        0xd40s
        0x1d0ds
        0x29cs
        0x27c8s
        0x1fafs
        0x197fs
        0x19a8s
        0x2a4fs
        0x1952s
        0x2047s
        0x164fs
        0x2634s
        0x1d3s
        0x1556s
        0x1149s
        0x2edfs
        0x4b5s
        0x1397s
        0x1b06s
        0x13e8s
        0xef3s
        0x1595s
        0x2d3bs
        0xdbes
        0x130bs
        0x1cdcs
        0x78bs
        0x19d7s
        0x605s
        0x2204s
        0x104s
        0xd39s
        0x12b8s
        0x1127s
        0x1641s
        0x1ed7s
        0x86bs
        0x1ca9s
        0xecs
        0x298bs
        0x2d0es
        0x772s
        0x12b9s
        0x2537s
        0x1c47s
        0x20a2s
        0x1401s
        0x29a6s
        0x907s
        0xd12s
        0x216cs
        0x2c3s
        0x440s
        0x1348s
        0x2a6s
        0x2805s
        0x12s
        0x1634s
        0x3c0s
        0x116bs
        0x1f15s
        0xe2s
        0x993s
        0x6s
        0x22aas
        0x140s
        0x189as
        0x2303s
        0x221fs
        0xb24s
        0xba5s
        0x6abs
        0x1520s
        0x1399s
        0x2694s
        0x263es
        0xb98s
        0x76bs
        0x1a49s
        0x1057s
        0x14aas
        0x2764s
        0x1dffs
        0x1f05s
        0x2228s
        0x163es
        0xd85s
        0x104fs
        0x1673s
        0x15b9s
        0xd32s
        0x146bs
        0x3b8s
        0x10dfs
        0x2652s
        0x1104s
        0xc10s
        0x2b6es
        0x348s
        0x1871s
        0x1e6s
        0x1770s
        0x53es
        0x288es
        0x1781s
        0x12bes
        0x1571s
        0x1192s
        0x1061s
        0x902s
        0x1979s
        0x5c3s
        0x18e4s
        0x2345s
        0x1f65s
        0x659s
        0x1b6cs
        0x1284s
        0x1662s
        0x1f14s
        0x18cfs
        0x195es
        0x1b05s
        0x2c8ds
        0x1d3fs
        0x27das
        0x27abs
        0x1df2s
        0x1d84s
        0x2cf5s
        0x60as
        0x19abs
        0x27d7s
        0x8d9s
        0x1c9fs
        0x16c0s
        0x2c84s
        0x2d3ds
        0x25fas
        0x8cbs
        0x2bbfs
        0x14ecs
        0x1cf0s
        0xb2ds
        0xfa3s
        0x23ffs
        0x1e4s
        0x1d66s
        0x24c1s
        0x2fcbs
        0x180ds
        0x2341s
        0x849s
        0x280fs
        0x9d7s
        0x253ds
        0xef0s
        0x21e2s
        0x2c9bs
        0x2a88s
        0x129as
        0x2c27s
        0x1001s
        0x96es
        0x1960s
        0x26e1s
        0x293as
        0x328s
        0xbb7s
        0x852s
        0x10bes
        0x2f2es
        0x1d15s
        0x140cs
        0x1eebs
        0xf5s
        0x1756s
        0x130as
        0x1c7cs
        0x1d88s
        0x292bs
        0x26e0s
        0x2373s
        0x841s
        0xe89s
        0x282ds
        0x2726s
        0x256as
        0x22e6s
        0x2b42s
        0x251as
        0x126s
        0x1267s
        0xd3fs
        0x561s
        0x2370s
        0x27cds
        0x11d9s
        0x2a8as
        0x26b5s
        0x1b0bs
        0x35s
        0x122ds
        0x1b7s
        0x280ds
        0x1b74s
        0x27dfs
        0x2097s
        0x475s
        0x9fcs
        0x1db1s
        0x1fd6s
        0x2986s
        0x21c8s
        0x2668s
        0x1f0fs
        0x2beds
        0x853s
        0x1685s
        0x2867s
        0x2635s
        0xa9es
        0x58bs
        0x11b3s
        0xf04s
        0xfe2s
        0x10c5s
        0x2d89s
        0x2d05s
        0x2c59s
        0x10d9s
        0x1305s
        0x2f9as
        0x64bs
        0x2a8cs
        0x2ce1s
        0x2281s
        0x959s
        0xfs
        0x2a4es
        0x138bs
        0x11s
        0x235s
        0x1703s
        0x2f91s
        0x2b32s
        0x28acs
        0x22b5s
        0xf86s
        0x2ae5s
        0x1bdas
        0x16d0s
        0x28f2s
        0x2092s
        0x1793s
        0x1b34s
        0x626s
        0x2ab8s
        0x7e4s
        0x9a1s
        0x1fffs
        0x180s
        0xa52s
        0xaa9s
        0x1517s
        0x87fs
        0x24b4s
        0x2ed3s
        0x1f63s
        0x1117s
        0x19d3s
        0x1392s
        0x2e24s
        0x23abs
        0x2ca3s
        0x68s
        0x18ccs
        0x25abs
        0x1a65s
        0x2f4es
        0x15f1s
        0x2ab7s
        0x21ds
        0x87s
        0xbe1s
        0x1c20s
        0x197es
        0x13dds
        0x2f68s
        0x34as
        0x1021s
        0x1e05s
        0x2b47s
        0x20eas
        0x3f0s
        0xaa5s
        0x2dfcs
        0x17aas
        0x44ds
        0x79es
        0x20e8s
        0x1638s
        0x1adcs
        0x2ee5s
        0x275fs
        0x14d7s
        0x39fs
        0x6eas
        0x111s
        0x20b9s
        0x8dfs
        0x1469s
        0x282bs
        0x74s
        0x2e1fs
        0x5bs
        0x2db3s
        0x2f5s
        0x518s
        0x1d64s
        0x1933s
        0x1f60s
        0x1fdas
        0x1d20s
        0x105fs
        0x135s
        0x90es
        0x8f4s
        0x2899s
        0x2d77s
        0x2509s
        0x2fces
        0x2962s
        0x2561s
        0x1ee8s
        0x2880s
        0x26a1s
        0x2fd4s
        0x1c0bs
        0xf54s
        0xc74s
        0x16fs
        0x81ds
        0x150s
        0x1508s
        0x15ffs
        0x2194s
        0x120ds
        0x6efs
        0x22a2s
        0x1c3s
        0x17dcs
        0x525s
        0x1866s
        0x225bs
        0x1708s
        0x1c73s
        0xc3cs
        0x2d2cs
        0x1371s
        0x2f81s
        0x1ccbs
        0x556s
        0x2f62s
        0x297bs
        0xee1s
        0x141ds
        0x189cs
        0xa4es
        0x1065s
        0x58as
        0x2751s
        0x103cs
        0x20b5s
        0x21c4s
        0x28cds
        0x372s
        0x1fdes
        0x27bds
        0x2623s
        0x2f9fs
        0x1cbs
        0xb96s
        0xc5es
        0x195s
        0x1388s
        0x245fs
        0x1904s
        0x231as
        0x60fs
        0x1fefs
        0xe2es
        0x2a0es
        0x2431s
        0x2bcs
        0x217ds
        0x2524s
        0x19e6s
        0x2cads
        0x2d4bs
        0x16das
        0xf6es
        0x12a7s
        0x2ea5s
        0x5a6s
        0x1782s
        0xd3as
        0x2cces
        0x14bes
        0x1564s
        0x229s
        0x2502s
        0xa1as
        0x597s
        0xab5s
        0x1d9s
        0x2c77s
        0x1289s
        0x344s
        0xfdes
        0x29aas
        0x1e2fs
        0x2de8s
        0x159es
        0x138s
        0x10d3s
        0x10ffs
        0x1684s
        0x21e7s
        0x20bds
        0x1ffbs
        0x5s
        0x1ce3s
        0x110bs
        0x480s
        0x152ds
        0x146fs
        0x1949s
        0x1b4s
        0x1d8fs
        0x219bs
        0x1855s
        0x2026s
    .end array-data
.end method


# virtual methods
.method complete_private([BI[BI[BI[BII[SI)Z
    .locals 14
    .param p1, "srcG"    # [B
    .param p2, "G"    # I
    .param p3, "srcf"    # [B
    .param p4, "f"    # I
    .param p5, "srcg"    # [B
    .param p6, "g"    # I
    .param p7, "srcF"    # [B
    .param p8, "F"    # I
    .param p9, "logn"    # I
    .param p10, "srctmp"    # [S
    .param p11, "tmp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcG",
            "G",
            "srcf",
            "f",
            "srcg",
            "g",
            "srcF",
            "F",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 705
    move/from16 v5, p9

    move-object/from16 v1, p10

    const/4 v6, 0x1

    .line 709
    .local v6, "success":Z
    const/4 v7, 0x1

    shl-int v8, v7, v5

    .line 710
    .local v8, "n":I
    move/from16 v2, p11

    .line 711
    .local v2, "t1":I
    add-int v4, v2, v8

    .line 712
    .local v4, "t2":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "u":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 714
    add-int v0, v2, v9

    add-int v3, p6, v9

    aget-byte v3, p5, v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_conv_small(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v0

    .line 715
    add-int v0, v4, v9

    add-int v3, p8, v9

    aget-byte v3, p7, v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_conv_small(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v0

    .line 712
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {p0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 718
    invoke-virtual {p0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 719
    invoke-virtual {p0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_poly_tomonty([SII)V

    .line 720
    move-object/from16 v3, p10

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_poly_montymul_ntt([SI[SII)V

    .line 721
    const/4 v3, 0x0

    .end local v9    # "u":I
    .local v3, "u":I
    :goto_1
    if-ge v3, v8, :cond_1

    .line 723
    add-int v9, v4, v3

    add-int v10, p4, v3

    aget-byte v10, p3, v10

    invoke-virtual {p0, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_conv_small(I)I

    move-result v10

    int-to-short v10, v10

    aput-short v10, v1, v9

    .line 721
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 725
    :cond_1
    invoke-virtual {p0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 726
    const/4 v3, 0x0

    :goto_2
    const/4 v9, 0x0

    if-ge v3, v8, :cond_3

    .line 728
    add-int v10, v4, v3

    aget-short v10, v1, v10

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    :cond_2
    and-int/2addr v6, v9

    .line 729
    add-int v9, v2, v3

    add-int v10, v2, v3

    aget-short v10, v1, v10

    add-int v11, v4, v3

    aget-short v11, v1, v11

    invoke-virtual {p0, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_div_12289(II)I

    move-result v10

    int-to-short v10, v10

    aput-short v10, v1, v9

    .line 726
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 731
    :cond_3
    invoke-virtual {p0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_iNTT([SII)V

    .line 732
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_5

    .line 737
    add-int v10, v2, v3

    aget-short v10, v1, v10

    const v11, 0xffff

    and-int/2addr v10, v11

    .line 738
    .local v10, "w":I
    add-int/lit16 v11, v10, -0x1800

    ushr-int/lit8 v11, v11, 0x1f

    neg-int v11, v11

    not-int v11, v11

    and-int/lit16 v11, v11, 0x3001

    sub-int/2addr v10, v11

    .line 739
    move v11, v10

    .line 740
    .local v11, "gi":I
    const/16 v12, -0x7f

    if-lt v11, v12, :cond_4

    const/16 v12, 0x7f

    if-gt v11, v12, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    and-int/2addr v6, v12

    .line 741
    add-int v12, p2, v3

    int-to-byte v13, v11

    aput-byte v13, p1, v12

    .line 732
    .end local v10    # "w":I
    .end local v11    # "gi":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 743
    :cond_5
    return v6
.end method

.method compute_public([SI[BI[BII[SI)I
    .locals 9
    .param p1, "srch"    # [S
    .param p2, "h"    # I
    .param p3, "srcf"    # [B
    .param p4, "f"    # I
    .param p5, "srcg"    # [B
    .param p6, "g"    # I
    .param p7, "logn"    # I
    .param p8, "srctmp"    # [S
    .param p9, "tmp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srch",
            "h",
            "srcf",
            "f",
            "srcg",
            "g",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 679
    move/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v2, 0x1

    shl-int v3, v2, v0

    .line 680
    .local v3, "n":I
    move/from16 v4, p9

    .line 681
    .local v4, "tt":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 683
    add-int v6, v4, v5

    add-int v7, p4, v5

    aget-byte v7, p3, v7

    invoke-virtual {p0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_conv_small(I)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v1, v6

    .line 684
    add-int v6, p2, v5

    add-int v7, p6, v5

    aget-byte v7, p5, v7

    invoke-virtual {p0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_conv_small(I)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, p1, v6

    .line 681
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 687
    invoke-virtual {p0, v1, v4, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 688
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    .line 690
    add-int v6, v4, v5

    aget-short v6, v1, v6

    if-nez v6, :cond_1

    .line 692
    const/4 v2, 0x0

    return v2

    .line 694
    :cond_1
    add-int v6, p2, v5

    add-int v7, p2, v5

    aget-short v7, p1, v7

    add-int v8, v4, v5

    aget-short v8, v1, v8

    invoke-virtual {p0, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_div_12289(II)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, p1, v6

    .line 688
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 696
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_iNTT([SII)V

    .line 697
    return v2
.end method

.method count_nttzero([SII[SI)I
    .locals 7
    .param p1, "srcsig"    # [S
    .param p2, "sig"    # I
    .param p3, "logn"    # I
    .param p4, "srctmp"    # [S
    .param p5, "tmp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcsig",
            "sig",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 837
    const/4 v0, 0x1

    shl-int v1, v0, p3

    .line 838
    .local v1, "n":I
    move v2, p5

    .line 839
    .local v2, "s2":I
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 843
    add-int v4, p2, v3

    aget-short v4, p1, v4

    .line 844
    .local v4, "w":I
    ushr-int/lit8 v5, v4, 0x1f

    neg-int v5, v5

    and-int/lit16 v5, v5, 0x3001

    add-int/2addr v4, v5

    .line 845
    add-int v5, v2, v3

    int-to-short v6, v4

    aput-short v6, p4, v5

    .line 839
    .end local v4    # "w":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {p0, p4, v2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 848
    const/4 v4, 0x0

    .line 849
    .local v4, "r":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 853
    add-int v5, v2, v3

    aget-short v5, p4, v5

    const v6, 0xffff

    and-int/2addr v5, v6

    sub-int/2addr v5, v0

    .line 854
    .local v5, "w":I
    ushr-int/lit8 v6, v5, 0x1f

    add-int/2addr v4, v6

    .line 849
    .end local v5    # "w":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 856
    :cond_1
    return v4
.end method

.method is_invertible([SII[SI)I
    .locals 7
    .param p1, "srcs2"    # [S
    .param p2, "s2"    # I
    .param p3, "logn"    # I
    .param p4, "srctmp"    # [S
    .param p5, "tmp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcs2",
            "s2",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 753
    const/4 v0, 0x1

    shl-int v1, v0, p3

    .line 754
    .local v1, "n":I
    move v2, p5

    .line 755
    .local v2, "tt":I
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 759
    add-int v4, p2, v3

    aget-short v4, p1, v4

    .line 760
    .local v4, "w":I
    ushr-int/lit8 v5, v4, 0x1f

    neg-int v5, v5

    and-int/lit16 v5, v5, 0x3001

    add-int/2addr v4, v5

    .line 761
    add-int v5, v2, v3

    int-to-short v6, v4

    aput-short v6, p4, v5

    .line 755
    .end local v4    # "w":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 763
    :cond_0
    invoke-virtual {p0, p4, v2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 764
    const/4 v4, 0x0

    .line 765
    .local v4, "r":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 767
    add-int v5, v2, v3

    aget-short v5, p4, v5

    const v6, 0xffff

    and-int/2addr v5, v6

    sub-int/2addr v5, v0

    or-int/2addr v4, v5

    .line 765
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 769
    :cond_1
    ushr-int/lit8 v5, v4, 0x1f

    sub-int/2addr v0, v5

    return v0
.end method

.method mq_NTT([SII)V
    .locals 13
    .param p1, "srca"    # [S
    .param p2, "a"    # I
    .param p3, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "logn"
        }
    .end annotation

    .line 484
    const/4 v0, 0x1

    shl-int v0, v0, p3

    .line 485
    .local v0, "n":I
    move v1, v0

    .line 486
    .local v1, "t":I
    const/4 v2, 0x1

    .local v2, "m":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 490
    shr-int/lit8 v3, v1, 0x1

    .line 491
    .local v3, "ht":I
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j1":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 496
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->GMb:[S

    add-int v7, v2, v4

    aget-short v6, v6, v7

    .line 497
    .local v6, "s":I
    add-int v7, v5, v3

    .line 498
    .local v7, "j2":I
    move v8, v5

    .local v8, "j":I
    :goto_2
    if-ge v8, v7, :cond_0

    .line 502
    add-int v9, p2, v8

    aget-short v9, p1, v9

    const v10, 0xffff

    and-int/2addr v9, v10

    .line 503
    .local v9, "u":I
    add-int v10, p2, v8

    add-int/2addr v10, v3

    aget-short v10, p1, v10

    invoke-virtual {p0, v10, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v10

    .line 504
    .local v10, "v":I
    add-int v11, p2, v8

    invoke-virtual {p0, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_add(II)I

    move-result v12

    int-to-short v12, v12

    aput-short v12, p1, v11

    .line 505
    add-int v11, p2, v8

    add-int/2addr v11, v3

    invoke-virtual {p0, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_sub(II)I

    move-result v12

    int-to-short v12, v12

    aput-short v12, p1, v11

    .line 498
    .end local v9    # "u":I
    .end local v10    # "v":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 491
    .end local v6    # "s":I
    .end local v7    # "j2":I
    .end local v8    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v1

    goto :goto_1

    .line 508
    :cond_1
    move v1, v3

    .line 486
    .end local v3    # "ht":I
    .end local v4    # "i":I
    .end local v5    # "j1":I
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    :cond_2
    return-void
.end method

.method mq_add(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 337
    add-int v0, p1, p2

    add-int/lit16 v0, v0, -0x3001

    .line 338
    .local v0, "d":I
    ushr-int/lit8 v1, v0, 0x1f

    neg-int v1, v1

    and-int/lit16 v1, v1, 0x3001

    add-int/2addr v0, v1

    .line 339
    return v0
.end method

.method mq_conv_small(I)I
    .locals 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 318
    move v0, p1

    .line 319
    .local v0, "y":I
    ushr-int/lit8 v1, v0, 0x1f

    neg-int v1, v1

    and-int/lit16 v1, v1, 0x3001

    add-int/2addr v0, v1

    .line 320
    return v0
.end method

.method mq_div_12289(II)I
    .locals 22
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 450
    move-object/from16 v0, p0

    const/16 v1, 0x2ac8

    move/from16 v2, p2

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v1

    .line 451
    .local v1, "y0":I
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v3

    .line 452
    .local v3, "y1":I
    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v4

    .line 453
    .local v4, "y2":I
    invoke-virtual {v0, v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v5

    .line 454
    .local v5, "y3":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v6

    .line 455
    .local v6, "y4":I
    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v7

    .line 456
    .local v7, "y5":I
    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v8

    .line 457
    .local v8, "y6":I
    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v9

    .line 458
    .local v9, "y7":I
    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v10

    .line 459
    .local v10, "y8":I
    invoke-virtual {v0, v10, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v11

    .line 460
    .local v11, "y9":I
    invoke-virtual {v0, v11, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v12

    .line 461
    .local v12, "y10":I
    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v13

    .line 462
    .local v13, "y11":I
    invoke-virtual {v0, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v14

    .line 463
    .local v14, "y12":I
    invoke-virtual {v0, v14, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v15

    .line 464
    .local v15, "y13":I
    invoke-virtual {v0, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v2

    .line 465
    .local v2, "y14":I
    move/from16 v16, v3

    .end local v3    # "y1":I
    .local v16, "y1":I
    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v3

    .line 466
    .local v3, "y15":I
    move/from16 v17, v2

    .end local v2    # "y14":I
    .local v17, "y14":I
    invoke-virtual {v0, v3, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v2

    .line 467
    .local v2, "y16":I
    move/from16 v18, v3

    .end local v3    # "y15":I
    .local v18, "y15":I
    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montysqr(I)I

    move-result v3

    .line 468
    .local v3, "y17":I
    move/from16 v19, v2

    .end local v2    # "y16":I
    .local v19, "y16":I
    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v2

    .line 474
    .local v2, "y18":I
    move/from16 v20, v1

    move/from16 v1, p1

    .end local v1    # "y0":I
    .local v20, "y0":I
    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v21

    return v21
.end method

.method mq_iNTT([SII)V
    .locals 16
    .param p1, "srca"    # [S
    .param p2, "a"    # I
    .param p3, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "logn"
        }
    .end annotation

    .line 520
    move-object/from16 v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p3

    .line 521
    .local v2, "n":I
    const/4 v3, 0x1

    .line 522
    .local v3, "t":I
    move v4, v2

    .line 523
    .local v4, "m":I
    :goto_0
    if-le v4, v1, :cond_2

    .line 527
    shr-int/lit8 v5, v4, 0x1

    .line 528
    .local v5, "hm":I
    shl-int/lit8 v6, v3, 0x1

    .line 529
    .local v6, "dt":I
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .local v8, "j1":I
    :goto_1
    if-ge v7, v5, :cond_1

    .line 534
    add-int v9, v8, v3

    .line 535
    .local v9, "j2":I
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->iGMb:[S

    add-int v11, v5, v7

    aget-short v10, v10, v11

    .line 536
    .local v10, "s":I
    move v11, v8

    .local v11, "j":I
    :goto_2
    if-ge v11, v9, :cond_0

    .line 540
    add-int v12, p2, v11

    aget-short v12, p1, v12

    const v13, 0xffff

    and-int/2addr v12, v13

    .line 541
    .local v12, "u":I
    add-int v14, p2, v11

    add-int/2addr v14, v3

    aget-short v14, p1, v14

    and-int/2addr v13, v14

    .line 542
    .local v13, "v":I
    add-int v14, p2, v11

    invoke-virtual {v0, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_add(II)I

    move-result v15

    int-to-short v15, v15

    aput-short v15, p1, v14

    .line 543
    invoke-virtual {v0, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_sub(II)I

    move-result v14

    .line 544
    .local v14, "w":I
    add-int v15, p2, v11

    add-int/2addr v15, v3

    invoke-virtual {v0, v14, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p1, v15

    .line 536
    .end local v12    # "u":I
    .end local v13    # "v":I
    .end local v14    # "w":I
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x1

    goto :goto_2

    .line 529
    .end local v9    # "j2":I
    .end local v10    # "s":I
    .end local v11    # "j":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v6

    const/4 v1, 0x1

    goto :goto_1

    .line 547
    :cond_1
    move v3, v6

    .line 548
    move v4, v5

    .line 549
    .end local v5    # "hm":I
    .end local v6    # "dt":I
    .end local v7    # "i":I
    .end local v8    # "j1":I
    const/4 v1, 0x1

    goto :goto_0

    .line 560
    :cond_2
    const/16 v1, 0xffb

    .line 561
    .local v1, "ni":I
    move v4, v2

    :goto_3
    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 563
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_rshift1(I)I

    move-result v1

    .line 561
    shr-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 565
    :cond_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_4

    .line 567
    add-int v5, p2, v4

    add-int v6, p2, v4

    aget-short v6, p1, v6

    invoke-virtual {v0, v6, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, p1, v5

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 569
    :cond_4
    return-void
.end method

.method mq_montymul(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 383
    mul-int v0, p1, p2

    .line 384
    .local v0, "z":I
    mul-int/lit16 v1, v0, 0x2fff

    const v2, 0xffff

    and-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3001

    .line 392
    .local v1, "w":I
    add-int v2, v0, v1

    ushr-int/lit8 v0, v2, 0x10

    .line 399
    add-int/lit16 v0, v0, -0x3001

    .line 400
    ushr-int/lit8 v2, v0, 0x1f

    neg-int v2, v2

    and-int/lit16 v2, v2, 0x3001

    add-int/2addr v0, v2

    .line 401
    return v0
.end method

.method mq_montysqr(I)I
    .locals 1
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 409
    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v0

    return v0
.end method

.method mq_poly_montymul_ntt([SI[SII)V
    .locals 5
    .param p1, "srcf"    # [S
    .param p2, "f"    # I
    .param p3, "srcg"    # [S
    .param p4, "g"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcf",
            "f",
            "srcg",
            "g",
            "logn"
        }
    .end annotation

    .line 593
    const/4 v0, 0x1

    shl-int/2addr v0, p5

    .line 594
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 596
    add-int v2, p2, v1

    add-int v3, p2, v1

    aget-short v3, p1, v3

    add-int v4, p4, v1

    aget-short v4, p3, v4

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    :cond_0
    return-void
.end method

.method mq_poly_sub([SI[SII)V
    .locals 5
    .param p1, "srcf"    # [S
    .param p2, "f"    # I
    .param p3, "srcg"    # [S
    .param p4, "g"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcf",
            "f",
            "srcg",
            "g",
            "logn"
        }
    .end annotation

    .line 607
    const/4 v0, 0x1

    shl-int/2addr v0, p5

    .line 608
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 610
    add-int v2, p2, v1

    add-int v3, p2, v1

    aget-short v3, p1, v3

    add-int v4, p4, v1

    aget-short v4, p3, v4

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_sub(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 612
    :cond_0
    return-void
.end method

.method mq_poly_tomonty([SII)V
    .locals 5
    .param p1, "srcf"    # [S
    .param p2, "f"    # I
    .param p3, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcf",
            "f",
            "logn"
        }
    .end annotation

    .line 578
    const/4 v0, 0x1

    shl-int/2addr v0, p3

    .line 579
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 581
    add-int v2, p2, v1

    add-int v3, p2, v1

    aget-short v3, p1, v3

    const/16 v4, 0x2ac8

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_montymul(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_0
    return-void
.end method

.method mq_rshift1(I)I
    .locals 1
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 363
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    and-int/lit16 v0, v0, 0x3001

    add-int/2addr p1, v0

    .line 364
    ushr-int/lit8 v0, p1, 0x1

    return v0
.end method

.method mq_sub(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 353
    sub-int v0, p1, p2

    .line 354
    .local v0, "d":I
    ushr-int/lit8 v1, v0, 0x1f

    neg-int v1, v1

    and-int/lit16 v1, v1, 0x3001

    add-int/2addr v0, v1

    .line 355
    return v0
.end method

.method to_ntt_monty([SII)V
    .locals 0
    .param p1, "srch"    # [S
    .param p2, "h"    # I
    .param p3, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srch",
            "h",
            "logn"
        }
    .end annotation

    .line 619
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 620
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_poly_tomonty([SII)V

    .line 621
    return-void
.end method

.method verify_raw([SI[SI[SII[SI)I
    .locals 8
    .param p1, "srcc0"    # [S
    .param p2, "c0"    # I
    .param p3, "srcs2"    # [S
    .param p4, "s2"    # I
    .param p5, "srch"    # [S
    .param p6, "h"    # I
    .param p7, "logn"    # I
    .param p8, "srctmp"    # [S
    .param p9, "tmp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcc0",
            "c0",
            "srcs2",
            "s2",
            "srch",
            "h",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 630
    move v5, p7

    move-object/from16 v1, p8

    const/4 v0, 0x1

    shl-int v6, v0, v5

    .line 631
    .local v6, "n":I
    move/from16 v2, p9

    .line 636
    .local v2, "tt":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "u":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 640
    add-int v0, p4, v7

    aget-short v0, p3, v0

    .line 641
    .local v0, "w":I
    ushr-int/lit8 v3, v0, 0x1f

    neg-int v3, v3

    and-int/lit16 v3, v3, 0x3001

    add-int/2addr v0, v3

    .line 642
    add-int v3, v2, v7

    int-to-short v4, v0

    aput-short v4, v1, v3

    .line 636
    .end local v0    # "w":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 648
    :cond_0
    invoke-virtual {p0, v1, v2, p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 649
    move-object v0, p0

    move-object v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_poly_montymul_ntt([SI[SII)V

    .line 650
    invoke-virtual {p0, v1, v2, p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_iNTT([SII)V

    .line 651
    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_poly_sub([SI[SII)V

    .line 656
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_1

    .line 660
    add-int v0, v2, v7

    aget-short v0, p8, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 661
    .restart local v0    # "w":I
    rsub-int v1, v0, 0x1800

    ushr-int/lit8 v1, v1, 0x1f

    neg-int v1, v1

    and-int/lit16 v1, v1, 0x3001

    sub-int/2addr v0, v1

    .line 662
    add-int v1, v2, v7

    int-to-short v3, v0

    aput-short v3, p8, v1

    .line 656
    .end local v0    # "w":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 669
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    move-object v3, p3

    move v4, p4

    move v5, p7

    move-object/from16 v1, p8

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->is_short([SI[SII)I

    move-result v0

    return v0
.end method

.method verify_recover([SI[SI[SI[SII[SI)I
    .locals 12
    .param p1, "srch"    # [S
    .param p2, "h"    # I
    .param p3, "srcc0"    # [S
    .param p4, "c0"    # I
    .param p5, "srcs1"    # [S
    .param p6, "s1"    # I
    .param p7, "srcs2"    # [S
    .param p8, "s2"    # I
    .param p9, "logn"    # I
    .param p10, "srctmp"    # [S
    .param p11, "tmp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srch",
            "h",
            "srcc0",
            "c0",
            "srcs1",
            "s1",
            "srcs2",
            "s2",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 781
    move/from16 v5, p9

    move-object/from16 v6, p10

    const/4 v0, 0x1

    shl-int v7, v0, v5

    .line 787
    .local v7, "n":I
    move/from16 v8, p11

    .line 788
    .local v8, "tt":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    const v2, 0xffff

    if-ge v1, v7, :cond_0

    .line 792
    add-int v3, p8, v1

    aget-short v3, p7, v3

    .line 793
    .local v3, "w":I
    shr-int/lit8 v4, v3, 0x1f

    neg-int v4, v4

    and-int/lit16 v4, v4, 0x3001

    add-int/2addr v3, v4

    .line 794
    add-int v4, v8, v1

    int-to-short v9, v3

    aput-short v9, v6, v4

    .line 796
    add-int v4, p6, v1

    aget-short v3, p5, v4

    .line 797
    ushr-int/lit8 v4, v3, 0x1f

    neg-int v4, v4

    and-int/lit16 v4, v4, 0x3001

    add-int/2addr v3, v4

    .line 798
    add-int v4, p4, v1

    aget-short v4, p3, v4

    and-int/2addr v2, v3

    invoke-virtual {p0, v4, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_sub(II)I

    move-result v2

    .line 799
    .end local v3    # "w":I
    .local v2, "w":I
    add-int v3, p2, v1

    int-to-short v4, v2

    aput-short v4, p1, v3

    .line 788
    .end local v2    # "w":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {p0, v6, v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 810
    invoke-virtual {p0, v6, p2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_NTT([SII)V

    .line 811
    const/4 v3, 0x0

    .line 812
    .local v3, "r":I
    const/4 v1, 0x0

    move v9, v1

    move v10, v3

    .end local v1    # "u":I
    .end local v3    # "r":I
    .local v9, "u":I
    .local v10, "r":I
    :goto_1
    if-ge v9, v7, :cond_1

    .line 814
    add-int v1, v8, v9

    aget-short v1, v6, v1

    and-int/2addr v1, v2

    sub-int/2addr v1, v0

    or-int/2addr v10, v1

    .line 815
    add-int v1, p2, v9

    add-int v3, p2, v9

    aget-short v3, p1, v3

    and-int/2addr v3, v2

    add-int v4, v8, v9

    aget-short v4, v6, v4

    and-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_div_12289(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p1, v1

    .line 812
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 818
    :cond_1
    invoke-virtual {p0, p1, p2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->mq_iNTT([SII)V

    .line 826
    not-int v11, v10

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->is_short([SI[SII)I

    move-result v0

    neg-int v0, v0

    and-int/2addr v0, v11

    .line 827
    .end local v10    # "r":I
    .local v0, "r":I
    ushr-int/lit8 v1, v0, 0x1f

    return v1
.end method

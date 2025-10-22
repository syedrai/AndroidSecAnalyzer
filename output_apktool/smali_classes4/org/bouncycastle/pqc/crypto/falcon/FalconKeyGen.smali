.class Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;
.super Ljava/lang/Object;
.source "FalconKeyGen.java"


# instance fields
.field final DEPTH_INT_FG:I

.field final MAX_BL_LARGE:[I

.field final MAX_BL_SMALL:[I

.field private REV10:[S

.field final bitlength_avg:[I

.field final bitlength_std:[I

.field codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

.field fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

.field final gauss_1024_12289:[J

.field primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

.field vrfy:Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/16 v0, 0x400

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->REV10:[S

    .line 1675
    const/16 v0, 0x1b

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    .line 1822
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    .line 1826
    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_LARGE:[I

    .line 1835
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_avg:[I

    .line 1848
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_std:[I

    .line 1866
    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->DEPTH_INT_FG:I

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    .line 16
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    .line 17
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->vrfy:Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    .line 18
    return-void

    :array_0
    .array-data 2
        0x0s
        0x200s
        0x100s
        0x300s
        0x80s
        0x280s
        0x180s
        0x380s
        0x40s
        0x240s
        0x140s
        0x340s
        0xc0s
        0x2c0s
        0x1c0s
        0x3c0s
        0x20s
        0x220s
        0x120s
        0x320s
        0xa0s
        0x2a0s
        0x1a0s
        0x3a0s
        0x60s
        0x260s
        0x160s
        0x360s
        0xe0s
        0x2e0s
        0x1e0s
        0x3e0s
        0x10s
        0x210s
        0x110s
        0x310s
        0x90s
        0x290s
        0x190s
        0x390s
        0x50s
        0x250s
        0x150s
        0x350s
        0xd0s
        0x2d0s
        0x1d0s
        0x3d0s
        0x30s
        0x230s
        0x130s
        0x330s
        0xb0s
        0x2b0s
        0x1b0s
        0x3b0s
        0x70s
        0x270s
        0x170s
        0x370s
        0xf0s
        0x2f0s
        0x1f0s
        0x3f0s
        0x8s
        0x208s
        0x108s
        0x308s
        0x88s
        0x288s
        0x188s
        0x388s
        0x48s
        0x248s
        0x148s
        0x348s
        0xc8s
        0x2c8s
        0x1c8s
        0x3c8s
        0x28s
        0x228s
        0x128s
        0x328s
        0xa8s
        0x2a8s
        0x1a8s
        0x3a8s
        0x68s
        0x268s
        0x168s
        0x368s
        0xe8s
        0x2e8s
        0x1e8s
        0x3e8s
        0x18s
        0x218s
        0x118s
        0x318s
        0x98s
        0x298s
        0x198s
        0x398s
        0x58s
        0x258s
        0x158s
        0x358s
        0xd8s
        0x2d8s
        0x1d8s
        0x3d8s
        0x38s
        0x238s
        0x138s
        0x338s
        0xb8s
        0x2b8s
        0x1b8s
        0x3b8s
        0x78s
        0x278s
        0x178s
        0x378s
        0xf8s
        0x2f8s
        0x1f8s
        0x3f8s
        0x4s
        0x204s
        0x104s
        0x304s
        0x84s
        0x284s
        0x184s
        0x384s
        0x44s
        0x244s
        0x144s
        0x344s
        0xc4s
        0x2c4s
        0x1c4s
        0x3c4s
        0x24s
        0x224s
        0x124s
        0x324s
        0xa4s
        0x2a4s
        0x1a4s
        0x3a4s
        0x64s
        0x264s
        0x164s
        0x364s
        0xe4s
        0x2e4s
        0x1e4s
        0x3e4s
        0x14s
        0x214s
        0x114s
        0x314s
        0x94s
        0x294s
        0x194s
        0x394s
        0x54s
        0x254s
        0x154s
        0x354s
        0xd4s
        0x2d4s
        0x1d4s
        0x3d4s
        0x34s
        0x234s
        0x134s
        0x334s
        0xb4s
        0x2b4s
        0x1b4s
        0x3b4s
        0x74s
        0x274s
        0x174s
        0x374s
        0xf4s
        0x2f4s
        0x1f4s
        0x3f4s
        0xcs
        0x20cs
        0x10cs
        0x30cs
        0x8cs
        0x28cs
        0x18cs
        0x38cs
        0x4cs
        0x24cs
        0x14cs
        0x34cs
        0xccs
        0x2ccs
        0x1ccs
        0x3ccs
        0x2cs
        0x22cs
        0x12cs
        0x32cs
        0xacs
        0x2acs
        0x1acs
        0x3acs
        0x6cs
        0x26cs
        0x16cs
        0x36cs
        0xecs
        0x2ecs
        0x1ecs
        0x3ecs
        0x1cs
        0x21cs
        0x11cs
        0x31cs
        0x9cs
        0x29cs
        0x19cs
        0x39cs
        0x5cs
        0x25cs
        0x15cs
        0x35cs
        0xdcs
        0x2dcs
        0x1dcs
        0x3dcs
        0x3cs
        0x23cs
        0x13cs
        0x33cs
        0xbcs
        0x2bcs
        0x1bcs
        0x3bcs
        0x7cs
        0x27cs
        0x17cs
        0x37cs
        0xfcs
        0x2fcs
        0x1fcs
        0x3fcs
        0x2s
        0x202s
        0x102s
        0x302s
        0x82s
        0x282s
        0x182s
        0x382s
        0x42s
        0x242s
        0x142s
        0x342s
        0xc2s
        0x2c2s
        0x1c2s
        0x3c2s
        0x22s
        0x222s
        0x122s
        0x322s
        0xa2s
        0x2a2s
        0x1a2s
        0x3a2s
        0x62s
        0x262s
        0x162s
        0x362s
        0xe2s
        0x2e2s
        0x1e2s
        0x3e2s
        0x12s
        0x212s
        0x112s
        0x312s
        0x92s
        0x292s
        0x192s
        0x392s
        0x52s
        0x252s
        0x152s
        0x352s
        0xd2s
        0x2d2s
        0x1d2s
        0x3d2s
        0x32s
        0x232s
        0x132s
        0x332s
        0xb2s
        0x2b2s
        0x1b2s
        0x3b2s
        0x72s
        0x272s
        0x172s
        0x372s
        0xf2s
        0x2f2s
        0x1f2s
        0x3f2s
        0xas
        0x20as
        0x10as
        0x30as
        0x8as
        0x28as
        0x18as
        0x38as
        0x4as
        0x24as
        0x14as
        0x34as
        0xcas
        0x2cas
        0x1cas
        0x3cas
        0x2as
        0x22as
        0x12as
        0x32as
        0xaas
        0x2aas
        0x1aas
        0x3aas
        0x6as
        0x26as
        0x16as
        0x36as
        0xeas
        0x2eas
        0x1eas
        0x3eas
        0x1as
        0x21as
        0x11as
        0x31as
        0x9as
        0x29as
        0x19as
        0x39as
        0x5as
        0x25as
        0x15as
        0x35as
        0xdas
        0x2das
        0x1das
        0x3das
        0x3as
        0x23as
        0x13as
        0x33as
        0xbas
        0x2bas
        0x1bas
        0x3bas
        0x7as
        0x27as
        0x17as
        0x37as
        0xfas
        0x2fas
        0x1fas
        0x3fas
        0x6s
        0x206s
        0x106s
        0x306s
        0x86s
        0x286s
        0x186s
        0x386s
        0x46s
        0x246s
        0x146s
        0x346s
        0xc6s
        0x2c6s
        0x1c6s
        0x3c6s
        0x26s
        0x226s
        0x126s
        0x326s
        0xa6s
        0x2a6s
        0x1a6s
        0x3a6s
        0x66s
        0x266s
        0x166s
        0x366s
        0xe6s
        0x2e6s
        0x1e6s
        0x3e6s
        0x16s
        0x216s
        0x116s
        0x316s
        0x96s
        0x296s
        0x196s
        0x396s
        0x56s
        0x256s
        0x156s
        0x356s
        0xd6s
        0x2d6s
        0x1d6s
        0x3d6s
        0x36s
        0x236s
        0x136s
        0x336s
        0xb6s
        0x2b6s
        0x1b6s
        0x3b6s
        0x76s
        0x276s
        0x176s
        0x376s
        0xf6s
        0x2f6s
        0x1f6s
        0x3f6s
        0xes
        0x20es
        0x10es
        0x30es
        0x8es
        0x28es
        0x18es
        0x38es
        0x4es
        0x24es
        0x14es
        0x34es
        0xces
        0x2ces
        0x1ces
        0x3ces
        0x2es
        0x22es
        0x12es
        0x32es
        0xaes
        0x2aes
        0x1aes
        0x3aes
        0x6es
        0x26es
        0x16es
        0x36es
        0xees
        0x2ees
        0x1ees
        0x3ees
        0x1es
        0x21es
        0x11es
        0x31es
        0x9es
        0x29es
        0x19es
        0x39es
        0x5es
        0x25es
        0x15es
        0x35es
        0xdes
        0x2des
        0x1des
        0x3des
        0x3es
        0x23es
        0x13es
        0x33es
        0xbes
        0x2bes
        0x1bes
        0x3bes
        0x7es
        0x27es
        0x17es
        0x37es
        0xfes
        0x2fes
        0x1fes
        0x3fes
        0x1s
        0x201s
        0x101s
        0x301s
        0x81s
        0x281s
        0x181s
        0x381s
        0x41s
        0x241s
        0x141s
        0x341s
        0xc1s
        0x2c1s
        0x1c1s
        0x3c1s
        0x21s
        0x221s
        0x121s
        0x321s
        0xa1s
        0x2a1s
        0x1a1s
        0x3a1s
        0x61s
        0x261s
        0x161s
        0x361s
        0xe1s
        0x2e1s
        0x1e1s
        0x3e1s
        0x11s
        0x211s
        0x111s
        0x311s
        0x91s
        0x291s
        0x191s
        0x391s
        0x51s
        0x251s
        0x151s
        0x351s
        0xd1s
        0x2d1s
        0x1d1s
        0x3d1s
        0x31s
        0x231s
        0x131s
        0x331s
        0xb1s
        0x2b1s
        0x1b1s
        0x3b1s
        0x71s
        0x271s
        0x171s
        0x371s
        0xf1s
        0x2f1s
        0x1f1s
        0x3f1s
        0x9s
        0x209s
        0x109s
        0x309s
        0x89s
        0x289s
        0x189s
        0x389s
        0x49s
        0x249s
        0x149s
        0x349s
        0xc9s
        0x2c9s
        0x1c9s
        0x3c9s
        0x29s
        0x229s
        0x129s
        0x329s
        0xa9s
        0x2a9s
        0x1a9s
        0x3a9s
        0x69s
        0x269s
        0x169s
        0x369s
        0xe9s
        0x2e9s
        0x1e9s
        0x3e9s
        0x19s
        0x219s
        0x119s
        0x319s
        0x99s
        0x299s
        0x199s
        0x399s
        0x59s
        0x259s
        0x159s
        0x359s
        0xd9s
        0x2d9s
        0x1d9s
        0x3d9s
        0x39s
        0x239s
        0x139s
        0x339s
        0xb9s
        0x2b9s
        0x1b9s
        0x3b9s
        0x79s
        0x279s
        0x179s
        0x379s
        0xf9s
        0x2f9s
        0x1f9s
        0x3f9s
        0x5s
        0x205s
        0x105s
        0x305s
        0x85s
        0x285s
        0x185s
        0x385s
        0x45s
        0x245s
        0x145s
        0x345s
        0xc5s
        0x2c5s
        0x1c5s
        0x3c5s
        0x25s
        0x225s
        0x125s
        0x325s
        0xa5s
        0x2a5s
        0x1a5s
        0x3a5s
        0x65s
        0x265s
        0x165s
        0x365s
        0xe5s
        0x2e5s
        0x1e5s
        0x3e5s
        0x15s
        0x215s
        0x115s
        0x315s
        0x95s
        0x295s
        0x195s
        0x395s
        0x55s
        0x255s
        0x155s
        0x355s
        0xd5s
        0x2d5s
        0x1d5s
        0x3d5s
        0x35s
        0x235s
        0x135s
        0x335s
        0xb5s
        0x2b5s
        0x1b5s
        0x3b5s
        0x75s
        0x275s
        0x175s
        0x375s
        0xf5s
        0x2f5s
        0x1f5s
        0x3f5s
        0xds
        0x20ds
        0x10ds
        0x30ds
        0x8ds
        0x28ds
        0x18ds
        0x38ds
        0x4ds
        0x24ds
        0x14ds
        0x34ds
        0xcds
        0x2cds
        0x1cds
        0x3cds
        0x2ds
        0x22ds
        0x12ds
        0x32ds
        0xads
        0x2ads
        0x1ads
        0x3ads
        0x6ds
        0x26ds
        0x16ds
        0x36ds
        0xeds
        0x2eds
        0x1eds
        0x3eds
        0x1ds
        0x21ds
        0x11ds
        0x31ds
        0x9ds
        0x29ds
        0x19ds
        0x39ds
        0x5ds
        0x25ds
        0x15ds
        0x35ds
        0xdds
        0x2dds
        0x1dds
        0x3dds
        0x3ds
        0x23ds
        0x13ds
        0x33ds
        0xbds
        0x2bds
        0x1bds
        0x3bds
        0x7ds
        0x27ds
        0x17ds
        0x37ds
        0xfds
        0x2fds
        0x1fds
        0x3fds
        0x3s
        0x203s
        0x103s
        0x303s
        0x83s
        0x283s
        0x183s
        0x383s
        0x43s
        0x243s
        0x143s
        0x343s
        0xc3s
        0x2c3s
        0x1c3s
        0x3c3s
        0x23s
        0x223s
        0x123s
        0x323s
        0xa3s
        0x2a3s
        0x1a3s
        0x3a3s
        0x63s
        0x263s
        0x163s
        0x363s
        0xe3s
        0x2e3s
        0x1e3s
        0x3e3s
        0x13s
        0x213s
        0x113s
        0x313s
        0x93s
        0x293s
        0x193s
        0x393s
        0x53s
        0x253s
        0x153s
        0x353s
        0xd3s
        0x2d3s
        0x1d3s
        0x3d3s
        0x33s
        0x233s
        0x133s
        0x333s
        0xb3s
        0x2b3s
        0x1b3s
        0x3b3s
        0x73s
        0x273s
        0x173s
        0x373s
        0xf3s
        0x2f3s
        0x1f3s
        0x3f3s
        0xbs
        0x20bs
        0x10bs
        0x30bs
        0x8bs
        0x28bs
        0x18bs
        0x38bs
        0x4bs
        0x24bs
        0x14bs
        0x34bs
        0xcbs
        0x2cbs
        0x1cbs
        0x3cbs
        0x2bs
        0x22bs
        0x12bs
        0x32bs
        0xabs
        0x2abs
        0x1abs
        0x3abs
        0x6bs
        0x26bs
        0x16bs
        0x36bs
        0xebs
        0x2ebs
        0x1ebs
        0x3ebs
        0x1bs
        0x21bs
        0x11bs
        0x31bs
        0x9bs
        0x29bs
        0x19bs
        0x39bs
        0x5bs
        0x25bs
        0x15bs
        0x35bs
        0xdbs
        0x2dbs
        0x1dbs
        0x3dbs
        0x3bs
        0x23bs
        0x13bs
        0x33bs
        0xbbs
        0x2bbs
        0x1bbs
        0x3bbs
        0x7bs
        0x27bs
        0x17bs
        0x37bs
        0xfbs
        0x2fbs
        0x1fbs
        0x3fbs
        0x7s
        0x207s
        0x107s
        0x307s
        0x87s
        0x287s
        0x187s
        0x387s
        0x47s
        0x247s
        0x147s
        0x347s
        0xc7s
        0x2c7s
        0x1c7s
        0x3c7s
        0x27s
        0x227s
        0x127s
        0x327s
        0xa7s
        0x2a7s
        0x1a7s
        0x3a7s
        0x67s
        0x267s
        0x167s
        0x367s
        0xe7s
        0x2e7s
        0x1e7s
        0x3e7s
        0x17s
        0x217s
        0x117s
        0x317s
        0x97s
        0x297s
        0x197s
        0x397s
        0x57s
        0x257s
        0x157s
        0x357s
        0xd7s
        0x2d7s
        0x1d7s
        0x3d7s
        0x37s
        0x237s
        0x137s
        0x337s
        0xb7s
        0x2b7s
        0x1b7s
        0x3b7s
        0x77s
        0x277s
        0x177s
        0x377s
        0xf7s
        0x2f7s
        0x1f7s
        0x3f7s
        0xfs
        0x20fs
        0x10fs
        0x30fs
        0x8fs
        0x28fs
        0x18fs
        0x38fs
        0x4fs
        0x24fs
        0x14fs
        0x34fs
        0xcfs
        0x2cfs
        0x1cfs
        0x3cfs
        0x2fs
        0x22fs
        0x12fs
        0x32fs
        0xafs
        0x2afs
        0x1afs
        0x3afs
        0x6fs
        0x26fs
        0x16fs
        0x36fs
        0xefs
        0x2efs
        0x1efs
        0x3efs
        0x1fs
        0x21fs
        0x11fs
        0x31fs
        0x9fs
        0x29fs
        0x19fs
        0x39fs
        0x5fs
        0x25fs
        0x15fs
        0x35fs
        0xdfs
        0x2dfs
        0x1dfs
        0x3dfs
        0x3fs
        0x23fs
        0x13fs
        0x33fs
        0xbfs
        0x2bfs
        0x1bfs
        0x3bfs
        0x7fs
        0x27fs
        0x17fs
        0x37fs
        0xffs
        0x2ffs
        0x1ffs
        0x3ffs
    .end array-data

    :array_1
    .array-data 8
        0x11d137d82df2ab58L    # 7.442682835852581E-223
        0x590c40f63ff5f974L    # 9.119782724244173E120
        0x3898e41d85b975b7L    # 4.681490977171112E-36
        0x20a964ef50858ff9L
        0x1107d1ae973857ebL    # 1.256834460130344E-226
        0x7fe1ec29220ea37L
        0x35dafcacd37a439L
        0x144d98306216d42L
        0x6d6beeeaf81655L
        0x20e1a00d6fa84cL
        0x8cdddcd9dda9cL
        0x2192fc3dcdcb4L
        0x71dfcd3c57e9L    # 6.1860000510735E-310
        0x1574938d76ebL
        0x3974b0c33e5L
        0x889d3da6feL
        0x1204ddc6cbL
        0x21bd3b27aL
        0x38091f5e
        0x5287db0
        0x6bc528
        0x7cbfb
        0x7ffc
        0x746
        0x5e
        0x4
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x4
        0x7
        0xe
        0x1b
        0x35
        0x6a
        0xd1
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
        0x5
        0x7
        0xc
        0x15
        0x28
        0x4e
        0x9d
        0x134
    .end array-data

    :array_4
    .array-data 4
        0x4
        0xb
        0x18
        0x32
        0x66
        0xca
        0x191
        0x31a
        0x629
        0xc42
        0x18a4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x4
        0x5
        0x8
        0xd
        0x19
    .end array-data
.end method

.method private static mkn(I)I
    .locals 1
    .param p0, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logn"
        }
    .end annotation

    .line 22
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private toUnsignedLong(I)J
    .locals 4
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 3787
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method get_rng_u64(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)J
    .locals 8
    .param p1, "rng"    # Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rng"
        }
    .end annotation

    .line 1653
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 1655
    .local v1, "tmp":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    .line 1656
    aget-byte v2, v1, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x10

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x18

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x4

    aget-byte v0, v1, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x5

    aget-byte v0, v1, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x28

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x6

    aget-byte v0, v1, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x30

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    const/4 v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v6, v0

    and-long/2addr v4, v6

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    return-wide v2
.end method

.method keygen(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII)V
    .locals 28
    .param p1, "rng"    # Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .param p2, "srcf"    # [B
    .param p3, "f"    # I
    .param p4, "srcg"    # [B
    .param p5, "g"    # I
    .param p6, "srcF"    # [B
    .param p7, "F"    # I
    .param p8, "srcG"    # [B
    .param p9, "G"    # I
    .param p10, "srch"    # [S
    .param p11, "h"    # I
    .param p12, "logn"    # I
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
            0x0,
            0x0
        }
        names = {
            "rng",
            "srcf",
            "f",
            "srcg",
            "g",
            "srcF",
            "F",
            "srcG",
            "G",
            "srch",
            "h",
            "logn"
        }
    .end annotation

    .line 3638
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p4

    move/from16 v6, p5

    move/from16 v5, p12

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v13

    .line 3639
    .local v13, "n":I
    move-object/from16 v14, p1

    move-object/from16 v9, p10

    .line 3662
    .end local p10    # "srch":[S
    .local v9, "srch":[S
    .local v14, "rc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    :goto_0
    mul-int/lit8 v1, v13, 0x3

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 3674
    .local v1, "ftmp":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {v0, v14, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BII)V

    .line 3675
    invoke-virtual {v0, v14, v8, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BII)V

    .line 3683
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    aget-byte v2, v2, v5

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    shl-int v2, v10, v2

    .line 3684
    .local v2, "lim":I
    const/4 v7, 0x0

    move v11, v7

    .local v11, "u":I
    :goto_1
    if-ge v11, v13, :cond_2

    .line 3690
    add-int v7, v4, v11

    aget-byte v7, v3, v7

    if-ge v7, v2, :cond_1

    add-int v7, v4, v11

    aget-byte v7, v3, v7

    neg-int v12, v2

    if-le v7, v12, :cond_1

    add-int v7, v6, v11

    aget-byte v7, v8, v7

    if-ge v7, v2, :cond_1

    add-int v7, v6, v11

    aget-byte v7, v8, v7

    neg-int v12, v2

    if-gt v7, v12, :cond_0

    goto :goto_2

    .line 3684
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3693
    :cond_1
    :goto_2
    const/4 v2, -0x1

    .line 3694
    move v12, v2

    goto :goto_3

    .line 3684
    :cond_2
    move v12, v2

    .line 3697
    .end local v2    # "lim":I
    .local v12, "lim":I
    :goto_3
    if-gez v12, :cond_3

    .line 3699
    move-object v10, v0

    goto/16 :goto_5

    .line 3709
    :cond_3
    invoke-virtual {v0, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_sqnorm([BII)I

    move-result v15

    .line 3710
    .local v15, "normf":I
    invoke-virtual {v0, v8, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_sqnorm([BII)I

    move-result v16

    .line 3711
    .local v16, "normg":I
    add-int v2, v15, v16

    or-int v7, v15, v16

    ushr-int/lit8 v7, v7, 0x1f

    neg-int v7, v7

    or-int/2addr v7, v2

    .line 3712
    .local v7, "norm":I
    move/from16 v17, v11

    const/16 p10, 0x1

    .end local v11    # "u":I
    .local v17, "u":I
    int-to-long v10, v7

    const-wide v18, 0xffffffffL

    and-long v10, v10, v18

    const-wide/16 v18, 0x41b7

    cmp-long v2, v10, v18

    if-ltz v2, :cond_4

    .line 3714
    move-object v10, v0

    goto/16 :goto_5

    .line 3720
    :cond_4
    const/4 v2, 0x0

    .line 3721
    .local v2, "rt1":I
    add-int v10, v2, v13

    .line 3722
    .local v10, "rt2":I
    add-int v11, v10, v13

    .line 3723
    .local v11, "rt3":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 3724
    move-object/from16 v0, p0

    move/from16 v5, p12

    move v4, v6

    move-object v3, v8

    move v6, v2

    move v2, v10

    .end local v10    # "rt2":I
    .local v2, "rt2":I
    .local v6, "rt1":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 3725
    move-object v10, v0

    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3726
    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3727
    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v1

    move-object v5, v1

    move v4, v6

    move/from16 v18, v7

    move/from16 v7, p12

    move v6, v2

    move v2, v11

    .end local v7    # "norm":I
    .end local v11    # "rt3":I
    .local v2, "rt3":I
    .local v4, "rt1":I
    .local v6, "rt2":I
    .local v18, "norm":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3728
    move v5, v4

    move v4, v2

    move v2, v5

    move v5, v7

    .local v2, "rt1":I
    .local v4, "rt3":I
    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3729
    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3730
    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v0, v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 3731
    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    iget-object v3, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v0, v1, v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 3732
    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3733
    move v11, v2

    .end local v2    # "rt1":I
    .local v11, "rt1":I
    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v5, p12

    move v2, v6

    .end local v6    # "rt2":I
    .local v2, "rt2":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3734
    move-object v0, v1

    move v1, v2

    move/from16 v19, v4

    .end local v2    # "rt2":I
    .end local v4    # "rt3":I
    .local v0, "ftmp":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt2":I
    .local v19, "rt3":I
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v0, v11, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3735
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3736
    iget-object v2, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 3737
    .local v2, "bnorm":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    const/4 v3, 0x0

    .end local v17    # "u":I
    .local v3, "u":I
    :goto_4
    if-ge v3, v13, :cond_5

    .line 3739
    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v7, v11, v3

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    .line 3740
    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v7, v1, v3

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    .line 3737
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3742
    :cond_5
    iget-object v4, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_bnorm_max:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v4, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3744
    nop

    .line 3662
    .end local v0    # "ftmp":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v1    # "rt2":I
    .end local v2    # "bnorm":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "u":I
    .end local v11    # "rt1":I
    .end local v12    # "lim":I
    .end local v15    # "normf":I
    .end local v16    # "normg":I
    .end local v18    # "norm":I
    .end local v19    # "rt3":I
    :goto_5
    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p4

    move/from16 v6, p5

    move-object v0, v10

    goto/16 :goto_0

    .line 3751
    .restart local v0    # "ftmp":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v1    # "rt2":I
    .restart local v2    # "bnorm":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v3    # "u":I
    .restart local v11    # "rt1":I
    .restart local v12    # "lim":I
    .restart local v15    # "normf":I
    .restart local v16    # "normg":I
    .restart local v18    # "norm":I
    .restart local v19    # "rt3":I
    :cond_6
    mul-int/lit8 v4, v13, 0x2

    new-array v8, v4, [S

    .line 3752
    .local v8, "stmp":[S
    if-nez v9, :cond_7

    .line 3754
    const/4 v4, 0x0

    .line 3755
    .local v4, "h2":I
    move-object v6, v8

    .line 3756
    .end local v9    # "srch":[S
    .local v6, "srch":[S
    add-int v7, v4, v13

    move v9, v7

    .local v7, "tmp2":I
    goto :goto_6

    .line 3760
    .end local v4    # "h2":I
    .end local v6    # "srch":[S
    .end local v7    # "tmp2":I
    .restart local v9    # "srch":[S
    :cond_7
    move/from16 v4, p11

    .line 3761
    .restart local v4    # "h2":I
    const/4 v7, 0x0

    move-object v6, v9

    move v9, v7

    .line 3763
    .restart local v6    # "srch":[S
    .local v9, "tmp2":I
    :goto_6
    move-object v7, v0

    .end local v0    # "ftmp":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v7, "ftmp":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->vrfy:Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    move/from16 v20, v1

    move-object/from16 v22, v2

    move/from16 v21, v3

    move v2, v4

    move-object v1, v6

    move-object/from16 v17, v7

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    move v7, v5

    move-object/from16 v5, p4

    .end local v3    # "u":I
    .end local v4    # "h2":I
    .end local v6    # "srch":[S
    .end local v7    # "ftmp":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "srch":[S
    .local v2, "h2":I
    .local v17, "ftmp":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v20, "rt2":I
    .local v21, "u":I
    .local v22, "bnorm":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->compute_public([SI[BI[BII[SI)I

    move-result v0

    move-object/from16 v23, v1

    move/from16 v25, v2

    move v5, v7

    move-object/from16 v24, v8

    move/from16 v26, v9

    .end local v1    # "srch":[S
    .end local v2    # "h2":I
    .end local v8    # "stmp":[S
    .end local v9    # "tmp2":I
    .local v23, "srch":[S
    .local v24, "stmp":[S
    .local v25, "h2":I
    .local v26, "tmp2":I
    if-nez v0, :cond_8

    .line 3765
    goto :goto_8

    .line 3771
    :cond_8
    const/4 v0, 0x2

    if-le v5, v0, :cond_9

    mul-int/lit8 v0, v13, 0x1c

    goto :goto_7

    :cond_9
    mul-int/lit8 v0, v13, 0x1c

    mul-int/lit8 v0, v0, 0x3

    :goto_7
    new-array v0, v0, [I

    .line 3772
    .local v0, "itmp":[I
    iget-object v1, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    aget-byte v1, v1, v5

    add-int/lit8 v1, v1, -0x1

    shl-int v1, p10, v1

    add-int/lit8 v1, v1, -0x1

    .line 3773
    .end local v12    # "lim":I
    .local v1, "lim":I
    const/4 v12, 0x0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v27, v11

    move-object v11, v0

    move-object v0, v10

    move v10, v1

    move v1, v5

    move/from16 v5, p9

    .end local v0    # "itmp":[I
    .end local v1    # "lim":I
    .local v10, "lim":I
    .local v11, "itmp":[I
    .local v27, "rt1":I
    invoke-virtual/range {v0 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU(I[BI[BI[BI[BII[II)I

    move-result v12

    if-nez v12, :cond_a

    .line 3775
    nop

    .line 3662
    .end local v10    # "lim":I
    .end local v11    # "itmp":[I
    .end local v15    # "normf":I
    .end local v16    # "normg":I
    .end local v17    # "ftmp":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v18    # "norm":I
    .end local v19    # "rt3":I
    .end local v20    # "rt2":I
    .end local v21    # "u":I
    .end local v22    # "bnorm":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v24    # "stmp":[S
    .end local v25    # "h2":I
    .end local v26    # "tmp2":I
    .end local v27    # "rt1":I
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p4

    move/from16 v6, p5

    move/from16 v5, p12

    move-object/from16 v9, v23

    goto/16 :goto_0

    .line 3783
    .restart local v11    # "itmp":[I
    .restart local v17    # "ftmp":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v21    # "u":I
    .restart local v24    # "stmp":[S
    .restart local v25    # "h2":I
    .restart local v26    # "tmp2":I
    :cond_a
    return-void
.end method

.method make_fg([II[BI[BIIII)V
    .locals 16
    .param p1, "srcdata"    # [I
    .param p2, "data"    # I
    .param p3, "srcf"    # [B
    .param p4, "f"    # I
    .param p5, "srcg"    # [B
    .param p6, "g"    # I
    .param p7, "logn"    # I
    .param p8, "depth"    # I
    .param p9, "out_ntt"    # I
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
            "srcdata",
            "data",
            "srcf",
            "f",
            "srcg",
            "g",
            "logn",
            "depth",
            "out_ntt"
        }
    .end annotation

    .line 2080
    move-object/from16 v0, p0

    move/from16 v9, p8

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v10

    .line 2081
    .local v10, "n":I
    move/from16 v11, p2

    .line 2082
    .local v11, "ft":I
    add-int v12, v11, v10

    .line 2083
    .local v12, "gt":I
    sget-object v13, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    .line 2084
    .local v13, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    const/4 v7, 0x0

    aget-object v1, v13, v7

    iget v14, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 2085
    .local v14, "p0":I
    const/4 v1, 0x0

    move v15, v1

    .local v15, "u":I
    :goto_0
    if-ge v15, v10, :cond_0

    .line 2087
    add-int v1, v11, v15

    add-int v2, p4, v15

    aget-byte v2, p3, v2

    invoke-virtual {v0, v2, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p1, v1

    .line 2088
    add-int v1, v12, v15

    add-int v2, p6, v15

    aget-byte v2, p5, v2

    invoke-virtual {v0, v2, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p1, v1

    .line 2085
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2091
    :cond_0
    if-nez v9, :cond_1

    if-eqz p9, :cond_1

    .line 2096
    aget-object v1, v13, v7

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 2097
    .local v6, "p":I
    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v8

    .line 2098
    .local v8, "p0i":I
    add-int v4, v12, v10

    .line 2099
    .local v4, "gm":I
    move v2, v4

    .end local v4    # "gm":I
    .local v2, "gm":I
    add-int v4, v2, v10

    .line 2100
    .local v4, "igm":I
    aget-object v1, v13, v7

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p1

    move/from16 v5, p7

    move v7, v6

    move v6, v1

    move-object/from16 v1, p1

    .end local v6    # "p":I
    .local v7, "p":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 2101
    move v6, v7

    move v7, v8

    move v8, v4

    .end local v4    # "igm":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    .local v8, "igm":I
    move-object/from16 v0, p0

    move v4, v2

    move v2, v11

    .end local v11    # "ft":I
    .local v2, "ft":I
    .local v4, "gm":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2102
    move v2, v4

    .end local v4    # "gm":I
    .local v2, "gm":I
    .restart local v11    # "ft":I
    move v2, v12

    .end local v12    # "gt":I
    .local v2, "gt":I
    .restart local v4    # "gm":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2103
    move v2, v4

    .end local v4    # "gm":I
    .local v2, "gm":I
    .restart local v12    # "gt":I
    return-void

    .line 2106
    .end local v2    # "gm":I
    .end local v6    # "p":I
    .end local v7    # "p0i":I
    .end local v8    # "igm":I
    :cond_1
    const/4 v0, 0x0

    move v4, v0

    .local v4, "d":I
    :goto_1
    if-ge v4, v9, :cond_5

    .line 2108
    sub-int v3, p7, v4

    .line 2109
    const/4 v0, 0x1

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v1, v4, 0x1

    if-lt v1, v9, :cond_4

    if-eqz p9, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v6, 0x1

    .line 2108
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->make_fg_step([IIIIII)V

    .line 2106
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2111
    :cond_5
    return-void
.end method

.method make_fg_step([IIIIII)V
    .locals 27
    .param p1, "srcdata"    # [I
    .param p2, "data"    # I
    .param p3, "logn"    # I
    .param p4, "depth"    # I
    .param p5, "in_ntt"    # I
    .param p6, "out_ntt"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcdata",
            "data",
            "logn",
            "depth",
            "in_ntt",
            "out_ntt"
        }
    .end annotation

    .line 1921
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    shl-int v9, v10, p3

    .line 1922
    .local v9, "n":I
    shr-int/lit8 v11, v9, 0x1

    .line 1923
    .local v11, "hn":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v12, v2, p4

    .line 1924
    .local v12, "slen":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    add-int/lit8 v3, p4, 0x1

    aget v13, v2, v3

    .line 1925
    .local v13, "tlen":I
    sget-object v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    .line 1930
    .local v14, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    move/from16 v15, p2

    .line 1931
    .local v15, "fd":I
    mul-int v2, v11, v13

    add-int v16, v15, v2

    .line 1932
    .local v16, "gd":I
    mul-int v2, v11, v13

    add-int v2, v16, v2

    .line 1933
    .local v2, "fs":I
    mul-int v3, v9, v12

    add-int v17, v2, v3

    .line 1934
    .local v17, "gs":I
    mul-int v3, v9, v12

    add-int v4, v17, v3

    .line 1935
    .local v4, "gm":I
    add-int v5, v4, v9

    .line 1936
    .local v5, "igm":I
    add-int v18, v5, v9

    .line 1938
    .local v18, "t1":I
    mul-int/lit8 v3, v9, 0x2

    mul-int v3, v3, v12

    move/from16 v6, p2

    invoke-static {v1, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1944
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_0
    if-ge v3, v12, :cond_9

    .line 1950
    aget-object v7, v14, v3

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 1951
    .local v7, "p":I
    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v8

    .line 1952
    .local v8, "p0i":I
    const/16 v19, 0x1

    invoke-virtual {v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v10

    .line 1953
    .local v10, "R2":I
    aget-object v0, v14, v3

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move/from16 v20, v3

    .end local v3    # "u":I
    .local v20, "u":I
    move-object/from16 v3, p1

    move v6, v0

    move/from16 v21, v20

    move-object/from16 v0, p0

    move/from16 v20, v2

    move v2, v4

    move v4, v5

    move/from16 v5, p3

    .end local v5    # "igm":I
    .local v2, "gm":I
    .local v4, "igm":I
    .local v20, "fs":I
    .local v21, "u":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 1955
    move v0, v8

    move v8, v4

    move v4, v2

    .end local v2    # "gm":I
    .local v0, "p0i":I
    .local v4, "gm":I
    .local v8, "igm":I
    const/4 v1, 0x0

    .local v1, "v":I
    add-int v2, v20, v21

    move/from16 v22, v2

    .local v22, "x":I
    :goto_1
    if-ge v1, v9, :cond_0

    .line 1957
    add-int v2, v18, v1

    aget v3, p1, v22

    aput v3, p1, v2

    .line 1955
    add-int/lit8 v1, v1, 0x1

    add-int v22, v22, v12

    goto :goto_1

    .line 1959
    :cond_0
    if-nez p5, :cond_1

    .line 1961
    move-object/from16 v3, p1

    move/from16 v5, p3

    move v6, v7

    move/from16 v2, v18

    move v7, v0

    move/from16 v18, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .end local v0    # "p0i":I
    .end local v1    # "v":I
    .local v2, "t1":I
    .local v6, "p":I
    .local v7, "p0i":I
    .local v18, "v":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v24, v2

    move/from16 v23, v4

    move v5, v8

    move v8, v7

    move v7, v6

    .end local v2    # "t1":I
    .end local v4    # "gm":I
    .end local v6    # "p":I
    .restart local v5    # "igm":I
    .local v7, "p":I
    .local v8, "p0i":I
    .local v23, "gm":I
    .local v24, "t1":I
    goto :goto_2

    .line 1959
    .end local v5    # "igm":I
    .end local v23    # "gm":I
    .end local v24    # "t1":I
    .restart local v0    # "p0i":I
    .restart local v1    # "v":I
    .restart local v4    # "gm":I
    .local v8, "igm":I
    .local v18, "t1":I
    :cond_1
    move/from16 v23, v4

    move v5, v8

    move/from16 v24, v18

    move v8, v0

    move/from16 v18, v1

    move-object/from16 v0, p0

    .line 1963
    .end local v0    # "p0i":I
    .end local v1    # "v":I
    .end local v4    # "gm":I
    .restart local v5    # "igm":I
    .local v8, "p0i":I
    .local v18, "v":I
    .restart local v23    # "gm":I
    .restart local v24    # "t1":I
    :goto_2
    const/4 v1, 0x0

    .end local v18    # "v":I
    .restart local v1    # "v":I
    add-int v3, v15, v21

    move/from16 v18, v3

    .end local v22    # "x":I
    .local v18, "x":I
    :goto_3
    if-ge v1, v11, :cond_2

    .line 1967
    shl-int/lit8 v2, v1, 0x1

    add-int v2, v24, v2

    add-int/lit8 v2, v2, 0x0

    aget v2, p1, v2

    .line 1968
    .local v2, "w0":I
    shl-int/lit8 v3, v1, 0x1

    add-int v3, v24, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    .line 1969
    .local v3, "w1":I
    nop

    .line 1970
    invoke-virtual {v0, v2, v3, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    .line 1969
    invoke-virtual {v0, v4, v10, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    aput v4, p1, v18

    .line 1963
    .end local v2    # "w0":I
    .end local v3    # "w1":I
    add-int/lit8 v1, v1, 0x1

    add-int v18, v18, v13

    goto :goto_3

    .line 1972
    :cond_2
    if-eqz p5, :cond_3

    .line 1974
    add-int v2, v20, v21

    move-object/from16 v4, p1

    move/from16 v6, p3

    move v3, v12

    move v12, v1

    move-object/from16 v1, p1

    .end local v1    # "v":I
    .local v3, "slen":I
    .local v12, "v":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move/from16 v22, v5

    move v0, v8

    move v8, v3

    .end local v3    # "slen":I
    .end local v5    # "igm":I
    .restart local v0    # "p0i":I
    .local v8, "slen":I
    .local v22, "igm":I
    goto :goto_4

    .line 1972
    .end local v0    # "p0i":I
    .end local v22    # "igm":I
    .restart local v1    # "v":I
    .restart local v5    # "igm":I
    .local v8, "p0i":I
    .local v12, "slen":I
    :cond_3
    move/from16 v22, v5

    move v0, v8

    move v8, v12

    move v12, v1

    .line 1977
    .end local v1    # "v":I
    .end local v5    # "igm":I
    .restart local v0    # "p0i":I
    .local v8, "slen":I
    .local v12, "v":I
    .restart local v22    # "igm":I
    :goto_4
    const/4 v1, 0x0

    .end local v12    # "v":I
    .restart local v1    # "v":I
    add-int v3, v17, v21

    move v12, v1

    move/from16 v18, v3

    .end local v1    # "v":I
    .restart local v12    # "v":I
    :goto_5
    if-ge v12, v9, :cond_4

    .line 1979
    add-int v1, v24, v12

    aget v2, p1, v18

    aput v2, p1, v1

    .line 1977
    add-int/lit8 v12, v12, 0x1

    add-int v18, v18, v8

    goto :goto_5

    .line 1981
    :cond_4
    if-nez p5, :cond_5

    .line 1983
    move-object/from16 v3, p1

    move-object/from16 v1, p1

    move/from16 v5, p3

    move v6, v7

    move/from16 v4, v23

    move/from16 v2, v24

    move v7, v0

    move-object/from16 v0, p0

    .end local v0    # "p0i":I
    .end local v23    # "gm":I
    .end local v24    # "t1":I
    .local v2, "t1":I
    .restart local v4    # "gm":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move v3, v8

    move v8, v7

    move v7, v6

    .end local v2    # "t1":I
    .end local v4    # "gm":I
    .end local v6    # "p":I
    .restart local v3    # "slen":I
    .local v7, "p":I
    .local v8, "p0i":I
    .restart local v23    # "gm":I
    .restart local v24    # "t1":I
    goto :goto_6

    .line 1981
    .end local v3    # "slen":I
    .restart local v0    # "p0i":I
    .local v8, "slen":I
    :cond_5
    move v3, v8

    move v8, v0

    move-object/from16 v0, p0

    .line 1985
    .end local v0    # "p0i":I
    .restart local v3    # "slen":I
    .local v8, "p0i":I
    :goto_6
    const/4 v1, 0x0

    .end local v12    # "v":I
    .restart local v1    # "v":I
    add-int v2, v16, v21

    move v12, v1

    move/from16 v18, v2

    .end local v1    # "v":I
    .restart local v12    # "v":I
    :goto_7
    if-ge v12, v11, :cond_6

    .line 1989
    shl-int/lit8 v1, v12, 0x1

    add-int v1, v24, v1

    add-int/lit8 v1, v1, 0x0

    aget v1, p1, v1

    .line 1990
    .local v1, "w0":I
    shl-int/lit8 v2, v12, 0x1

    add-int v2, v24, v2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    .line 1991
    .local v2, "w1":I
    nop

    .line 1992
    invoke-virtual {v0, v1, v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    .line 1991
    invoke-virtual {v0, v4, v10, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    aput v4, p1, v18

    .line 1985
    .end local v1    # "w0":I
    .end local v2    # "w1":I
    add-int/lit8 v12, v12, 0x1

    add-int v18, v18, v13

    goto :goto_7

    .line 1994
    :cond_6
    if-eqz p5, :cond_7

    .line 1996
    add-int v2, v17, v21

    move-object/from16 v4, p1

    move-object/from16 v1, p1

    move/from16 v6, p3

    move/from16 v5, v22

    .end local v22    # "igm":I
    .restart local v5    # "igm":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move/from16 v22, v3

    .end local v3    # "slen":I
    .local v22, "slen":I
    goto :goto_8

    .line 1994
    .end local v5    # "igm":I
    .restart local v3    # "slen":I
    .local v22, "igm":I
    :cond_7
    move/from16 v5, v22

    move/from16 v22, v3

    .line 1999
    .end local v3    # "slen":I
    .restart local v5    # "igm":I
    .local v22, "slen":I
    :goto_8
    if-nez p6, :cond_8

    .line 2001
    add-int v2, v15, v21

    add-int/lit8 v6, p3, -0x1

    move-object/from16 v4, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v13

    .end local v13    # "tlen":I
    .local v3, "tlen":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    .line 2002
    add-int v2, v16, v21

    add-int/lit8 v6, p3, -0x1

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move/from16 v25, v5

    .end local v3    # "tlen":I
    .end local v5    # "igm":I
    .restart local v13    # "tlen":I
    .local v25, "igm":I
    goto :goto_9

    .line 1999
    .end local v25    # "igm":I
    .restart local v5    # "igm":I
    :cond_8
    move/from16 v25, v5

    .line 1944
    .end local v5    # "igm":I
    .end local v7    # "p":I
    .end local v8    # "p0i":I
    .end local v10    # "R2":I
    .end local v12    # "v":I
    .end local v18    # "x":I
    .restart local v25    # "igm":I
    :goto_9
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move/from16 v2, v20

    move/from16 v12, v22

    move/from16 v4, v23

    move/from16 v18, v24

    move/from16 v5, v25

    const/4 v10, 0x1

    .end local v21    # "u":I
    .local v3, "u":I
    goto/16 :goto_0

    .line 2010
    .end local v20    # "fs":I
    .end local v22    # "slen":I
    .end local v23    # "gm":I
    .end local v24    # "t1":I
    .end local v25    # "igm":I
    .local v2, "fs":I
    .restart local v4    # "gm":I
    .restart local v5    # "igm":I
    .local v12, "slen":I
    .local v18, "t1":I
    :cond_9
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v23, v4

    move/from16 v25, v5

    move/from16 v22, v12

    move/from16 v24, v18

    const/16 v19, 0x1

    .end local v2    # "fs":I
    .end local v3    # "u":I
    .end local v4    # "gm":I
    .end local v5    # "igm":I
    .end local v12    # "slen":I
    .end local v18    # "t1":I
    .restart local v20    # "fs":I
    .restart local v21    # "u":I
    .restart local v22    # "slen":I
    .restart local v23    # "gm":I
    .restart local v24    # "t1":I
    .restart local v25    # "igm":I
    const/4 v7, 0x1

    move/from16 v4, v22

    move-object/from16 v8, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v9

    move-object v6, v14

    move/from16 v3, v22

    move/from16 v9, v23

    .end local v14    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .end local v20    # "fs":I
    .end local v22    # "slen":I
    .end local v23    # "gm":I
    .restart local v2    # "fs":I
    .local v3, "slen":I
    .local v5, "n":I
    .local v6, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v9, "gm":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    .line 2011
    move v4, v9

    .end local v2    # "fs":I
    .restart local v20    # "fs":I
    move v4, v3

    move/from16 v2, v17

    .end local v17    # "gs":I
    .local v2, "gs":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    .line 2016
    move v14, v2

    move v10, v3

    move-object v12, v6

    move v4, v9

    move v9, v5

    .end local v2    # "gs":I
    .end local v3    # "slen":I
    .end local v5    # "n":I
    .end local v6    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .restart local v4    # "gm":I
    .local v9, "n":I
    .local v10, "slen":I
    .local v12, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v14, "gs":I
    move v1, v10

    .end local v21    # "u":I
    .local v1, "u":I
    :goto_a
    if-ge v1, v13, :cond_f

    .line 2022
    aget-object v2, v12, v1

    iget v7, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 2023
    .restart local v7    # "p":I
    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v8

    .line 2024
    .restart local v8    # "p0i":I
    invoke-virtual {v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v2

    .line 2025
    .local v2, "R2":I
    invoke-virtual {v0, v10, v7, v8, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v17

    .line 2026
    .local v17, "Rx":I
    aget-object v3, v12, v1

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v18, v1

    move/from16 v21, v2

    move v2, v4

    move/from16 v4, v25

    move-object/from16 v1, p1

    .end local v1    # "u":I
    .end local v25    # "igm":I
    .local v2, "gm":I
    .local v4, "igm":I
    .local v18, "u":I
    .local v21, "R2":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 2027
    move/from16 v23, v2

    .end local v2    # "gm":I
    .end local v4    # "igm":I
    .restart local v23    # "gm":I
    .restart local v25    # "igm":I
    const/4 v0, 0x0

    .local v0, "v":I
    move/from16 v1, v20

    move v2, v1

    .local v2, "x":I
    :goto_b
    if-ge v0, v9, :cond_a

    .line 2029
    add-int v22, v24, v0

    move-object/from16 v1, p1

    move v4, v7

    move v5, v8

    move v3, v10

    move/from16 v7, v17

    move/from16 v6, v21

    move v8, v0

    move-object/from16 v0, p0

    .end local v0    # "v":I
    .end local v10    # "slen":I
    .end local v17    # "Rx":I
    .end local v21    # "R2":I
    .restart local v3    # "slen":I
    .local v4, "p":I
    .local v5, "p0i":I
    .local v6, "R2":I
    .local v7, "Rx":I
    .local v8, "v":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v10

    move/from16 v26, v2

    move/from16 v17, v3

    move/from16 v21, v7

    move v7, v4

    .end local v2    # "x":I
    .end local v3    # "slen":I
    .end local v4    # "p":I
    .local v7, "p":I
    .local v17, "slen":I
    .local v21, "Rx":I
    .local v26, "x":I
    aput v10, p1, v22

    .line 2027
    add-int/lit8 v0, v8, 0x1

    .end local v8    # "v":I
    .restart local v0    # "v":I
    add-int v2, v26, v17

    move v8, v5

    move/from16 v10, v17

    move/from16 v17, v21

    move/from16 v21, v6

    .end local v26    # "x":I
    .restart local v2    # "x":I
    goto :goto_b

    .line 2031
    .end local v5    # "p0i":I
    .end local v6    # "R2":I
    .local v8, "p0i":I
    .restart local v10    # "slen":I
    .local v17, "Rx":I
    .local v21, "R2":I
    :cond_a
    move/from16 v26, v2

    move v5, v8

    move/from16 v6, v21

    move v8, v0

    move/from16 v21, v17

    move/from16 v17, v10

    .end local v0    # "v":I
    .end local v2    # "x":I
    .end local v10    # "slen":I
    .restart local v5    # "p0i":I
    .restart local v6    # "R2":I
    .local v8, "v":I
    .local v17, "slen":I
    .local v21, "Rx":I
    .restart local v26    # "x":I
    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v10, v6

    move v6, v7

    move/from16 v4, v23

    move/from16 v2, v24

    move v7, v5

    move/from16 v5, p3

    .end local v5    # "p0i":I
    .end local v23    # "gm":I
    .end local v24    # "t1":I
    .local v2, "t1":I
    .local v4, "gm":I
    .local v6, "p":I
    .local v7, "p0i":I
    .local v10, "R2":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2032
    move v5, v7

    move v7, v6

    .end local v2    # "t1":I
    .end local v4    # "gm":I
    .end local v6    # "p":I
    .restart local v5    # "p0i":I
    .local v7, "p":I
    .restart local v23    # "gm":I
    .restart local v24    # "t1":I
    const/4 v1, 0x0

    .end local v8    # "v":I
    .local v1, "v":I
    add-int v2, v15, v18

    .end local v26    # "x":I
    .local v2, "x":I
    :goto_c
    if-ge v1, v11, :cond_b

    .line 2036
    shl-int/lit8 v3, v1, 0x1

    add-int v3, v24, v3

    add-int/lit8 v3, v3, 0x0

    aget v3, p1, v3

    .line 2037
    .local v3, "w0":I
    shl-int/lit8 v4, v1, 0x1

    add-int v4, v24, v4

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    .line 2038
    .local v4, "w1":I
    nop

    .line 2039
    invoke-virtual {v0, v3, v4, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v6

    .line 2038
    invoke-virtual {v0, v6, v10, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v6

    aput v6, p1, v2

    .line 2032
    .end local v3    # "w0":I
    .end local v4    # "w1":I
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v13

    goto :goto_c

    .line 2041
    :cond_b
    const/4 v1, 0x0

    move v2, v14

    move v8, v1

    .end local v1    # "v":I
    .restart local v8    # "v":I
    :goto_d
    if-ge v8, v9, :cond_c

    .line 2043
    add-int v22, v24, v8

    move-object/from16 v1, p1

    move v4, v7

    move v6, v10

    move/from16 v3, v17

    move/from16 v7, v21

    .end local v10    # "R2":I
    .end local v17    # "slen":I
    .end local v21    # "Rx":I
    .local v3, "slen":I
    .local v4, "p":I
    .local v6, "R2":I
    .local v7, "Rx":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v10

    move/from16 v26, v2

    move v7, v4

    .end local v2    # "x":I
    .end local v3    # "slen":I
    .end local v4    # "p":I
    .local v7, "p":I
    .restart local v17    # "slen":I
    .restart local v21    # "Rx":I
    .restart local v26    # "x":I
    aput v10, p1, v22

    .line 2041
    add-int/lit8 v8, v8, 0x1

    add-int v2, v26, v17

    move-object/from16 v0, p0

    move v10, v6

    .end local v26    # "x":I
    .restart local v2    # "x":I
    goto :goto_d

    .line 2045
    .end local v6    # "R2":I
    .restart local v10    # "R2":I
    :cond_c
    move/from16 v26, v2

    move v6, v10

    .end local v2    # "x":I
    .end local v10    # "R2":I
    .restart local v6    # "R2":I
    .restart local v26    # "x":I
    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v6, v7

    move/from16 v4, v23

    move/from16 v2, v24

    move v7, v5

    move/from16 v5, p3

    .end local v5    # "p0i":I
    .end local v23    # "gm":I
    .end local v24    # "t1":I
    .local v2, "t1":I
    .local v4, "gm":I
    .local v6, "p":I
    .local v7, "p0i":I
    .restart local v10    # "R2":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2046
    move v5, v7

    move v7, v6

    .end local v2    # "t1":I
    .end local v4    # "gm":I
    .end local v6    # "p":I
    .restart local v5    # "p0i":I
    .local v7, "p":I
    .restart local v23    # "gm":I
    .restart local v24    # "t1":I
    const/4 v1, 0x0

    .end local v8    # "v":I
    .restart local v1    # "v":I
    add-int v2, v16, v18

    move/from16 v22, v2

    .end local v26    # "x":I
    .local v22, "x":I
    :goto_e
    if-ge v1, v11, :cond_d

    .line 2050
    shl-int/lit8 v2, v1, 0x1

    add-int v2, v24, v2

    add-int/lit8 v2, v2, 0x0

    aget v2, p1, v2

    .line 2051
    .local v2, "w0":I
    shl-int/lit8 v3, v1, 0x1

    add-int v3, v24, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    .line 2052
    .local v3, "w1":I
    nop

    .line 2053
    invoke-virtual {v0, v2, v3, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    .line 2052
    invoke-virtual {v0, v4, v10, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    aput v4, p1, v22

    .line 2046
    .end local v2    # "w0":I
    .end local v3    # "w1":I
    add-int/lit8 v1, v1, 0x1

    add-int v22, v22, v13

    goto :goto_e

    .line 2056
    :cond_d
    if-nez p6, :cond_e

    .line 2058
    add-int v2, v15, v18

    add-int/lit8 v6, p3, -0x1

    move-object/from16 v4, p1

    move v8, v5

    move v3, v13

    move/from16 v5, v25

    move v13, v1

    move-object/from16 v1, p1

    .end local v1    # "v":I
    .end local v25    # "igm":I
    .local v3, "tlen":I
    .local v5, "igm":I
    .local v8, "p0i":I
    .local v13, "v":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    .line 2059
    add-int v2, v16, v18

    add-int/lit8 v6, p3, -0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    goto :goto_f

    .line 2056
    .end local v3    # "tlen":I
    .end local v8    # "p0i":I
    .restart local v1    # "v":I
    .local v5, "p0i":I
    .local v13, "tlen":I
    .restart local v25    # "igm":I
    :cond_e
    move v8, v5

    move v3, v13

    move/from16 v5, v25

    move v13, v1

    .line 2016
    .end local v1    # "v":I
    .end local v7    # "p":I
    .end local v10    # "R2":I
    .end local v13    # "tlen":I
    .end local v21    # "Rx":I
    .end local v22    # "x":I
    .end local v25    # "igm":I
    .restart local v3    # "tlen":I
    .local v5, "igm":I
    :goto_f
    add-int/lit8 v1, v18, 0x1

    move-object/from16 v0, p0

    move v13, v3

    move/from16 v25, v5

    move/from16 v10, v17

    move/from16 v4, v23

    .end local v18    # "u":I
    .local v1, "u":I
    goto/16 :goto_a

    .line 2062
    .end local v3    # "tlen":I
    .end local v5    # "igm":I
    .end local v17    # "slen":I
    .end local v23    # "gm":I
    .restart local v4    # "gm":I
    .local v10, "slen":I
    .restart local v13    # "tlen":I
    .restart local v25    # "igm":I
    :cond_f
    return-void
.end method

.method mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;I)I
    .locals 14
    .param p1, "rng"    # Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .param p2, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rng",
            "logn"
        }
    .end annotation

    .line 1702
    rsub-int/lit8 v0, p2, 0xa

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 1703
    .local v0, "g":I
    const/4 v2, 0x0

    .line 1704
    .local v2, "val":I
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1729
    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->get_rng_u64(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)J

    move-result-wide v4

    .line 1730
    .local v4, "r":J
    const/16 v6, 0x3f

    ushr-long v7, v4, v6

    long-to-int v8, v7

    .line 1731
    .local v8, "neg":I
    const-wide v9, 0x7fffffffffffffffL

    and-long/2addr v4, v9

    .line 1732
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    const/4 v11, 0x0

    aget-wide v11, v7, v11

    sub-long v11, v4, v11

    ushr-long/2addr v11, v6

    long-to-int v7, v11

    .line 1740
    .local v7, "f":I
    const/4 v11, 0x0

    .line 1741
    .local v11, "v":I
    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->get_rng_u64(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)J

    move-result-wide v4

    .line 1742
    and-long/2addr v4, v9

    .line 1743
    const/4 v9, 0x1

    .local v9, "k":I
    :goto_1
    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 1747
    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    aget-wide v12, v10, v9

    sub-long v12, v4, v12

    ushr-long/2addr v12, v6

    long-to-int v10, v12

    xor-int/2addr v10, v1

    .line 1748
    .local v10, "t":I
    xor-int/lit8 v12, v7, 0x1

    and-int/2addr v12, v10

    neg-int v12, v12

    and-int/2addr v12, v9

    or-int/2addr v11, v12

    .line 1749
    or-int/2addr v7, v10

    .line 1743
    .end local v10    # "t":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1756
    :cond_0
    neg-int v6, v8

    xor-int/2addr v6, v11

    add-int/2addr v6, v8

    .line 1761
    .end local v11    # "v":I
    .local v6, "v":I
    add-int/2addr v2, v6

    .line 1704
    .end local v4    # "r":J
    .end local v6    # "v":I
    .end local v7    # "f":I
    .end local v8    # "neg":I
    .end local v9    # "k":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1763
    :cond_1
    return v2
.end method

.method modp_NTT2([II[IIIII)V
    .locals 9
    .param p1, "srca"    # [I
    .param p2, "a"    # I
    .param p3, "srcgm"    # [I
    .param p4, "gm"    # I
    .param p5, "logn"    # I
    .param p6, "p"    # I
    .param p7, "p0i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcgm",
            "gm",
            "logn",
            "p",
            "p0i"
        }
    .end annotation

    .line 463
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2_ext([III[IIIII)V

    .line 464
    return-void
.end method

.method modp_NTT2_ext([III[IIIII)V
    .locals 16
    .param p1, "srca"    # [I
    .param p2, "a"    # I
    .param p3, "stride"    # I
    .param p4, "srcgm"    # [I
    .param p5, "gm"    # I
    .param p6, "logn"    # I
    .param p7, "p"    # I
    .param p8, "p0i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "srca",
            "a",
            "stride",
            "srcgm",
            "gm",
            "logn",
            "p",
            "p0i"
        }
    .end annotation

    .line 364
    move-object/from16 v0, p0

    move/from16 v1, p7

    if-nez p6, :cond_0

    .line 366
    return-void

    .line 368
    :cond_0
    invoke-static/range {p6 .. p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v2

    .line 369
    .local v2, "n":I
    move v3, v2

    .line 370
    .local v3, "t":I
    const/4 v4, 0x1

    .local v4, "m":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 374
    shr-int/lit8 v5, v3, 0x1

    .line 375
    .local v5, "ht":I
    const/4 v6, 0x0

    .local v6, "u":I
    const/4 v7, 0x0

    .local v7, "v1":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 381
    add-int v8, p5, v4

    add-int/2addr v8, v6

    aget v8, p4, v8

    .line 382
    .local v8, "s":I
    mul-int v9, v7, p3

    add-int v9, p2, v9

    .line 383
    .local v9, "r1":I
    mul-int v10, v5, p3

    add-int/2addr v10, v9

    .line 384
    .local v10, "r2":I
    const/4 v11, 0x0

    .local v11, "v":I
    :goto_2
    if-ge v11, v5, :cond_1

    .line 388
    aget v12, p1, v9

    .line 389
    .local v12, "x":I
    aget v13, p1, v10

    move/from16 v14, p8

    invoke-virtual {v0, v13, v8, v1, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v13

    .line 390
    .local v13, "y":I
    invoke-virtual {v0, v12, v13, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v15

    aput v15, p1, v9

    .line 391
    invoke-virtual {v0, v12, v13, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v15

    aput v15, p1, v10

    .line 384
    .end local v12    # "x":I
    .end local v13    # "y":I
    add-int/lit8 v11, v11, 0x1

    add-int v9, v9, p3

    add-int v10, v10, p3

    goto :goto_2

    :cond_1
    move/from16 v14, p8

    .line 375
    .end local v8    # "s":I
    .end local v9    # "r1":I
    .end local v10    # "r2":I
    .end local v11    # "v":I
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v3

    goto :goto_1

    .line 394
    :cond_2
    move/from16 v14, p8

    move v3, v5

    .line 370
    .end local v5    # "ht":I
    .end local v6    # "u":I
    .end local v7    # "v1":I
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 396
    :cond_3
    move/from16 v14, p8

    return-void
.end method

.method modp_R(I)I
    .locals 1
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 71
    const/high16 v0, -0x80000000

    sub-int/2addr v0, p1

    return v0
.end method

.method modp_R2(II)I
    .locals 2
    .param p1, "p"    # I
    .param p2, "p0i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "p0i"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v0

    .line 126
    .local v0, "z":I
    invoke-virtual {p0, v0, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v0

    .line 132
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    .line 133
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    .line 134
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    .line 135
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    .line 136
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    .line 141
    and-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    and-int/2addr v1, p1

    add-int/2addr v1, v0

    ushr-int/lit8 v0, v1, 0x1

    .line 142
    return v0
.end method

.method modp_Rx(IIII)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "p"    # I
    .param p3, "p0i"    # I
    .param p4, "R2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "p",
            "p0i",
            "R2"
        }
    .end annotation

    .line 160
    add-int/lit8 p1, p1, -0x1

    .line 161
    move v0, p4

    .line 162
    .local v0, "r":I
    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v1

    .line 163
    .local v1, "z":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    shl-int v4, v3, v2

    if-gt v4, p1, :cond_1

    .line 165
    shl-int/2addr v3, v2

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {p0, v1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    .line 169
    :cond_0
    invoke-virtual {p0, v0, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return v1
.end method

.method modp_add(III)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "p"
        }
    .end annotation

    .line 81
    add-int v0, p1, p2

    sub-int/2addr v0, p3

    .line 82
    .local v0, "d":I
    ushr-int/lit8 v1, v0, 0x1f

    neg-int v1, v1

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    .line 83
    return v0
.end method

.method modp_div(IIIII)I
    .locals 7
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "p"    # I
    .param p4, "p0i"    # I
    .param p5, "R"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "p",
            "p0i",
            "R"
        }
    .end annotation

    .line 189
    add-int/lit8 v0, p3, -0x2

    .line 190
    .local v0, "e":I
    move v1, p5

    .line 191
    .local v1, "z":I
    const/16 v2, 0x1e

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ltz v2, :cond_0

    .line 195
    invoke-virtual {p0, v1, v1, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    .line 196
    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    .line 197
    .local v4, "z2":I
    xor-int v5, v1, v4

    ushr-int v6, v0, v2

    and-int/2addr v3, v6

    neg-int v3, v3

    and-int/2addr v3, v5

    xor-int/2addr v1, v3

    .line 191
    .end local v4    # "z2":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0, v1, v3, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    .line 212
    invoke-virtual {p0, p1, v1, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    return v3
.end method

.method modp_iNTT2([II[IIIII)V
    .locals 9
    .param p1, "srca"    # [I
    .param p2, "a"    # I
    .param p3, "srcigm"    # [I
    .param p4, "igm"    # I
    .param p5, "logn"    # I
    .param p6, "p"    # I
    .param p7, "p0i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcigm",
            "igm",
            "logn",
            "p",
            "p0i"
        }
    .end annotation

    .line 469
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    .line 470
    return-void
.end method

.method modp_iNTT2_ext([III[IIIII)V
    .locals 17
    .param p1, "srca"    # [I
    .param p2, "a"    # I
    .param p3, "stride"    # I
    .param p4, "srcigm"    # [I
    .param p5, "igm"    # I
    .param p6, "logn"    # I
    .param p7, "p"    # I
    .param p8, "p0i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "srca",
            "a",
            "stride",
            "srcigm",
            "igm",
            "logn",
            "p",
            "p0i"
        }
    .end annotation

    .line 408
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    if-nez p6, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    invoke-static/range {p6 .. p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v3

    .line 413
    .local v3, "n":I
    const/4 v4, 0x1

    .line 414
    .local v4, "t":I
    move v5, v3

    .local v5, "m":I
    :goto_0
    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 418
    shr-int/lit8 v6, v5, 0x1

    .line 419
    .local v6, "hm":I
    shl-int/lit8 v7, v4, 0x1

    .line 420
    .local v7, "dt":I
    const/4 v8, 0x0

    .local v8, "u":I
    const/4 v9, 0x0

    .local v9, "v1":I
    :goto_1
    if-ge v8, v6, :cond_2

    .line 426
    add-int v10, p5, v6

    add-int/2addr v10, v8

    aget v10, p4, v10

    .line 427
    .local v10, "s":I
    mul-int v11, v9, p3

    add-int v11, p2, v11

    .line 428
    .local v11, "r1":I
    mul-int v12, v4, p3

    add-int/2addr v12, v11

    .line 429
    .local v12, "r2":I
    const/4 v13, 0x0

    .local v13, "v":I
    :goto_2
    if-ge v13, v4, :cond_1

    .line 433
    aget v14, p1, v11

    .line 434
    .local v14, "x":I
    aget v15, p1, v12

    .line 435
    .local v15, "y":I
    invoke-virtual {v0, v14, v15, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v16

    aput v16, p1, v11

    .line 436
    nop

    .line 437
    move/from16 v16, v4

    .end local v4    # "t":I
    .local v16, "t":I
    invoke-virtual {v0, v14, v15, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v4

    .line 436
    invoke-virtual {v0, v4, v10, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    aput v4, p1, v12

    .line 429
    .end local v14    # "x":I
    .end local v15    # "y":I
    add-int/lit8 v13, v13, 0x1

    add-int v11, v11, p3

    add-int v12, v12, p3

    move/from16 v4, v16

    goto :goto_2

    .end local v16    # "t":I
    .restart local v4    # "t":I
    :cond_1
    move/from16 v16, v4

    .line 420
    .end local v4    # "t":I
    .end local v10    # "s":I
    .end local v11    # "r1":I
    .end local v12    # "r2":I
    .end local v13    # "v":I
    .restart local v16    # "t":I
    add-int/lit8 v8, v8, 0x1

    add-int/2addr v9, v7

    goto :goto_1

    .line 441
    .end local v16    # "t":I
    .restart local v4    # "t":I
    :cond_2
    move/from16 v16, v4

    .end local v4    # "t":I
    .restart local v16    # "t":I
    move v4, v7

    .line 414
    .end local v6    # "hm":I
    .end local v7    # "dt":I
    .end local v8    # "u":I
    .end local v9    # "v1":I
    .end local v16    # "t":I
    .restart local v4    # "t":I
    shr-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 449
    :cond_3
    move/from16 v16, v4

    .end local v4    # "t":I
    .restart local v16    # "t":I
    rsub-int/lit8 v4, p6, 0x1f

    shl-int v4, v6, v4

    .line 450
    .local v4, "ni":I
    const/4 v6, 0x0

    .local v6, "k":I
    move/from16 v7, p2

    .local v7, "r":I
    :goto_3
    if-ge v6, v3, :cond_4

    .line 452
    aget v8, p1, v7

    invoke-virtual {v0, v8, v4, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v8

    aput v8, p1, v7

    .line 450
    add-int/lit8 v6, v6, 0x1

    add-int v7, v7, p3

    goto :goto_3

    .line 454
    :cond_4
    return-void
.end method

.method modp_mkgm2([II[IIIIII)V
    .locals 13
    .param p1, "srcgm"    # [I
    .param p2, "gm"    # I
    .param p3, "srcigm"    # [I
    .param p4, "igm"    # I
    .param p5, "logn"    # I
    .param p6, "g"    # I
    .param p7, "p"    # I
    .param p8, "p0i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "srcgm",
            "gm",
            "srcigm",
            "igm",
            "logn",
            "g",
            "p",
            "p0i"
        }
    .end annotation

    .line 327
    move/from16 v3, p7

    move/from16 v4, p8

    invoke-static/range {p5 .. p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v6

    .line 333
    .local v6, "n":I
    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v1

    .line 334
    .local v1, "R2":I
    move/from16 v0, p6

    invoke-virtual {p0, v0, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    .line 335
    .end local p6    # "g":I
    .local v0, "g":I
    move/from16 v2, p5

    move v7, v2

    move v2, v0

    .end local v0    # "g":I
    .local v2, "g":I
    .local v7, "k":I
    :goto_0
    const/16 v0, 0xa

    if-ge v7, v0, :cond_0

    .line 337
    invoke-virtual {p0, v2, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    .line 335
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_div(IIIII)I

    move-result v5

    .line 341
    .local v5, "ig":I
    rsub-int/lit8 v7, p5, 0xa

    .line 342
    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v8

    move v9, v8

    .line 343
    .local v8, "x1":I
    .local v9, "x2":I
    const/4 v10, 0x0

    .local v10, "u":I
    :goto_1
    if-ge v10, v6, :cond_1

    .line 347
    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->REV10:[S

    shl-int v12, v10, v7

    aget-short v11, v11, v12

    .line 348
    .local v11, "v":I
    add-int v12, p2, v11

    aput v8, p1, v12

    .line 349
    add-int v12, p4, v11

    aput v9, p3, v12

    .line 350
    invoke-virtual {p0, v8, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v8

    .line 351
    invoke-virtual {p0, v9, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v9

    .line 343
    .end local v11    # "v":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 353
    :cond_1
    return-void
.end method

.method modp_montymul(IIII)I
    .locals 7
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "p"    # I
    .param p4, "p0i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "p",
            "p0i"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v2

    mul-long v0, v0, v2

    .line 108
    .local v0, "z":J
    int-to-long v2, p4

    mul-long v2, v2, v0

    const v4, 0x7fffffff

    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    and-long/2addr v2, v4

    int-to-long v4, p3

    mul-long v2, v2, v4

    .line 109
    .local v2, "w":J
    add-long v4, v0, v2

    const/16 v6, 0x1f

    ushr-long/2addr v4, v6

    long-to-int v5, v4

    sub-int/2addr v5, p3

    .line 110
    .local v5, "d":I
    ushr-int/lit8 v4, v5, 0x1f

    neg-int v4, v4

    and-int/2addr v4, p3

    add-int/2addr v5, v4

    .line 111
    return v5
.end method

.method modp_ninv31(I)I
    .locals 3
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 54
    rsub-int/lit8 v0, p1, 0x2

    .line 55
    .local v0, "y":I
    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 56
    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 57
    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 58
    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 59
    const v1, 0x7fffffff

    neg-int v2, v0

    and-int/2addr v1, v2

    return v1
.end method

.method modp_norm(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "p"
        }
    .end annotation

    .line 43
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    ushr-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    sub-int v0, p1, v0

    return v0
.end method

.method modp_poly_rec_res([IIIIII)V
    .locals 7
    .param p1, "srcf"    # [I
    .param p2, "f"    # I
    .param p3, "logn"    # I
    .param p4, "p"    # I
    .param p5, "p0i"    # I
    .param p6, "R2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcf",
            "f",
            "logn",
            "p",
            "p0i",
            "R2"
        }
    .end annotation

    .line 491
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 492
    .local v0, "hn":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 496
    shl-int/lit8 v3, v2, 0x1

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x0

    aget v3, p1, v3

    .line 497
    .local v3, "w0":I
    shl-int/lit8 v4, v2, 0x1

    add-int/2addr v4, p2

    add-int/2addr v4, v1

    aget v4, p1, v4

    .line 498
    .local v4, "w1":I
    add-int v5, p2, v2

    invoke-virtual {p0, v3, v4, p4, p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v6

    invoke-virtual {p0, v6, p6, p4, p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v6

    aput v6, p1, v5

    .line 492
    .end local v3    # "w0":I
    .end local v4    # "w1":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_0
    return-void
.end method

.method modp_set(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "p"
        }
    .end annotation

    .line 33
    move v0, p1

    .line 34
    .local v0, "w":I
    ushr-int/lit8 v1, v0, 0x1f

    neg-int v1, v1

    and-int/2addr v1, p2

    add-int/2addr v0, v1

    .line 35
    return v0
.end method

.method modp_sub(III)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "p"
        }
    .end annotation

    .line 93
    sub-int v0, p1, p2

    .line 94
    .local v0, "d":I
    ushr-int/lit8 v1, v0, 0x1f

    neg-int v1, v1

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    .line 95
    return v0
.end method

.method poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V
    .locals 16
    .param p1, "srcd"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "d"    # I
    .param p3, "srcf"    # [I
    .param p4, "f"    # I
    .param p5, "flen"    # I
    .param p6, "fstride"    # I
    .param p7, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcd",
            "d",
            "srcf",
            "f",
            "flen",
            "fstride",
            "logn"
        }
    .end annotation

    .line 1454
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v2

    .line 1455
    .local v2, "n":I
    if-nez v1, :cond_1

    .line 1457
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1459
    add-int v4, p2, v3

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v5, p1, v4

    .line 1457
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1461
    :cond_0
    return-void

    .line 1463
    .end local v3    # "u":I
    :cond_1
    const/4 v3, 0x0

    move v4, v3

    move/from16 v3, p4

    .end local p4    # "f":I
    .local v3, "f":I
    .local v4, "u":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 1474
    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    aget v5, p3, v5

    ushr-int/lit8 v5, v5, 0x1e

    neg-int v5, v5

    .line 1475
    .local v5, "neg":I
    ushr-int/lit8 v6, v5, 0x1

    .line 1476
    .local v6, "xm":I
    and-int/lit8 v7, v5, 0x1

    .line 1477
    .local v7, "cc":I
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 1478
    .local v8, "x":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_one:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 1479
    .local v9, "fsc":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    const/4 v10, 0x0

    .local v10, "v":I
    :goto_2
    if-ge v10, v1, :cond_2

    .line 1483
    add-int v11, v3, v10

    aget v11, p3, v11

    xor-int/2addr v11, v6

    add-int/2addr v11, v7

    .line 1484
    .local v11, "w":I
    ushr-int/lit8 v7, v11, 0x1f

    .line 1485
    const v12, 0x7fffffff

    and-int/2addr v11, v12

    .line 1486
    shl-int/lit8 v12, v11, 0x1

    and-int/2addr v12, v5

    sub-int/2addr v11, v12

    .line 1487
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move v15, v2

    .end local v2    # "n":I
    .local v15, "n":I
    int-to-long v1, v11

    invoke-virtual {v14, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    invoke-virtual {v13, v1, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    invoke-virtual {v12, v8, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    .line 1479
    .end local v11    # "w":I
    add-int/lit8 v10, v10, 0x1

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo31:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v1, v9, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move/from16 v1, p5

    move v2, v15

    goto :goto_2

    .line 1489
    .end local v15    # "n":I
    .restart local v2    # "n":I
    :cond_2
    move v15, v2

    .end local v2    # "n":I
    .restart local v15    # "n":I
    add-int v1, p2, v4

    aput-object v8, p1, v1

    .line 1463
    .end local v5    # "neg":I
    .end local v6    # "xm":I
    .end local v7    # "cc":I
    .end local v8    # "x":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v9    # "fsc":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v10    # "v":I
    add-int/lit8 v4, v4, 0x1

    add-int v3, v3, p6

    move/from16 v1, p5

    goto :goto_1

    .line 1491
    .end local v15    # "n":I
    .restart local v2    # "n":I
    :cond_3
    return-void
.end method

.method poly_big_to_small([BI[IIII)I
    .locals 5
    .param p1, "srcd"    # [B
    .param p2, "d"    # I
    .param p3, "srcs"    # [I
    .param p4, "s"    # I
    .param p5, "lim"    # I
    .param p6, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcd",
            "d",
            "srcs",
            "s",
            "lim",
            "logn"
        }
    .end annotation

    .line 1507
    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v0

    .line 1508
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1512
    add-int v2, p4, v1

    invoke-virtual {p0, p3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_one_to_plain([II)I

    move-result v2

    .line 1513
    .local v2, "z":I
    neg-int v3, p5

    if-lt v2, v3, :cond_1

    if-le v2, p5, :cond_0

    goto :goto_1

    .line 1517
    :cond_0
    add-int v3, p2, v1

    int-to-byte v4, v2

    aput-byte v4, p1, v3

    .line 1508
    .end local v2    # "z":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1515
    .restart local v2    # "z":I
    :cond_1
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 1519
    .end local v2    # "z":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method poly_small_mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BII)V
    .locals 6
    .param p1, "rng"    # Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .param p2, "srcf"    # [B
    .param p3, "f"    # I
    .param p4, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rng",
            "srcf",
            "f",
            "logn"
        }
    .end annotation

    .line 3563
    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v0

    .line 3564
    .local v0, "n":I
    const/4 v1, 0x0

    .line 3565
    .local v1, "mod2":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 3571
    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;I)I

    move-result v3

    .line 3579
    .local v3, "s":I
    const/16 v4, -0x7f

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-le v3, v4, :cond_1

    .line 3581
    goto :goto_1

    .line 3589
    :cond_1
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_2

    .line 3591
    and-int/lit8 v4, v3, 0x1

    xor-int/2addr v4, v1

    if-nez v4, :cond_3

    .line 3593
    goto :goto_1

    .line 3598
    :cond_2
    and-int/lit8 v4, v3, 0x1

    xor-int/2addr v1, v4

    .line 3600
    :cond_3
    add-int v4, p3, v2

    int-to-byte v5, v3

    aput-byte v5, p2, v4

    .line 3601
    nop

    .line 3565
    .end local v3    # "s":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3604
    :cond_4
    return-void
.end method

.method poly_small_sqnorm([BII)I
    .locals 6
    .param p1, "srcf"    # [B
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

    .line 1877
    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v0

    .line 1878
    .local v0, "n":I
    const/4 v1, 0x0

    .line 1879
    .local v1, "s":I
    const/4 v2, 0x0

    .line 1880
    .local v2, "ng":I
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1884
    add-int v4, p2, v3

    aget-byte v4, p1, v4

    .line 1885
    .local v4, "z":I
    mul-int v5, v4, v4

    add-int/2addr v1, v5

    .line 1886
    or-int/2addr v2, v1

    .line 1880
    .end local v4    # "z":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1888
    :cond_0
    ushr-int/lit8 v4, v2, 0x1f

    neg-int v4, v4

    or-int/2addr v4, v1

    return v4
.end method

.method poly_small_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V
    .locals 6
    .param p1, "srcx"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "x"    # I
    .param p3, "srcf"    # [B
    .param p4, "f"    # I
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
            "srcx",
            "x",
            "srcf",
            "f",
            "logn"
        }
    .end annotation

    .line 1898
    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v0

    .line 1899
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1901
    add-int v2, p2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p4, v1

    aget-byte v4, p3, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    .line 1899
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1903
    :cond_0
    return-void
.end method

.method poly_sub_scaled([IIII[IIII[IIIII)V
    .locals 16
    .param p1, "srcF"    # [I
    .param p2, "F"    # I
    .param p3, "Flen"    # I
    .param p4, "Fstride"    # I
    .param p5, "srcf"    # [I
    .param p6, "f"    # I
    .param p7, "flen"    # I
    .param p8, "fstride"    # I
    .param p9, "srck"    # [I
    .param p10, "k"    # I
    .param p11, "sch"    # I
    .param p12, "scl"    # I
    .param p13, "logn"    # I
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcF",
            "F",
            "Flen",
            "Fstride",
            "srcf",
            "f",
            "flen",
            "fstride",
            "srck",
            "k",
            "sch",
            "scl",
            "logn"
        }
    .end annotation

    .line 1538
    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v0

    .line 1539
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1546
    add-int v2, p10, v1

    aget v2, p9, v2

    neg-int v2, v2

    .line 1547
    .local v2, "kf":I
    mul-int v3, v1, p4

    add-int v3, p2, v3

    .line 1548
    .local v3, "x":I
    move/from16 v4, p6

    .line 1549
    .local v4, "y":I
    const/4 v5, 0x0

    move v13, v2

    move v8, v3

    move v11, v4

    .end local v2    # "kf":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    .local v5, "v":I
    .local v8, "x":I
    .local v11, "y":I
    .local v13, "kf":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 1551
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v9, p3

    move-object/from16 v10, p5

    move/from16 v12, p7

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-virtual/range {v6 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_add_scaled_mul_small([III[IIIIII)V

    .line 1553
    add-int v2, v1, v5

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_0

    .line 1555
    move/from16 v2, p2

    .line 1556
    .end local v8    # "x":I
    .local v2, "x":I
    neg-int v3, v13

    move v8, v2

    move v13, v3

    .end local v13    # "kf":I
    .local v3, "kf":I
    goto :goto_2

    .line 1560
    .end local v2    # "x":I
    .end local v3    # "kf":I
    .restart local v8    # "x":I
    .restart local v13    # "kf":I
    :cond_0
    add-int v8, v8, p4

    .line 1562
    :goto_2
    add-int v11, v11, p8

    .line 1549
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1539
    .end local v5    # "v":I
    .end local v8    # "x":I
    .end local v11    # "y":I
    .end local v13    # "kf":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1565
    :cond_2
    return-void
.end method

.method poly_sub_scaled_ntt([IIII[IIII[IIIII[II)V
    .locals 22
    .param p1, "srcF"    # [I
    .param p2, "F"    # I
    .param p3, "Flen"    # I
    .param p4, "Fstride"    # I
    .param p5, "srcf"    # [I
    .param p6, "f"    # I
    .param p7, "flen"    # I
    .param p8, "fstride"    # I
    .param p9, "srck"    # [I
    .param p10, "k"    # I
    .param p11, "sch"    # I
    .param p12, "scl"    # I
    .param p13, "logn"    # I
    .param p14, "srctmp"    # [I
    .param p15, "tmp"    # I
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcF",
            "F",
            "Flen",
            "Fstride",
            "srcf",
            "f",
            "flen",
            "fstride",
            "srck",
            "k",
            "sch",
            "scl",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 1583
    move-object/from16 v0, p0

    move/from16 v9, p7

    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v10

    .line 1584
    .local v10, "n":I
    add-int/lit8 v11, v9, 0x1

    .line 1585
    .local v11, "tlen":I
    move/from16 v2, p15

    .line 1586
    .local v2, "gm":I
    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v1

    add-int v4, v2, v1

    .line 1587
    .local v4, "igm":I
    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v1

    add-int v12, v4, v1

    .line 1588
    .local v12, "fk":I
    mul-int v1, v10, v11

    add-int v13, v12, v1

    .line 1590
    .local v13, "t1":I
    sget-object v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    .line 1595
    .local v14, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    const/4 v1, 0x0

    move v15, v1

    .local v15, "u":I
    :goto_0
    if-ge v15, v11, :cond_3

    .line 1600
    aget-object v1, v14, v15

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 1601
    .local v7, "p":I
    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v8

    .line 1602
    .local v8, "p0i":I
    invoke-virtual {v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v1

    .line 1603
    .local v1, "R2":I
    invoke-virtual {v0, v9, v7, v8, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v16

    .line 1604
    .local v16, "Rx":I
    aget-object v3, v14, v15

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p14

    move/from16 v5, p13

    move/from16 v17, v1

    move-object/from16 v1, p14

    .end local v1    # "R2":I
    .local v17, "R2":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 1606
    move/from16 v18, v4

    .end local v4    # "igm":I
    .local v18, "igm":I
    const/4 v1, 0x0

    .local v1, "v":I
    :goto_1
    if-ge v1, v10, :cond_0

    .line 1608
    add-int v3, v13, v1

    add-int v4, p10, v1

    aget v4, p9, v4

    invoke-virtual {v0, v4, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v4

    aput v4, p14, v3

    .line 1606
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1610
    :cond_0
    move-object/from16 v3, p14

    move/from16 v5, p13

    move v4, v2

    move v6, v7

    move v7, v8

    move v2, v13

    move v8, v1

    move-object/from16 v1, p14

    .end local v1    # "v":I
    .end local v13    # "t1":I
    .local v2, "t1":I
    .local v4, "gm":I
    .local v6, "p":I
    .local v7, "p0i":I
    .local v8, "v":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 1611
    move v9, v2

    move v13, v4

    move v5, v7

    move v7, v6

    .end local v2    # "t1":I
    .end local v4    # "gm":I
    .end local v6    # "p":I
    .local v5, "p0i":I
    .local v7, "p":I
    .local v9, "t1":I
    .local v13, "gm":I
    const/4 v0, 0x0

    .end local v8    # "v":I
    .local v0, "v":I
    move/from16 v1, p6

    .local v1, "y":I
    add-int v2, v12, v15

    move v8, v0

    move/from16 v19, v2

    move v2, v1

    .line 1612
    .end local v0    # "v":I
    .end local v1    # "y":I
    .local v2, "y":I
    .restart local v8    # "v":I
    .local v19, "x":I
    :goto_2
    if-ge v8, v10, :cond_1

    .line 1614
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v3, p7

    move v4, v7

    move/from16 v7, v16

    move/from16 v6, v17

    .end local v16    # "Rx":I
    .end local v17    # "R2":I
    .local v4, "p":I
    .local v6, "R2":I
    .local v7, "Rx":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v16

    move/from16 v21, v2

    move/from16 v20, v7

    move v7, v4

    .end local v2    # "y":I
    .end local v4    # "p":I
    .end local v6    # "R2":I
    .local v7, "p":I
    .restart local v17    # "R2":I
    .local v20, "Rx":I
    .local v21, "y":I
    aput v16, p14, v19

    .line 1612
    add-int/lit8 v8, v8, 0x1

    add-int v2, v21, p8

    .end local v21    # "y":I
    .restart local v2    # "y":I
    add-int v19, v19, v11

    move/from16 v16, v20

    goto :goto_2

    .line 1616
    .end local v20    # "Rx":I
    .restart local v16    # "Rx":I
    :cond_1
    move/from16 v21, v2

    move/from16 v20, v16

    .end local v2    # "y":I
    .end local v16    # "Rx":I
    .restart local v20    # "Rx":I
    .restart local v21    # "y":I
    add-int v2, v12, v15

    move-object/from16 v4, p14

    move v0, v8

    move v8, v5

    move v5, v13

    move v13, v0

    move-object/from16 v0, p0

    move/from16 v6, p13

    move-object/from16 v1, p14

    move v3, v11

    move/from16 v11, v17

    .end local v17    # "R2":I
    .local v3, "tlen":I
    .local v5, "gm":I
    .local v8, "p0i":I
    .local v11, "R2":I
    .local v13, "v":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2_ext([III[IIIII)V

    .line 1617
    move/from16 v16, v5

    .end local v5    # "gm":I
    .local v16, "gm":I
    const/4 v1, 0x0

    .end local v13    # "v":I
    .local v1, "v":I
    add-int v2, v12, v15

    move v13, v1

    move/from16 v17, v2

    .end local v1    # "v":I
    .end local v19    # "x":I
    .restart local v13    # "v":I
    .local v17, "x":I
    :goto_3
    if-ge v13, v10, :cond_2

    .line 1619
    add-int v1, v9, v13

    aget v1, p14, v1

    aget v2, p14, v17

    .line 1620
    invoke-virtual {v0, v1, v2, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    .line 1619
    invoke-virtual {v0, v1, v11, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    aput v1, p14, v17

    .line 1617
    add-int/lit8 v13, v13, 0x1

    add-int v17, v17, v3

    goto :goto_3

    .line 1622
    :cond_2
    add-int v2, v12, v15

    move-object/from16 v4, p14

    move/from16 v6, p13

    move-object/from16 v1, p14

    move/from16 v5, v18

    .end local v18    # "igm":I
    .local v5, "igm":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    .line 1595
    .end local v5    # "igm":I
    .end local v7    # "p":I
    .end local v8    # "p0i":I
    .end local v11    # "R2":I
    .end local v13    # "v":I
    .end local v20    # "Rx":I
    .restart local v18    # "igm":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move v11, v3

    move v13, v9

    move/from16 v2, v16

    move/from16 v4, v18

    move/from16 v9, p7

    goto/16 :goto_0

    .line 1628
    .end local v3    # "tlen":I
    .end local v9    # "t1":I
    .end local v16    # "gm":I
    .end local v17    # "x":I
    .end local v18    # "igm":I
    .end local v21    # "y":I
    .local v2, "gm":I
    .local v4, "igm":I
    .local v11, "tlen":I
    .local v13, "t1":I
    :cond_3
    move/from16 v16, v2

    move/from16 v18, v4

    move v3, v11

    move v9, v13

    .end local v2    # "gm":I
    .end local v4    # "igm":I
    .end local v11    # "tlen":I
    .end local v13    # "t1":I
    .restart local v3    # "tlen":I
    .restart local v9    # "t1":I
    .restart local v16    # "gm":I
    .restart local v18    # "igm":I
    const/4 v7, 0x1

    move v4, v3

    move-object/from16 v8, p14

    move-object/from16 v0, p0

    move-object/from16 v1, p14

    move v5, v10

    move v2, v12

    move-object v6, v14

    .end local v10    # "n":I
    .end local v12    # "fk":I
    .end local v14    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v2, "fk":I
    .local v5, "n":I
    .local v6, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    .line 1633
    move v10, v2

    move-object v11, v6

    move v12, v9

    move v9, v5

    .end local v2    # "fk":I
    .end local v5    # "n":I
    .end local v6    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v9, "n":I
    .local v10, "fk":I
    .local v11, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v12, "t1":I
    const/4 v0, 0x0

    .end local v15    # "u":I
    .local v0, "u":I
    move/from16 v1, p2

    .local v1, "x":I
    move v13, v0

    move v5, v2

    move v2, v1

    .end local v0    # "u":I
    .end local v1    # "x":I
    .local v2, "x":I
    .local v5, "y":I
    .local v13, "u":I
    :goto_4
    if-ge v13, v9, :cond_4

    .line 1635
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p11

    move/from16 v8, p12

    move-object/from16 v4, p14

    move v6, v3

    move/from16 v3, p3

    .end local v3    # "tlen":I
    .local v6, "tlen":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_sub_scaled([III[IIIII)V

    .line 1633
    move v3, v6

    .end local v6    # "tlen":I
    .restart local v3    # "tlen":I
    add-int/lit8 v13, v13, 0x1

    add-int v2, v2, p4

    add-int/2addr v5, v3

    goto :goto_4

    .line 1637
    :cond_4
    return-void
.end method

.method solve_NTRU(I[BI[BI[BI[BII[II)I
    .locals 19
    .param p1, "logn"    # I
    .param p2, "srcF"    # [B
    .param p3, "F"    # I
    .param p4, "srcG"    # [B
    .param p5, "G"    # I
    .param p6, "srcf"    # [B
    .param p7, "f"    # I
    .param p8, "srcg"    # [B
    .param p9, "g"    # I
    .param p10, "lim"    # I
    .param p11, "srctmp"    # [I
    .param p12, "tmp"    # I
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
            0x0,
            0x0
        }
        names = {
            "logn",
            "srcF",
            "F",
            "srcG",
            "G",
            "srcf",
            "f",
            "srcg",
            "g",
            "lim",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 3440
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v9

    .line 3442
    .local v9, "n":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p11

    move/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_deepest(I[BI[BI[II)I

    move-result v8

    const/4 v10, 0x0

    if-nez v8, :cond_0

    .line 3444
    return v10

    .line 3452
    :cond_0
    const/4 v11, 0x2

    move/from16 v5, p1

    if-gt v5, v11, :cond_3

    .line 3456
    move/from16 v0, p1

    .line 3457
    .local v0, "depth":I
    :goto_0
    add-int/lit8 v6, v0, -0x1

    .end local v0    # "depth":I
    .local v6, "depth":I
    if-lez v0, :cond_2

    .line 3459
    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v7, p11

    move/from16 v8, p12

    move v1, v5

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_intermediate(I[BI[BII[II)I

    move-result v11

    if-nez v11, :cond_1

    .line 3461
    return v10

    .line 3459
    :cond_1
    move/from16 v5, p1

    move v0, v6

    goto :goto_0

    .line 3464
    .end local v6    # "depth":I
    :cond_2
    goto :goto_2

    .line 3469
    :cond_3
    move/from16 v0, p1

    .line 3470
    .restart local v0    # "depth":I
    :goto_1
    add-int/lit8 v6, v0, -0x1

    .end local v0    # "depth":I
    .restart local v6    # "depth":I
    if-le v0, v11, :cond_5

    .line 3472
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_intermediate(I[BI[BII[II)I

    move-result v12

    move v8, v6

    .end local v6    # "depth":I
    .local v8, "depth":I
    if-nez v12, :cond_4

    .line 3474
    return v10

    .line 3472
    :cond_4
    move v0, v8

    goto :goto_1

    .line 3477
    .end local v8    # "depth":I
    .restart local v6    # "depth":I
    :cond_5
    move v8, v6

    .end local v6    # "depth":I
    .restart local v8    # "depth":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p11

    move/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_binary_depth1(I[BI[BI[II)I

    move-result v11

    if-nez v11, :cond_6

    .line 3479
    return v10

    .line 3481
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p11

    move/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_binary_depth0(I[BI[BI[II)I

    move-result v11

    if-nez v11, :cond_7

    .line 3483
    return v10

    .line 3490
    .end local v8    # "depth":I
    :cond_7
    :goto_2
    if-nez p4, :cond_8

    .line 3492
    const/4 v0, 0x0

    .line 3493
    .end local p5    # "G":I
    .local v0, "G":I
    new-array v1, v9, [B

    move v8, v0

    move-object v7, v1

    .end local p4    # "srcG":[B
    .local v1, "srcG":[B
    goto :goto_3

    .line 3490
    .end local v0    # "G":I
    .end local v1    # "srcG":[B
    .restart local p4    # "srcG":[B
    .restart local p5    # "G":I
    :cond_8
    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 3500
    .end local p4    # "srcG":[B
    .end local p5    # "G":I
    .local v7, "srcG":[B
    .local v8, "G":I
    :goto_3
    move-object/from16 v0, p0

    move/from16 v6, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v5, p10

    move-object/from16 v3, p11

    move/from16 v4, p12

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_small([BI[IIII)I

    move-result v11

    if-eqz v11, :cond_e

    add-int v4, p12, v9

    .line 3501
    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v5, p10

    move-object/from16 v3, p11

    move-object v1, v7

    move v2, v8

    .end local v7    # "srcG":[B
    .end local v8    # "G":I
    .restart local v1    # "srcG":[B
    .local v2, "G":I
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_small([BI[IIII)I

    move-result v4

    move-object v11, v1

    move v12, v2

    .end local v1    # "srcG":[B
    .end local v2    # "G":I
    .local v11, "srcG":[B
    .local v12, "G":I
    if-nez v4, :cond_9

    goto/16 :goto_7

    .line 3514
    :cond_9
    move/from16 v13, p12

    .line 3515
    .local v13, "Gt":I
    add-int v14, v13, v9

    .line 3516
    .local v14, "ft":I
    add-int v15, v14, v9

    .line 3517
    .local v15, "gt":I
    add-int v16, v15, v9

    .line 3518
    .local v16, "Ft":I
    add-int v4, v16, v9

    .line 3520
    .local v4, "gm":I
    sget-object v17, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    .line 3521
    .local v17, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    aget-object v1, v17, v10

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 3522
    .local v6, "p":I
    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v7

    .line 3523
    .local v7, "p0i":I
    aget-object v1, v17, v10

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p11

    move/from16 v5, p1

    move v2, v4

    move v8, v7

    move/from16 v4, p12

    move v7, v6

    move v6, v1

    move-object/from16 v1, p11

    .end local v4    # "gm":I
    .end local v6    # "p":I
    .local v2, "gm":I
    .local v7, "p":I
    .local v8, "p0i":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 3524
    move v4, v2

    move v6, v7

    move v7, v8

    .end local v2    # "gm":I
    .end local v8    # "p0i":I
    .restart local v4    # "gm":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_4
    if-ge v1, v9, :cond_a

    .line 3526
    add-int v2, v13, v1

    add-int v8, v12, v1

    aget-byte v3, v11, v8

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p11, v2

    .line 3524
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3528
    :cond_a
    const/4 v1, 0x0

    move v8, v1

    .end local v1    # "u":I
    .local v8, "u":I
    :goto_5
    if-ge v8, v9, :cond_b

    .line 3530
    add-int v1, v14, v8

    add-int v2, p7, v8

    aget-byte v2, p6, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p11, v1

    .line 3531
    add-int v1, v15, v8

    add-int v2, p9, v8

    aget-byte v2, p8, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p11, v1

    .line 3532
    add-int v1, v16, v8

    add-int v2, p3, v8

    aget-byte v2, p2, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p11, v1

    .line 3528
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3534
    :cond_b
    move-object/from16 v3, p11

    move/from16 v5, p1

    move-object/from16 v1, p11

    move v2, v14

    .end local v14    # "ft":I
    .local v2, "ft":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3535
    .end local v2    # "ft":I
    .restart local v14    # "ft":I
    move-object/from16 v0, p0

    move v2, v15

    .end local v15    # "gt":I
    .local v2, "gt":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3536
    .end local v2    # "gt":I
    .restart local v15    # "gt":I
    move/from16 v2, v16

    .end local v16    # "Ft":I
    .local v2, "Ft":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3537
    .end local v2    # "Ft":I
    .restart local v16    # "Ft":I
    move v2, v13

    .end local v13    # "Gt":I
    .local v2, "Gt":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3538
    const/16 v1, 0x3001

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    .line 3539
    .local v1, "r":I
    const/4 v5, 0x0

    .end local v8    # "u":I
    .local v5, "u":I
    :goto_6
    if-ge v5, v9, :cond_d

    .line 3543
    add-int v8, v14, v5

    aget v8, p11, v8

    add-int v13, v2, v5

    aget v13, p11, v13

    invoke-virtual {v0, v8, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v8

    add-int v13, v15, v5

    aget v13, p11, v13

    add-int v18, v16, v5

    const/16 p4, 0x1

    aget v3, p11, v18

    .line 3544
    invoke-virtual {v0, v13, v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    .line 3543
    invoke-virtual {v0, v8, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v3

    .line 3545
    .local v3, "z":I
    if-eq v3, v1, :cond_c

    .line 3547
    return v10

    .line 3539
    .end local v3    # "z":I
    :cond_c
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x1

    goto :goto_6

    .line 3551
    :cond_d
    const/16 p4, 0x1

    return p4

    .line 3500
    .end local v1    # "r":I
    .end local v2    # "Gt":I
    .end local v4    # "gm":I
    .end local v5    # "u":I
    .end local v6    # "p":I
    .end local v11    # "srcG":[B
    .end local v12    # "G":I
    .end local v14    # "ft":I
    .end local v15    # "gt":I
    .end local v16    # "Ft":I
    .end local v17    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v7, "srcG":[B
    .local v8, "G":I
    :cond_e
    move-object/from16 v0, p0

    move-object v11, v7

    move v12, v8

    .line 3503
    .end local v7    # "srcG":[B
    .end local v8    # "G":I
    .restart local v11    # "srcG":[B
    .restart local v12    # "G":I
    :goto_7
    return v10
.end method

.method solve_NTRU_binary_depth0(I[BI[BI[II)I
    .locals 31
    .param p1, "logn"    # I
    .param p2, "srcf"    # [B
    .param p3, "f"    # I
    .param p4, "srcg"    # [B
    .param p5, "g"    # I
    .param p6, "srctmp"    # [I
    .param p7, "tmp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "logn",
            "srcf",
            "f",
            "srcg",
            "g",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 3157
    move-object/from16 v0, p0

    const/4 v9, 0x1

    shl-int v10, v9, p1

    .line 3158
    .local v10, "n":I
    shr-int/lit8 v11, v10, 0x1

    .line 3175
    .local v11, "hn":I
    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 3176
    .local v6, "p":I
    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v7

    .line 3177
    .local v7, "p0i":I
    invoke-virtual {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v13

    .line 3179
    .local v13, "R2":I
    move/from16 v14, p7

    .line 3180
    .local v14, "Fp":I
    add-int v15, v14, v11

    .line 3181
    .local v15, "Gp":I
    add-int v16, v15, v11

    .line 3182
    .local v16, "ft":I
    add-int v17, v16, v10

    .line 3183
    .local v17, "gt":I
    add-int v4, v17, v10

    .line 3184
    .local v4, "gm":I
    move v2, v4

    .end local v4    # "gm":I
    .local v2, "gm":I
    add-int v4, v2, v10

    .line 3186
    .local v4, "igm":I
    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v1, v1, v12

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p6

    move/from16 v5, p1

    move v8, v7

    move v7, v6

    move v6, v1

    move-object/from16 v1, p6

    .end local v6    # "p":I
    .local v7, "p":I
    .local v8, "p0i":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 3191
    move v6, v7

    move v7, v8

    move v8, v4

    move v4, v2

    .end local v2    # "gm":I
    .local v4, "gm":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    .local v8, "igm":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 3193
    add-int v3, v14, v2

    add-int v5, v14, v2

    invoke-virtual {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_one_to_plain([II)I

    move-result v5

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v5

    aput v5, v1, v3

    .line 3194
    add-int v3, v15, v2

    add-int v5, v15, v2

    invoke-virtual {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_one_to_plain([II)I

    move-result v5

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v5

    aput v5, v1, v3

    .line 3191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3196
    :cond_0
    add-int/lit8 v5, p1, -0x1

    move-object/from16 v3, p6

    move/from16 v30, v14

    move v14, v2

    move/from16 v2, v30

    .local v2, "Fp":I
    .local v14, "u":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3197
    add-int/lit8 v5, p1, -0x1

    move v0, v15

    move v15, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .local v2, "Gp":I
    .local v15, "Fp":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3202
    move/from16 v18, v2

    .end local v2    # "Gp":I
    .local v18, "Gp":I
    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v10, :cond_1

    .line 3204
    add-int v1, v16, v14

    add-int v2, p3, v14

    aget-byte v2, p2, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p6, v1

    .line 3205
    add-int v1, v17, v14

    add-int v2, p5, v14

    aget-byte v2, p4, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p6, v1

    .line 3202
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 3207
    :cond_1
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move/from16 v2, v16

    .end local v16    # "ft":I
    .local v2, "ft":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3208
    .end local v2    # "ft":I
    .restart local v16    # "ft":I
    move-object/from16 v0, p0

    move/from16 v2, v17

    .end local v17    # "gt":I
    .local v2, "gt":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3213
    move/from16 v19, v4

    .end local v2    # "gt":I
    .end local v4    # "gm":I
    .restart local v17    # "gt":I
    .local v19, "gm":I
    const/4 v1, 0x0

    move v14, v1

    :goto_2
    if-ge v14, v10, :cond_2

    .line 3218
    add-int v1, v16, v14

    add-int/2addr v1, v12

    aget v1, p6, v1

    .line 3219
    .local v1, "ftA":I
    add-int v2, v16, v14

    add-int/2addr v2, v9

    aget v2, p6, v2

    .line 3220
    .local v2, "ftB":I
    add-int v3, v17, v14

    add-int/2addr v3, v12

    aget v3, p6, v3

    .line 3221
    .local v3, "gtA":I
    add-int v4, v17, v14

    add-int/2addr v4, v9

    aget v4, p6, v4

    .line 3222
    .local v4, "gtB":I
    shr-int/lit8 v5, v14, 0x1

    add-int/2addr v5, v15

    aget v5, p6, v5

    invoke-virtual {v0, v5, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    .line 3223
    .local v5, "mFp":I
    shr-int/lit8 v20, v14, 0x1

    add-int v20, v18, v20

    const/16 v21, 0x1

    aget v9, p6, v20

    invoke-virtual {v0, v9, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v9

    .line 3224
    .local v9, "mGp":I
    add-int v20, v16, v14

    add-int/lit8 v20, v20, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v22

    aput v22, p6, v20

    .line 3225
    add-int v20, v16, v14

    add-int/lit8 v20, v20, 0x1

    invoke-virtual {v0, v3, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v22

    aput v22, p6, v20

    .line 3226
    add-int v20, v17, v14

    add-int/lit8 v20, v20, 0x0

    invoke-virtual {v0, v2, v9, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v22

    aput v22, p6, v20

    .line 3227
    add-int v20, v17, v14

    add-int/lit8 v20, v20, 0x1

    invoke-virtual {v0, v1, v9, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v22

    aput v22, p6, v20

    .line 3213
    .end local v1    # "ftA":I
    .end local v2    # "ftB":I
    .end local v3    # "gtA":I
    .end local v4    # "gtB":I
    .end local v5    # "mFp":I
    .end local v9    # "mGp":I
    add-int/lit8 v14, v14, 0x2

    const/4 v9, 0x1

    goto :goto_2

    .line 3229
    :cond_2
    const/16 v21, 0x1

    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move v4, v8

    move/from16 v2, v16

    .end local v8    # "igm":I
    .end local v16    # "ft":I
    .local v2, "ft":I
    .local v4, "igm":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    .line 3230
    move v9, v2

    .end local v2    # "ft":I
    .local v9, "ft":I
    move-object/from16 v0, p0

    move/from16 v2, v17

    .end local v17    # "gt":I
    .local v2, "gt":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    .line 3232
    move/from16 v16, v4

    .end local v2    # "gt":I
    .end local v4    # "igm":I
    .local v16, "igm":I
    .restart local v17    # "gt":I
    add-int v18, v15, v10

    .line 3233
    add-int v4, v18, v10

    .line 3235
    .local v4, "t1":I
    mul-int/lit8 v0, v10, 0x2

    invoke-static {v1, v9, v1, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3245
    add-int v2, v4, v10

    .line 3246
    .local v2, "t2":I
    add-int v20, v2, v10

    .line 3247
    .local v20, "t3":I
    add-int v22, v20, v10

    .line 3248
    .local v22, "t4":I
    add-int v23, v22, v10

    .line 3254
    .local v23, "t5":I
    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v0, v0, v12

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move v5, v4

    move v4, v2

    move v2, v5

    move/from16 v5, p1

    move v8, v7

    move v7, v6

    move v6, v0

    move-object/from16 v0, p0

    .end local v6    # "p":I
    .local v2, "t1":I
    .local v4, "t2":I
    .local v7, "p":I
    .local v8, "p0i":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 3259
    move/from16 v24, v4

    move v6, v7

    move v7, v8

    move v4, v2

    .end local v2    # "t1":I
    .end local v8    # "p0i":I
    .local v4, "t1":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    .local v24, "t2":I
    move v2, v15

    .end local v15    # "Fp":I
    .local v2, "Fp":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3260
    .end local v2    # "Fp":I
    .restart local v15    # "Fp":I
    move/from16 v2, v18

    .end local v18    # "Gp":I
    .local v2, "Gp":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3266
    .end local v2    # "Gp":I
    .restart local v18    # "Gp":I
    add-int/lit8 v1, v22, 0x0

    add-int/lit8 v2, v23, 0x0

    add-int/lit8 v3, p3, 0x0

    aget-byte v3, p2, v3

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p6, v2

    aput v3, p6, v1

    .line 3267
    const/4 v1, 0x1

    move v8, v1

    .end local v14    # "u":I
    .local v8, "u":I
    :goto_3
    if-ge v8, v10, :cond_3

    .line 3269
    add-int v1, v22, v8

    add-int v2, p3, v8

    aget-byte v2, p2, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p6, v1

    .line 3270
    add-int v1, v23, v10

    sub-int/2addr v1, v8

    add-int v2, p3, v8

    aget-byte v2, p2, v2

    neg-int v2, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p6, v1

    .line 3267
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3272
    :cond_3
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move/from16 v2, v22

    .end local v22    # "t4":I
    .local v2, "t4":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3273
    move v14, v2

    .end local v2    # "t4":I
    .local v14, "t4":I
    move-object/from16 v0, p0

    move/from16 v2, v23

    .end local v23    # "t5":I
    .local v2, "t5":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3278
    move/from16 v22, v2

    .end local v2    # "t5":I
    .local v22, "t5":I
    const/4 v1, 0x0

    .end local v8    # "u":I
    .local v1, "u":I
    :goto_4
    if-ge v1, v10, :cond_4

    .line 3282
    add-int v23, v22, v1

    aget v2, p6, v23

    invoke-virtual {v0, v2, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    .line 3283
    .local v2, "w":I
    add-int v3, v24, v1

    add-int v5, v15, v1

    aget v5, p6, v5

    invoke-virtual {v0, v2, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    aput v5, p6, v3

    .line 3284
    add-int v3, v20, v1

    add-int v5, v14, v1

    aget v5, p6, v5

    invoke-virtual {v0, v2, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    aput v5, p6, v3

    .line 3278
    .end local v2    # "w":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3291
    :cond_4
    add-int/lit8 v2, v14, 0x0

    add-int/lit8 v23, v22, 0x0

    add-int/lit8 v3, p5, 0x0

    aget-byte v3, p4, v3

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p6, v23

    aput v3, p6, v2

    .line 3292
    const/4 v1, 0x1

    move v8, v1

    .end local v1    # "u":I
    .restart local v8    # "u":I
    :goto_5
    if-ge v8, v10, :cond_5

    .line 3294
    add-int v1, v14, v8

    add-int v2, p5, v8

    aget-byte v2, p4, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p6, v1

    .line 3295
    add-int v23, v22, v10

    sub-int v23, v23, v8

    add-int v1, p5, v8

    aget-byte v1, p4, v1

    neg-int v1, v1

    invoke-virtual {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v1

    aput v1, p6, v23

    .line 3292
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3297
    :cond_5
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move v2, v14

    .end local v14    # "t4":I
    .local v2, "t4":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3298
    .end local v2    # "t4":I
    .restart local v14    # "t4":I
    move-object/from16 v0, p0

    move/from16 v2, v22

    .end local v22    # "t5":I
    .local v2, "t5":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3303
    .end local v2    # "t5":I
    .restart local v22    # "t5":I
    const/4 v1, 0x0

    .end local v8    # "u":I
    .restart local v1    # "u":I
    :goto_6
    if-ge v1, v10, :cond_6

    .line 3307
    add-int v23, v22, v1

    aget v2, p6, v23

    invoke-virtual {v0, v2, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    .line 3308
    .local v2, "w":I
    add-int v3, v24, v1

    add-int v5, v24, v1

    aget v5, p6, v5

    add-int v8, v18, v1

    aget v8, p6, v8

    .line 3309
    invoke-virtual {v0, v2, v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v8

    .line 3308
    invoke-virtual {v0, v5, v8, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v5

    aput v5, p6, v3

    .line 3310
    add-int v3, v20, v1

    add-int v5, v20, v1

    aget v5, p6, v5

    add-int v8, v14, v1

    aget v8, p6, v8

    .line 3311
    invoke-virtual {v0, v2, v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v8

    .line 3310
    invoke-virtual {v0, v5, v8, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v5

    aput v5, p6, v3

    .line 3303
    .end local v2    # "w":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3320
    :cond_6
    sget-object v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v2, v2, v12

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p6

    move/from16 v5, p1

    move v8, v7

    move v7, v6

    move v6, v2

    move v2, v4

    move v4, v14

    move v14, v1

    move-object/from16 v1, p6

    .end local v1    # "u":I
    .end local v6    # "p":I
    .local v2, "t1":I
    .local v4, "t4":I
    .local v7, "p":I
    .local v8, "p0i":I
    .local v14, "u":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 3321
    move/from16 v23, v2

    move v6, v7

    move v7, v8

    .end local v2    # "t1":I
    .end local v8    # "p0i":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    .local v23, "t1":I
    move-object/from16 v0, p0

    move/from16 v2, v24

    .end local v24    # "t2":I
    .local v2, "t2":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    .line 3322
    .end local v2    # "t2":I
    .restart local v24    # "t2":I
    move/from16 v2, v20

    .end local v20    # "t3":I
    .local v2, "t3":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    .line 3323
    move/from16 v25, v4

    move v7, v6

    move-object v6, v0

    .end local v2    # "t3":I
    .end local v4    # "t4":I
    .end local v6    # "p":I
    .local v7, "p":I
    .restart local v8    # "p0i":I
    .restart local v20    # "t3":I
    .local v25, "t4":I
    const/4 v0, 0x0

    .end local v14    # "u":I
    .local v0, "u":I
    :goto_7
    if-ge v0, v10, :cond_7

    .line 3325
    add-int v4, v23, v0

    add-int v2, v24, v0

    aget v1, p6, v2

    invoke-virtual {v6, v1, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v1

    aput v1, p6, v4

    .line 3326
    add-int v2, v24, v0

    add-int v1, v20, v0

    aget v1, p6, v1

    invoke-virtual {v6, v1, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v1

    aput v1, p6, v2

    .line 3323
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3348
    :cond_7
    mul-int/lit8 v1, v10, 0x3

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 3350
    .local v1, "tmp2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    const/4 v14, 0x0

    .line 3351
    .local v14, "rt1":I
    add-int v4, v14, v10

    .line 3352
    .local v4, "rt2":I
    add-int v2, v4, v10

    .line 3353
    .local v2, "rt3":I
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v10, :cond_8

    .line 3355
    add-int v3, v2, v0

    const/16 v26, 0x0

    iget-object v12, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v27, v24, v0

    move/from16 v28, v0

    .end local v0    # "u":I
    .local v28, "u":I
    aget v0, p6, v27

    move/from16 v29, v8

    move/from16 v27, v9

    .end local v8    # "p0i":I
    .end local v9    # "ft":I
    .local v27, "ft":I
    .local v29, "p0i":I
    int-to-long v8, v0

    invoke-virtual {v12, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    aput-object v0, v1, v3

    .line 3353
    add-int/lit8 v0, v28, 0x1

    move/from16 v9, v27

    move/from16 v8, v29

    const/4 v12, 0x0

    .end local v28    # "u":I
    .restart local v0    # "u":I
    goto :goto_8

    .line 3357
    .end local v27    # "ft":I
    .end local v29    # "p0i":I
    .restart local v8    # "p0i":I
    .restart local v9    # "ft":I
    :cond_8
    move/from16 v28, v0

    move/from16 v29, v8

    move/from16 v27, v9

    const/16 v26, 0x0

    .end local v0    # "u":I
    .end local v8    # "p0i":I
    .end local v9    # "ft":I
    .restart local v27    # "ft":I
    .restart local v28    # "u":I
    .restart local v29    # "p0i":I
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3360
    invoke-static {v1, v2, v1, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3365
    add-int v2, v4, v11

    .line 3366
    const/4 v0, 0x0

    move v8, v0

    .end local v28    # "u":I
    .local v8, "u":I
    :goto_9
    if-ge v8, v10, :cond_9

    .line 3368
    add-int v0, v2, v8

    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v9, v23, v8

    aget v9, p6, v9

    move v12, v8

    .end local v8    # "u":I
    .local v12, "u":I
    int-to-long v8, v9

    invoke-virtual {v3, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, v1, v0

    .line 3366
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "u":I
    .restart local v8    # "u":I
    goto :goto_9

    .line 3370
    :cond_9
    move v12, v8

    .end local v8    # "u":I
    .restart local v12    # "u":I
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3376
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_div_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3377
    move-object v9, v1

    move v0, v2

    move/from16 v28, v4

    .end local v1    # "tmp2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v2    # "rt3":I
    .end local v4    # "rt2":I
    .local v0, "rt3":I
    .local v9, "tmp2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v28, "rt2":I
    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v1, v9, v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3378
    const/4 v1, 0x0

    move v12, v1

    :goto_a
    if-ge v12, v10, :cond_a

    .line 3380
    add-int v4, v23, v12

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v2, v0, v12

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v6, v2, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v1

    aput v1, p6, v4

    .line 3378
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 3392
    :cond_a
    add-int v4, v23, v10

    .line 3393
    .end local v24    # "t2":I
    .local v4, "t2":I
    add-int v1, v4, v10

    .line 3394
    .end local v20    # "t3":I
    .local v1, "t3":I
    add-int v20, v1, v10

    .line 3395
    .end local v25    # "t4":I
    .local v20, "t4":I
    add-int v22, v20, v10

    .line 3396
    sget-object v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v2, v2, v26

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p6

    move/from16 v24, v0

    move-object v0, v6

    move/from16 v8, v29

    move v6, v2

    move v2, v4

    move v4, v1

    move-object/from16 v1, p6

    .end local v0    # "rt3":I
    .end local v1    # "t3":I
    .end local v29    # "p0i":I
    .local v2, "t2":I
    .local v4, "t3":I
    .local v8, "p0i":I
    .local v24, "rt3":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 3397
    move v6, v7

    move v7, v8

    move v8, v4

    move v4, v2

    .end local v2    # "t2":I
    .local v4, "t2":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    .local v8, "t3":I
    const/4 v1, 0x0

    move v12, v1

    :goto_b
    if-ge v12, v10, :cond_b

    .line 3399
    add-int v1, v20, v12

    add-int v2, p3, v12

    aget-byte v2, p2, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p6, v1

    .line 3400
    add-int v1, v22, v12

    add-int v2, p5, v12

    aget-byte v2, p4, v2

    invoke-virtual {v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v2

    aput v2, p6, v1

    .line 3397
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 3402
    :cond_b
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move/from16 v2, v23

    .end local v23    # "t1":I
    .local v2, "t1":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3403
    .end local v2    # "t1":I
    .restart local v23    # "t1":I
    move-object/from16 v0, p0

    move/from16 v2, v20

    .end local v20    # "t4":I
    .local v2, "t4":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3404
    .end local v2    # "t4":I
    .restart local v20    # "t4":I
    move/from16 v2, v22

    .end local v22    # "t5":I
    .local v2, "t5":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 3405
    move/from16 v25, v2

    move/from16 v22, v4

    .end local v2    # "t5":I
    .end local v4    # "t2":I
    .local v22, "t2":I
    .local v25, "t5":I
    const/4 v1, 0x0

    move v12, v1

    :goto_c
    if-ge v12, v10, :cond_c

    .line 3409
    add-int v4, v23, v12

    aget v1, p6, v4

    invoke-virtual {v0, v1, v13, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    .line 3410
    .local v1, "kw":I
    add-int v2, v15, v12

    add-int v3, v15, v12

    aget v3, p6, v3

    add-int v4, v20, v12

    aget v4, p6, v4

    .line 3411
    invoke-virtual {v0, v1, v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    .line 3410
    invoke-virtual {v0, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v3

    aput v3, p6, v2

    .line 3412
    add-int v2, v18, v12

    add-int v3, v18, v12

    aget v3, p6, v3

    add-int v4, v25, v12

    aget v4, p6, v4

    .line 3413
    invoke-virtual {v0, v1, v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    .line 3412
    invoke-virtual {v0, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v3

    aput v3, p6, v2

    .line 3405
    .end local v1    # "kw":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 3415
    :cond_c
    move-object/from16 v3, p6

    move/from16 v5, p1

    move-object/from16 v1, p6

    move v4, v8

    move v2, v15

    .end local v8    # "t3":I
    .end local v15    # "Fp":I
    .local v2, "Fp":I
    .local v4, "t3":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    .line 3416
    .end local v2    # "Fp":I
    .restart local v15    # "Fp":I
    move-object/from16 v0, p0

    move/from16 v2, v18

    .end local v18    # "Gp":I
    .local v2, "Gp":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    .line 3417
    const/4 v1, 0x0

    .end local v12    # "u":I
    .local v1, "u":I
    :goto_d
    if-ge v1, v10, :cond_d

    .line 3419
    add-int v3, v15, v1

    add-int v5, v15, v1

    aget v5, p6, v5

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v5

    aput v5, p6, v3

    .line 3420
    add-int v18, v2, v1

    add-int v3, v2, v1

    aget v3, p6, v3

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v3

    aput v3, p6, v18

    .line 3417
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3423
    :cond_d
    return v21
.end method

.method solve_NTRU_binary_depth1(I[BI[BI[II)I
    .locals 40
    .param p1, "logn_top"    # I
    .param p2, "srcf"    # [B
    .param p3, "f"    # I
    .param p4, "srcg"    # [B
    .param p5, "g"    # I
    .param p6, "srctmp"    # [I
    .param p7, "tmp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "logn_top",
            "srcf",
            "f",
            "srcg",
            "g",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 2770
    move-object/from16 v0, p0

    move/from16 v10, p7

    const/4 v11, 0x1

    .line 2771
    .local v11, "depth":I
    const/4 v12, 0x1

    shl-int v13, v12, p1

    .line 2772
    .local v13, "n_top":I
    sub-int v9, p1, v11

    .line 2773
    .local v9, "logn":I
    shl-int v14, v12, v9

    .line 2774
    .local v14, "n":I
    shr-int/lit8 v15, v14, 0x1

    .line 2801
    .local v15, "hn":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v8, v1, v11

    .line 2802
    .local v8, "slen":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    add-int/lit8 v2, v11, 0x1

    aget v3, v1, v2

    .line 2803
    .local v3, "dlen":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_LARGE:[I

    aget v1, v1, v11

    .line 2809
    .local v1, "llen":I
    move/from16 v26, p7

    .line 2810
    .local v26, "Fd":I
    mul-int v2, v3, v15

    add-int v27, v26, v2

    .line 2811
    .local v27, "Gd":I
    mul-int v2, v3, v15

    add-int v2, v27, v2

    .line 2812
    .local v2, "Ft":I
    mul-int v4, v1, v14

    add-int/2addr v4, v2

    .line 2818
    .local v4, "Gt":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 2824
    sget-object v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v6, v6, v5

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 2825
    .local v6, "p":I
    move v7, v5

    .end local v5    # "u":I
    .local v7, "u":I
    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v5

    .line 2826
    .local v5, "p0i":I
    const/16 v28, 0x1

    invoke-virtual {v0, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v12

    .line 2827
    .local v12, "R2":I
    move/from16 v16, v7

    .end local v7    # "u":I
    .local v16, "u":I
    invoke-virtual {v0, v3, v6, v5, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v7

    .line 2828
    .local v7, "Rx":I
    const/16 v17, 0x0

    .local v17, "v":I
    move/from16 v18, v26

    .local v18, "xs":I
    move/from16 v19, v27

    .local v19, "ys":I
    add-int v20, v2, v16

    .local v20, "xd":I
    add-int v21, v4, v16

    move/from16 v22, v8

    move/from16 v8, v17

    .line 2829
    .end local v17    # "v":I
    .local v8, "v":I
    .local v21, "yd":I
    .local v22, "slen":I
    :goto_1
    if-ge v8, v15, :cond_0

    .line 2832
    move/from16 v29, v11

    move/from16 v17, v16

    move v11, v4

    move v4, v6

    move/from16 v16, v8

    move v6, v12

    move v12, v1

    move v8, v2

    move/from16 v2, v18

    move-object/from16 v1, p6

    .end local v1    # "llen":I
    .end local v18    # "xs":I
    .local v2, "xs":I
    .local v4, "p":I
    .local v6, "R2":I
    .local v8, "Ft":I
    .local v11, "Gt":I
    .local v12, "llen":I
    .local v16, "v":I
    .local v17, "u":I
    .local v29, "depth":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v18

    move/from16 v23, v2

    .end local v2    # "xs":I
    .local v23, "xs":I
    aput v18, p6, v20

    .line 2833
    move-object/from16 v0, p0

    move/from16 v2, v19

    .end local v19    # "ys":I
    .local v2, "ys":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v18

    move/from16 v30, v3

    .end local v3    # "dlen":I
    .local v30, "dlen":I
    aput v18, v1, v21

    .line 2830
    add-int/lit8 v3, v16, 0x1

    .end local v16    # "v":I
    .local v3, "v":I
    add-int v18, v23, v30

    .end local v23    # "xs":I
    .restart local v18    # "xs":I
    add-int v19, v2, v30

    .end local v2    # "ys":I
    .restart local v19    # "ys":I
    add-int v20, v20, v12

    add-int v21, v21, v12

    move v2, v8

    move v1, v12

    move/from16 v16, v17

    move v8, v3

    move v12, v6

    move/from16 v3, v30

    move v6, v4

    move v4, v11

    move/from16 v11, v29

    goto :goto_1

    .line 2829
    .end local v17    # "u":I
    .end local v29    # "depth":I
    .end local v30    # "dlen":I
    .restart local v1    # "llen":I
    .local v2, "Ft":I
    .local v3, "dlen":I
    .local v4, "Gt":I
    .local v6, "p":I
    .local v8, "v":I
    .local v11, "depth":I
    .local v12, "R2":I
    .local v16, "u":I
    :cond_0
    move/from16 v30, v3

    move/from16 v29, v11

    move/from16 v17, v16

    move/from16 v23, v18

    move v11, v4

    move v4, v6

    move/from16 v16, v8

    move v6, v12

    move v12, v1

    move v8, v2

    move/from16 v2, v19

    move-object/from16 v1, p6

    .line 2818
    .end local v1    # "llen":I
    .end local v2    # "Ft":I
    .end local v3    # "dlen":I
    .end local v4    # "Gt":I
    .end local v5    # "p0i":I
    .end local v6    # "p":I
    .end local v7    # "Rx":I
    .end local v16    # "u":I
    .end local v18    # "xs":I
    .end local v19    # "ys":I
    .end local v20    # "xd":I
    .end local v21    # "yd":I
    .local v8, "Ft":I
    .local v11, "Gt":I
    .local v12, "llen":I
    .restart local v17    # "u":I
    .restart local v29    # "depth":I
    .restart local v30    # "dlen":I
    add-int/lit8 v5, v17, 0x1

    move v2, v8

    move v4, v11

    move v1, v12

    move/from16 v8, v22

    move/from16 v11, v29

    const/4 v12, 0x1

    .end local v17    # "u":I
    .local v5, "u":I
    goto/16 :goto_0

    .line 2841
    .end local v12    # "llen":I
    .end local v22    # "slen":I
    .end local v29    # "depth":I
    .end local v30    # "dlen":I
    .restart local v1    # "llen":I
    .restart local v2    # "Ft":I
    .restart local v3    # "dlen":I
    .restart local v4    # "Gt":I
    .local v8, "slen":I
    .local v11, "depth":I
    :cond_1
    move v12, v1

    move/from16 v30, v3

    move/from16 v17, v5

    move/from16 v22, v8

    move/from16 v29, v11

    const/16 v28, 0x1

    move-object/from16 v1, p6

    move v8, v2

    move v11, v4

    .end local v1    # "llen":I
    .end local v2    # "Ft":I
    .end local v3    # "dlen":I
    .end local v4    # "Gt":I
    .end local v5    # "u":I
    .local v8, "Ft":I
    .local v11, "Gt":I
    .restart local v12    # "llen":I
    .restart local v17    # "u":I
    .restart local v22    # "slen":I
    .restart local v29    # "depth":I
    .restart local v30    # "dlen":I
    mul-int v2, v12, v14

    invoke-static {v1, v8, v1, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2842
    move/from16 v16, p7

    .line 2844
    .end local v8    # "Ft":I
    .local v16, "Ft":I
    mul-int v2, v12, v14

    add-int v2, v16, v2

    mul-int v3, v12, v14

    invoke-static {v1, v11, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2845
    mul-int v2, v12, v14

    add-int v11, v16, v2

    .line 2846
    mul-int v2, v12, v14

    add-int v18, v11, v2

    .line 2847
    .local v18, "ft":I
    mul-int v8, v22, v14

    add-int v19, v18, v8

    .line 2849
    .local v19, "gt":I
    mul-int v8, v22, v14

    add-int v20, v19, v8

    .line 2854
    .local v20, "t1":I
    const/4 v2, 0x0

    .end local v17    # "u":I
    .local v2, "u":I
    :goto_2
    const/4 v3, 0x0

    if-ge v2, v12, :cond_9

    .line 2864
    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v4, v4, v2

    iget v6, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 2865
    .restart local v6    # "p":I
    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v7

    .line 2866
    .local v7, "p0i":I
    invoke-virtual {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v17

    .line 2876
    .local v17, "R2":I
    move/from16 v4, v20

    .line 2877
    .local v4, "gm":I
    move v5, v2

    move v2, v4

    .end local v4    # "gm":I
    .local v2, "gm":I
    .restart local v5    # "u":I
    add-int v4, v2, v13

    .line 2878
    .local v4, "igm":I
    add-int v21, v4, v14

    .line 2879
    .local v21, "fx":I
    add-int v23, v21, v13

    .line 2880
    .local v23, "gx":I
    sget-object v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v8, v8, v5

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    const/16 v24, 0x0

    move-object/from16 v3, p6

    move v10, v7

    move v7, v6

    move v6, v8

    move v8, v10

    move/from16 v25, v11

    move/from16 v11, v22

    const/4 v10, 0x0

    move/from16 v22, v12

    move v12, v5

    move/from16 v5, p1

    .end local v5    # "u":I
    .end local v6    # "p":I
    .local v7, "p":I
    .local v8, "p0i":I
    .local v11, "slen":I
    .local v12, "u":I
    .local v22, "llen":I
    .local v25, "Gt":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 2885
    move v6, v7

    move v7, v8

    move v8, v4

    move v4, v2

    .end local v2    # "gm":I
    .local v4, "gm":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    .local v8, "igm":I
    const/4 v1, 0x0

    .local v1, "v":I
    :goto_3
    if-ge v1, v13, :cond_2

    .line 2887
    add-int v2, v21, v1

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p6, v2

    .line 2888
    add-int v2, v23, v1

    add-int v3, p5, v1

    aget-byte v3, p4, v3

    invoke-virtual {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v3

    aput v3, p6, v2

    .line 2885
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2894
    :cond_2
    move-object/from16 v3, p6

    move/from16 v5, p1

    move/from16 v2, v21

    move/from16 v21, v1

    move-object/from16 v1, p6

    .end local v1    # "v":I
    .local v2, "fx":I
    .local v21, "v":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2895
    move/from16 v24, v2

    .end local v2    # "fx":I
    .local v24, "fx":I
    move-object/from16 v0, p0

    move/from16 v2, v23

    .end local v23    # "gx":I
    .local v2, "gx":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2896
    move/from16 v31, v2

    move/from16 v23, v4

    .end local v2    # "gx":I
    .end local v4    # "gm":I
    .local v23, "gm":I
    .local v31, "gx":I
    move/from16 v0, p1

    move v3, v0

    .local v3, "e":I
    :goto_4
    if-le v3, v9, :cond_3

    .line 2898
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move v4, v6

    move v5, v7

    move/from16 v6, v17

    move/from16 v2, v24

    .end local v7    # "p0i":I
    .end local v17    # "R2":I
    .end local v24    # "fx":I
    .local v2, "fx":I
    .local v4, "p":I
    .local v5, "p0i":I
    .local v6, "R2":I
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_poly_rec_res([IIIIII)V

    .line 2899
    move v7, v2

    move v0, v6

    move v6, v4

    .end local v2    # "fx":I
    .end local v4    # "p":I
    .local v0, "R2":I
    .local v6, "p":I
    .local v7, "fx":I
    move/from16 v2, v31

    move v6, v0

    move-object/from16 v0, p0

    .end local v0    # "R2":I
    .end local v31    # "gx":I
    .local v2, "gx":I
    .restart local v4    # "p":I
    .local v6, "R2":I
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_poly_rec_res([IIIIII)V

    .line 2896
    move/from16 v17, v3

    move v0, v6

    move v6, v4

    .end local v3    # "e":I
    .end local v4    # "p":I
    .restart local v0    # "R2":I
    .local v6, "p":I
    .local v17, "e":I
    add-int/lit8 v3, v17, -0x1

    move/from16 v17, v0

    move/from16 v24, v7

    move v7, v5

    .end local v17    # "e":I
    .restart local v3    # "e":I
    goto :goto_4

    .line 2906
    .end local v0    # "R2":I
    .end local v2    # "gx":I
    .end local v5    # "p0i":I
    .local v7, "p0i":I
    .local v17, "R2":I
    .restart local v24    # "fx":I
    .restart local v31    # "gx":I
    :cond_3
    move-object/from16 v1, p6

    move v5, v7

    move/from16 v0, v17

    move/from16 v7, v24

    move/from16 v2, v31

    move/from16 v17, v3

    .end local v3    # "e":I
    .end local v24    # "fx":I
    .end local v31    # "gx":I
    .restart local v0    # "R2":I
    .restart local v2    # "gx":I
    .restart local v5    # "p0i":I
    .local v7, "fx":I
    .local v17, "e":I
    if-lez v29, :cond_4

    .line 2909
    add-int v4, v23, v14

    invoke-static {v1, v8, v1, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2910
    add-int v4, v23, v14

    .line 2912
    .end local v8    # "igm":I
    .local v4, "igm":I
    add-int v3, v4, v14

    invoke-static {v1, v7, v1, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2913
    add-int v3, v4, v14

    .line 2915
    .end local v7    # "fx":I
    .local v3, "fx":I
    add-int v7, v3, v14

    invoke-static {v1, v2, v1, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2916
    add-int v2, v3, v14

    move/from16 v24, v3

    move v8, v4

    move/from16 v31, v2

    goto :goto_5

    .line 2906
    .end local v3    # "fx":I
    .end local v4    # "igm":I
    .restart local v7    # "fx":I
    .restart local v8    # "igm":I
    :cond_4
    move/from16 v24, v7

    move/from16 v31, v2

    .line 2924
    .end local v2    # "gx":I
    .end local v7    # "fx":I
    .restart local v24    # "fx":I
    .restart local v31    # "gx":I
    :goto_5
    add-int v2, v31, v14

    .line 2925
    .local v2, "Fp":I
    add-int v32, v2, v15

    .line 2926
    .local v32, "Gp":I
    const/4 v3, 0x0

    .end local v21    # "v":I
    .local v3, "v":I
    add-int v4, v16, v12

    .local v4, "x":I
    add-int v7, v25, v12

    move/from16 v21, v4

    move/from16 v33, v7

    .line 2927
    .end local v4    # "x":I
    .local v21, "x":I
    .local v33, "y":I
    :goto_6
    if-ge v3, v15, :cond_5

    .line 2929
    add-int v4, v2, v3

    aget v7, v1, v21

    aput v7, v1, v4

    .line 2930
    add-int v4, v32, v3

    aget v7, v1, v33

    aput v7, v1, v4

    .line 2927
    add-int/lit8 v3, v3, 0x1

    add-int v21, v21, v22

    add-int v33, v33, v22

    goto :goto_6

    .line 2932
    :cond_5
    move v7, v5

    .end local v5    # "p0i":I
    .local v7, "p0i":I
    add-int/lit8 v5, v9, -0x1

    move v4, v3

    .end local v3    # "v":I
    .local v4, "v":I
    move-object/from16 v3, p6

    move/from16 v10, v23

    move/from16 v23, v4

    move v4, v10

    const/16 v34, 0x0

    move v10, v0

    move-object/from16 v0, p0

    .end local v0    # "R2":I
    .local v4, "gm":I
    .local v10, "R2":I
    .local v23, "v":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2933
    move/from16 v35, v2

    .end local v2    # "Fp":I
    .local v35, "Fp":I
    add-int/lit8 v5, v9, -0x1

    move-object/from16 v1, p6

    move/from16 v2, v32

    .end local v32    # "Gp":I
    .local v2, "Gp":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2972
    move/from16 v36, v2

    move/from16 v32, v4

    .end local v2    # "Gp":I
    .end local v4    # "gm":I
    .local v32, "gm":I
    .local v36, "Gp":I
    const/4 v1, 0x0

    .end local v23    # "v":I
    .restart local v1    # "v":I
    add-int v2, v16, v12

    .end local v21    # "x":I
    .local v2, "x":I
    add-int v3, v25, v12

    move/from16 v21, v2

    move/from16 v23, v3

    .line 2973
    .end local v2    # "x":I
    .end local v33    # "y":I
    .restart local v21    # "x":I
    .local v23, "y":I
    :goto_7
    if-ge v1, v15, :cond_6

    .line 2978
    shl-int/lit8 v2, v1, 0x1

    add-int v2, v24, v2

    add-int/lit8 v2, v2, 0x0

    aget v2, p6, v2

    .line 2979
    .local v2, "ftA":I
    shl-int/lit8 v3, v1, 0x1

    add-int v3, v24, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, p6, v3

    .line 2980
    .local v3, "ftB":I
    shl-int/lit8 v4, v1, 0x1

    add-int v4, v31, v4

    add-int/lit8 v4, v4, 0x0

    aget v4, p6, v4

    .line 2981
    .local v4, "gtA":I
    shl-int/lit8 v5, v1, 0x1

    add-int v5, v31, v5

    add-int/lit8 v5, v5, 0x1

    aget v5, p6, v5

    .line 2982
    .local v5, "gtB":I
    add-int v33, v35, v1

    move/from16 v37, v1

    .end local v1    # "v":I
    .local v37, "v":I
    aget v1, p6, v33

    invoke-virtual {v0, v1, v10, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    .line 2983
    .local v1, "mFp":I
    add-int v33, v36, v37

    move/from16 v38, v8

    .end local v8    # "igm":I
    .local v38, "igm":I
    aget v8, p6, v33

    invoke-virtual {v0, v8, v10, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v8

    .line 2984
    .local v8, "mGp":I
    add-int/lit8 v33, v21, 0x0

    invoke-virtual {v0, v5, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v39

    aput v39, p6, v33

    .line 2985
    add-int v33, v21, v22

    invoke-virtual {v0, v4, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v39

    aput v39, p6, v33

    .line 2986
    add-int/lit8 v33, v23, 0x0

    invoke-virtual {v0, v3, v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v39

    aput v39, p6, v33

    .line 2987
    add-int v33, v23, v22

    invoke-virtual {v0, v2, v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v39

    aput v39, p6, v33

    .line 2973
    .end local v1    # "mFp":I
    .end local v2    # "ftA":I
    .end local v3    # "ftB":I
    .end local v4    # "gtA":I
    .end local v5    # "gtB":I
    .end local v8    # "mGp":I
    add-int/lit8 v1, v37, 0x1

    .end local v37    # "v":I
    .local v1, "v":I
    shl-int/lit8 v2, v22, 0x1

    add-int v21, v21, v2

    shl-int/lit8 v2, v22, 0x1

    add-int v23, v23, v2

    move/from16 v8, v38

    goto :goto_7

    .line 2989
    .end local v38    # "igm":I
    .local v8, "igm":I
    :cond_6
    move/from16 v37, v1

    move/from16 v38, v8

    .end local v1    # "v":I
    .end local v8    # "igm":I
    .restart local v37    # "v":I
    .restart local v38    # "igm":I
    add-int v2, v16, v12

    move-object/from16 v4, p6

    move-object/from16 v1, p6

    move v8, v7

    move/from16 v3, v22

    move/from16 v5, v38

    move v7, v6

    move v6, v9

    .end local v9    # "logn":I
    .end local v22    # "llen":I
    .end local v38    # "igm":I
    .local v3, "llen":I
    .local v5, "igm":I
    .local v6, "logn":I
    .local v7, "p":I
    .local v8, "p0i":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    .line 2990
    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    .end local v8    # "p0i":I
    .local v4, "igm":I
    .local v5, "logn":I
    .local v6, "p":I
    .local v7, "p0i":I
    add-int v2, v25, v12

    move/from16 v38, v4

    .end local v4    # "igm":I
    .restart local v38    # "igm":I
    move-object/from16 v4, p6

    move-object/from16 v0, p0

    move v7, v6

    move v6, v5

    move/from16 v5, v38

    .end local v38    # "igm":I
    .local v5, "igm":I
    .local v6, "logn":I
    .local v7, "p":I
    .restart local v8    # "p0i":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    .line 2995
    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    .end local v3    # "llen":I
    .end local v8    # "p0i":I
    .restart local v4    # "igm":I
    .local v5, "logn":I
    .local v6, "p":I
    .local v7, "p0i":I
    .restart local v22    # "llen":I
    if-ge v12, v11, :cond_7

    .line 2997
    move-object/from16 v3, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, v24

    .end local v24    # "fx":I
    .local v2, "fx":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    .line 2998
    move v8, v2

    .end local v2    # "fx":I
    .local v8, "fx":I
    move/from16 v2, v31

    .end local v31    # "gx":I
    .local v2, "gx":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    .line 2999
    move/from16 v24, v5

    .end local v5    # "logn":I
    .local v24, "logn":I
    const/4 v0, 0x0

    .end local v37    # "v":I
    .local v0, "v":I
    add-int v1, v18, v12

    .end local v21    # "x":I
    .local v1, "x":I
    add-int v3, v19, v12

    move/from16 v21, v1

    move/from16 v23, v3

    .line 3000
    .end local v1    # "x":I
    .restart local v21    # "x":I
    :goto_8
    if-ge v0, v14, :cond_8

    .line 3002
    add-int v1, v8, v0

    aget v1, p6, v1

    aput v1, p6, v21

    .line 3003
    add-int v31, v2, v0

    aget v1, p6, v31

    aput v1, p6, v23

    .line 3000
    add-int/lit8 v0, v0, 0x1

    add-int v21, v21, v11

    add-int v23, v23, v11

    goto :goto_8

    .line 2995
    .end local v0    # "v":I
    .end local v2    # "gx":I
    .end local v8    # "fx":I
    .restart local v5    # "logn":I
    .local v24, "fx":I
    .restart local v31    # "gx":I
    .restart local v37    # "v":I
    :cond_7
    move/from16 v8, v24

    move/from16 v2, v31

    move/from16 v24, v5

    .line 2854
    .end local v4    # "igm":I
    .end local v5    # "logn":I
    .end local v6    # "p":I
    .end local v7    # "p0i":I
    .end local v10    # "R2":I
    .end local v17    # "e":I
    .end local v31    # "gx":I
    .end local v32    # "gm":I
    .end local v35    # "Fp":I
    .end local v36    # "Gp":I
    .end local v37    # "v":I
    .local v24, "logn":I
    :cond_8
    add-int/lit8 v2, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v10, p7

    move/from16 v12, v22

    move/from16 v9, v24

    move/from16 v22, v11

    move/from16 v11, v25

    .end local v12    # "u":I
    .local v2, "u":I
    goto/16 :goto_2

    .line 3013
    .end local v21    # "x":I
    .end local v23    # "y":I
    .end local v24    # "logn":I
    .end local v25    # "Gt":I
    .restart local v9    # "logn":I
    .local v11, "Gt":I
    .local v12, "llen":I
    .local v22, "slen":I
    :cond_9
    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v11, v22

    const/16 v34, 0x0

    move/from16 v22, v12

    move v12, v2

    .end local v2    # "u":I
    .end local v9    # "logn":I
    .local v11, "slen":I
    .local v12, "u":I
    .local v22, "llen":I
    .restart local v24    # "logn":I
    .restart local v25    # "Gt":I
    shl-int/lit8 v5, v14, 0x1

    sget-object v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v7, 0x1

    move/from16 v4, v22

    move-object/from16 v8, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, v16

    move/from16 v9, v20

    move/from16 v3, v22

    .end local v16    # "Ft":I
    .end local v20    # "t1":I
    .end local v22    # "llen":I
    .local v2, "Ft":I
    .restart local v3    # "llen":I
    .local v9, "t1":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    .line 3014
    move v10, v2

    move v4, v9

    .end local v2    # "Ft":I
    .end local v3    # "llen":I
    .end local v9    # "t1":I
    .local v4, "t1":I
    .local v10, "Ft":I
    .restart local v22    # "llen":I
    shl-int/lit8 v5, v14, 0x1

    sget-object v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    .end local v4    # "t1":I
    .restart local v9    # "t1":I
    move v4, v11

    move v3, v11

    move/from16 v2, v18

    .end local v11    # "slen":I
    .end local v18    # "ft":I
    .local v2, "ft":I
    .local v3, "slen":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    .line 3028
    move v8, v2

    .end local v2    # "ft":I
    .end local v3    # "slen":I
    .local v8, "ft":I
    .restart local v11    # "slen":I
    new-array v1, v14, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 3029
    .local v1, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-array v0, v14, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 3030
    .local v0, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    const/4 v2, 0x0

    move/from16 v6, v22

    move-object/from16 v3, p6

    move v4, v10

    move/from16 v5, v22

    move/from16 v7, v24

    move-object v10, v0

    move-object/from16 v0, p0

    .end local v0    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v22    # "llen":I
    .end local v24    # "logn":I
    .local v4, "Ft":I
    .local v5, "llen":I
    .local v7, "logn":I
    .local v10, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    .line 3031
    move/from16 v31, v4

    move v3, v5

    move v5, v7

    .end local v4    # "Ft":I
    .end local v7    # "logn":I
    .local v3, "llen":I
    .local v5, "logn":I
    .local v31, "Ft":I
    move v6, v3

    move-object v0, v10

    move-object v10, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move/from16 v4, v25

    move v5, v3

    move-object/from16 v3, p6

    .end local v3    # "llen":I
    .end local v25    # "Gt":I
    .local v1, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v4, "Gt":I
    .local v5, "llen":I
    .restart local v7    # "logn":I
    .local v10, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    .line 3038
    move-object v0, v1

    move-object v1, v3

    move/from16 v33, v4

    move/from16 v32, v5

    move v5, v7

    .end local v1    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "Gt":I
    .end local v7    # "logn":I
    .restart local v0    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v5, "logn":I
    .local v32, "llen":I
    .local v33, "Gt":I
    mul-int/lit8 v2, v11, 0x2

    mul-int v2, v2, v14

    move/from16 v3, p7

    invoke-static {v1, v8, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3039
    move/from16 v4, p7

    .line 3040
    .end local v8    # "ft":I
    .local v4, "ft":I
    mul-int v8, v11, v14

    add-int/2addr v8, v4

    .line 3045
    .end local v19    # "gt":I
    .local v8, "gt":I
    new-array v1, v14, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 3046
    .local v1, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-array v2, v14, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 3051
    .local v2, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object/from16 v23, v2

    .end local v2    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v23, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    const/4 v2, 0x0

    move v6, v11

    move-object/from16 v3, p6

    move v5, v11

    move-object v11, v0

    move-object/from16 v0, p0

    .end local v0    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v5, "slen":I
    .restart local v7    # "logn":I
    .local v11, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    .line 3052
    move/from16 v35, v4

    move v3, v5

    move v5, v7

    .end local v4    # "ft":I
    .end local v7    # "logn":I
    .local v3, "slen":I
    .local v5, "logn":I
    .local v35, "ft":I
    move v6, v3

    move v4, v8

    move-object v8, v1

    move v5, v3

    move-object/from16 v1, v23

    move-object/from16 v3, p6

    .end local v3    # "slen":I
    .end local v23    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v4, "gt":I
    .local v5, "slen":I
    .restart local v7    # "logn":I
    .local v8, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    .line 3071
    move/from16 v37, v4

    move/from16 v36, v5

    move v5, v7

    .end local v4    # "gt":I
    .end local v7    # "logn":I
    .local v5, "logn":I
    .local v36, "slen":I
    .local v37, "gt":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3072
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v11, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3073
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v8, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3074
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3082
    new-array v3, v14, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 3083
    .local v3, "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    shr-int/lit8 v2, v14, 0x1

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 3084
    .local v2, "rt6":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move v4, v14

    .end local v14    # "n":I
    .local v4, "n":I
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v25, v5

    move-object/from16 v21, v8

    move-object/from16 v17, v10

    move-object/from16 v19, v11

    move v10, v15

    move-object v15, v3

    move v8, v4

    .end local v1    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "n":I
    .end local v5    # "logn":I
    .end local v11    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v8, "n":I
    .local v10, "hn":I
    .local v15, "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v17, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v21, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v23    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v25, "logn":I
    invoke-virtual/range {v14 .. v25}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3085
    move-object/from16 v1, v21

    .end local v19    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v21    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v25    # "logn":I
    .local v1, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v5    # "logn":I
    .restart local v11    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v3, v0

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v2

    .end local v2    # "rt6":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt6":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v21    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    const/4 v2, 0x0

    move-object v14, v3

    move-object/from16 v3, v21

    move-object/from16 v5, v23

    .end local v21    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v23    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v5, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v7    # "logn":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3091
    move v5, v7

    .end local v3    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "logn":I
    .local v5, "logn":I
    .restart local v21    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v23    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v1

    move-object v1, v15

    .end local v15    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "rt6":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3100
    move-object v6, v3

    .end local v1    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "rt6":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "rt6":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v15    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3101
    const/4 v0, 0x0

    move v7, v0

    .end local v12    # "u":I
    .local v7, "u":I
    :goto_9
    if-ge v7, v8, :cond_c

    .line 3105
    aget-object v0, v15, v7

    .line 3106
    .local v0, "z":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v1, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mtwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_a

    .line 3110
    :cond_a
    iget-object v1, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    aput-object v1, v15, v7

    .line 3101
    .end local v0    # "z":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 3108
    .restart local v0    # "z":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    :cond_b
    :goto_a
    const/4 v3, 0x0

    return v3

    .line 3112
    .end local v0    # "z":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    :cond_c
    const/4 v3, 0x0

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v15, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3117
    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v15

    move-object/from16 v1, v21

    .end local v15    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v21    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3118
    .end local v1    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v15    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v21    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v1, v23

    .end local v15    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v23    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v3    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3119
    .end local v1    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v15    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v23    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v1, v17

    move-object/from16 v3, v21

    .end local v17    # "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v21    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3120
    move-object v12, v1

    .end local v1    # "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v12, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v21    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v1, v11

    move-object/from16 v3, v23

    .end local v11    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v23    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3121
    .end local v1    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v11    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v23    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3122
    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v11, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 3127
    move/from16 v0, p7

    .line 3128
    .end local v31    # "Ft":I
    .local v0, "Ft":I
    add-int v1, v0, v8

    .line 3133
    .end local v33    # "Gt":I
    .local v1, "Gt":I
    const/4 v2, 0x0

    .end local v7    # "u":I
    .local v2, "u":I
    :goto_b
    if-ge v2, v8, :cond_d

    .line 3135
    add-int v3, v0, v2

    iget-object v4, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v7, v12, v2

    move/from16 v16, v0

    move/from16 v17, v1

    .end local v0    # "Ft":I
    .end local v1    # "Gt":I
    .restart local v16    # "Ft":I
    .local v17, "Gt":I
    invoke-virtual {v4, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v0

    long-to-int v1, v0

    aput v1, p6, v3

    .line 3136
    add-int v1, v17, v2

    iget-object v0, v14, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v3, v11, v2

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v3

    long-to-int v0, v3

    aput v0, p6, v1

    .line 3133
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto :goto_b

    .line 3139
    .end local v16    # "Ft":I
    .end local v17    # "Gt":I
    .restart local v0    # "Ft":I
    .restart local v1    # "Gt":I
    :cond_d
    return v28
.end method

.method solve_NTRU_deepest(I[BI[BI[II)I
    .locals 16
    .param p1, "logn_top"    # I
    .param p2, "srcf"    # [B
    .param p3, "f"    # I
    .param p4, "srcg"    # [B
    .param p5, "g"    # I
    .param p6, "srctmp"    # [I
    .param p7, "tmp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "logn_top",
            "srcf",
            "f",
            "srcg",
            "g",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 2127
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v10, v1, p1

    .line 2128
    .local v10, "len":I
    sget-object v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    .line 2130
    .local v11, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    move/from16 v12, p7

    .line 2131
    .local v12, "Fp":I
    add-int v13, v12, v10

    .line 2132
    .local v13, "Gp":I
    add-int v2, v13, v10

    .line 2133
    .local v2, "fp":I
    add-int v14, v2, v10

    .line 2134
    .local v14, "gp":I
    add-int v15, v14, v10

    .line 2136
    .local v15, "t1":I
    const/4 v9, 0x0

    move/from16 v8, p1

    move/from16 v7, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->make_fg([II[BI[BIIII)V

    .line 2143
    const/4 v5, 0x2

    const/4 v7, 0x0

    move v4, v10

    move-object/from16 v8, p6

    move v3, v10

    move-object v6, v11

    move v9, v15

    .end local v10    # "len":I
    .end local v11    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .end local v15    # "t1":I
    .local v3, "len":I
    .local v6, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v9, "t1":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    .line 2153
    move-object v15, v6

    move v11, v9

    move v9, v3

    .end local v3    # "len":I
    .end local v6    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v9, "len":I
    .local v11, "t1":I
    .local v15, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    move-object/from16 v3, p6

    move-object/from16 v5, p6

    move-object/from16 v7, p6

    move-object/from16 v10, p6

    move v6, v2

    move v4, v12

    move v2, v13

    move v8, v14

    .end local v12    # "Fp":I
    .end local v13    # "Gp":I
    .end local v14    # "gp":I
    .local v2, "Gp":I
    .local v4, "Fp":I
    .local v6, "fp":I
    .local v8, "gp":I
    invoke-virtual/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_bezout([II[II[II[III[II)I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 2155
    return v5

    .line 2165
    :cond_0
    const/16 v3, 0x3001

    .line 2166
    .local v3, "q":I
    invoke-virtual {v0, v1, v4, v9, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mul_small([IIII)I

    move-result v7

    if-nez v7, :cond_2

    .line 2167
    invoke-virtual {v0, v1, v2, v9, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mul_small([IIII)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 2172
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 2169
    :cond_2
    :goto_0
    return v5
.end method

.method solve_NTRU_intermediate(I[BI[BII[II)I
    .locals 46
    .param p1, "logn_top"    # I
    .param p2, "srcf"    # [B
    .param p3, "f"    # I
    .param p4, "srcg"    # [B
    .param p5, "g"    # I
    .param p6, "depth"    # I
    .param p7, "srctmp"    # [I
    .param p8, "tmp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "logn_top",
            "srcf",
            "f",
            "srcg",
            "g",
            "depth",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 2201
    move-object/from16 v0, p0

    sub-int v13, p1, p6

    .line 2202
    .local v13, "logn":I
    const/16 v16, 0x1

    shl-int v10, v16, v13

    .line 2203
    .local v10, "n":I
    shr-int/lit8 v11, v10, 0x1

    .line 2217
    .local v11, "hn":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v12, v1, p6

    .line 2218
    .local v12, "slen":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    add-int/lit8 v2, p6, 0x1

    aget v14, v1, v2

    .line 2219
    .local v14, "dlen":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_LARGE:[I

    aget v15, v1, p6

    .line 2220
    .local v15, "llen":I
    sget-object v17, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    .line 2225
    .local v17, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    move/from16 v1, p8

    .line 2226
    .local v1, "Fd":I
    mul-int v2, v14, v11

    add-int v18, v1, v2

    .line 2232
    .local v18, "Gd":I
    mul-int v2, v14, v11

    add-int v2, v18, v2

    .line 2233
    .local v2, "ft":I
    const/4 v9, 0x1

    move/from16 v7, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move/from16 v19, v10

    move v10, v1

    move-object/from16 v1, p7

    .end local v1    # "Fd":I
    .local v10, "Fd":I
    .local v19, "n":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->make_fg([II[BI[BIIII)V

    .line 2239
    move/from16 v20, p8

    .line 2240
    .local v20, "Ft":I
    mul-int v3, v19, v15

    add-int v21, v20, v3

    .line 2241
    .local v21, "Gt":I
    mul-int v3, v19, v15

    add-int v6, v21, v3

    .line 2243
    .local v6, "t1":I
    mul-int/lit8 v3, v19, 0x2

    mul-int v3, v3, v12

    invoke-static {v1, v2, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2244
    move v8, v6

    .line 2245
    .end local v2    # "ft":I
    .local v8, "ft":I
    mul-int v2, v12, v19

    add-int v22, v8, v2

    .line 2246
    .local v22, "gt":I
    mul-int v2, v12, v19

    add-int v9, v22, v2

    .line 2252
    .end local v6    # "t1":I
    .local v9, "t1":I
    mul-int/lit8 v2, v11, 0x2

    mul-int v2, v2, v14

    invoke-static {v1, v10, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2253
    move/from16 v23, v9

    .line 2254
    .end local v10    # "Fd":I
    .local v23, "Fd":I
    mul-int v2, v11, v14

    add-int v18, v23, v2

    .line 2260
    const/4 v2, 0x0

    move v10, v2

    .local v10, "u":I
    :goto_0
    if-ge v10, v15, :cond_1

    .line 2266
    aget-object v2, v17, v10

    iget v4, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 2267
    .local v4, "p":I
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v5

    .line 2268
    .local v5, "p0i":I
    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v6

    .line 2269
    .local v6, "R2":I
    invoke-virtual {v0, v14, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v7

    .line 2270
    .local v7, "Rx":I
    const/4 v2, 0x0

    .local v2, "v":I
    move/from16 v3, v23

    .local v3, "xs":I
    move/from16 v24, v18

    .local v24, "ys":I
    add-int v25, v20, v10

    .local v25, "xd":I
    add-int v26, v21, v10

    .line 2271
    .local v26, "yd":I
    :goto_1
    if-ge v2, v11, :cond_0

    .line 2274
    move/from16 v45, v14

    move v14, v2

    move v2, v3

    move/from16 v3, v45

    .local v2, "xs":I
    .local v3, "dlen":I
    .local v14, "v":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v27

    move/from16 v28, v2

    .end local v2    # "xs":I
    .local v28, "xs":I
    aput v27, p7, v25

    .line 2275
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, v24

    .end local v24    # "ys":I
    .local v2, "ys":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v24

    move/from16 v27, v3

    .end local v3    # "dlen":I
    .local v27, "dlen":I
    aput v24, p7, v26

    .line 2272
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "v":I
    .local v1, "v":I
    add-int v3, v28, v27

    .end local v28    # "xs":I
    .local v3, "xs":I
    add-int v24, v2, v27

    .end local v2    # "ys":I
    .restart local v24    # "ys":I
    add-int v25, v25, v15

    add-int v26, v26, v15

    move v2, v1

    move/from16 v14, v27

    move-object/from16 v1, p7

    goto :goto_1

    .line 2271
    .end local v1    # "v":I
    .end local v27    # "dlen":I
    .local v2, "v":I
    .local v14, "dlen":I
    :cond_0
    move/from16 v28, v3

    move/from16 v27, v14

    move v14, v2

    move/from16 v2, v24

    .line 2260
    .end local v2    # "v":I
    .end local v3    # "xs":I
    .end local v4    # "p":I
    .end local v5    # "p0i":I
    .end local v6    # "R2":I
    .end local v7    # "Rx":I
    .end local v14    # "dlen":I
    .end local v24    # "ys":I
    .end local v25    # "xd":I
    .end local v26    # "yd":I
    .restart local v27    # "dlen":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p7

    move/from16 v14, v27

    goto :goto_0

    .line 2286
    .end local v27    # "dlen":I
    .restart local v14    # "dlen":I
    :cond_1
    move/from16 v27, v14

    .end local v14    # "dlen":I
    .restart local v27    # "dlen":I
    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v15, :cond_8

    .line 2295
    aget-object v1, v17, v10

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 2296
    .local v1, "p":I
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v2

    .line 2297
    .local v2, "p0i":I
    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v6

    .line 2303
    .restart local v6    # "R2":I
    if-ne v10, v12, :cond_2

    .line 2305
    const/4 v7, 0x1

    move v4, v12

    move v5, v2

    move v2, v8

    .end local v8    # "ft":I
    .local v2, "ft":I
    .restart local v5    # "p0i":I
    move-object/from16 v8, p7

    move/from16 v3, v19

    move/from16 v19, v5

    move v5, v3

    move v14, v6

    move v3, v12

    move-object/from16 v6, v17

    const/16 v24, 0x0

    move/from16 v12, p6

    move/from16 v17, v1

    move-object/from16 v1, p7

    .end local v1    # "p":I
    .end local v12    # "slen":I
    .local v3, "slen":I
    .local v5, "n":I
    .local v6, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v14, "R2":I
    .local v17, "p":I
    .local v19, "p0i":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    .line 2306
    move/from16 v25, v2

    .end local v2    # "ft":I
    .local v25, "ft":I
    move v4, v3

    move-object/from16 v0, p0

    move/from16 v2, v22

    .end local v22    # "gt":I
    .local v2, "gt":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move/from16 v26, v2

    move-object/from16 v22, v6

    move/from16 v28, v9

    move v9, v5

    .end local v2    # "gt":I
    .end local v5    # "n":I
    .end local v6    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v9, "n":I
    .local v22, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v26, "gt":I
    .local v28, "t1":I
    goto :goto_3

    .line 2303
    .end local v3    # "slen":I
    .end local v14    # "R2":I
    .end local v25    # "ft":I
    .end local v26    # "gt":I
    .end local v28    # "t1":I
    .restart local v1    # "p":I
    .local v2, "p0i":I
    .local v6, "R2":I
    .restart local v8    # "ft":I
    .local v9, "t1":I
    .restart local v12    # "slen":I
    .local v17, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v19, "n":I
    .local v22, "gt":I
    :cond_2
    move v14, v6

    move/from16 v25, v8

    move/from16 v28, v9

    move v3, v12

    move/from16 v9, v19

    move/from16 v26, v22

    const/16 v24, 0x0

    move/from16 v12, p6

    move/from16 v19, v2

    move-object/from16 v22, v17

    move/from16 v17, v1

    .line 2309
    .end local v1    # "p":I
    .end local v2    # "p0i":I
    .end local v6    # "R2":I
    .end local v8    # "ft":I
    .end local v12    # "slen":I
    .restart local v3    # "slen":I
    .local v9, "n":I
    .restart local v14    # "R2":I
    .local v17, "p":I
    .local v19, "p0i":I
    .local v22, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .restart local v25    # "ft":I
    .restart local v26    # "gt":I
    .restart local v28    # "t1":I
    :goto_3
    move/from16 v4, v28

    .line 2310
    .local v4, "gm":I
    add-int v5, v4, v9

    .line 2311
    .local v5, "igm":I
    add-int v29, v5, v9

    .line 2312
    .local v29, "fx":I
    add-int v30, v29, v9

    .line 2314
    .local v30, "gx":I
    aget-object v0, v22, v10

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move v7, v3

    .end local v3    # "slen":I
    .local v7, "slen":I
    move-object/from16 v3, p7

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move v2, v4

    move v4, v5

    move v5, v13

    move/from16 v8, v19

    move v13, v7

    move/from16 v7, v17

    .end local v17    # "p":I
    .end local v19    # "p0i":I
    .local v2, "gm":I
    .local v4, "igm":I
    .local v5, "logn":I
    .local v7, "p":I
    .local v8, "p0i":I
    .local v13, "slen":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    .line 2316
    move/from16 v17, v2

    .end local v2    # "gm":I
    .local v17, "gm":I
    if-ge v10, v13, :cond_4

    .line 2318
    const/4 v0, 0x0

    .local v0, "v":I
    add-int v1, v25, v10

    .local v1, "x":I
    add-int v2, v26, v10

    move/from16 v19, v1

    move/from16 v31, v2

    .line 2319
    .end local v1    # "x":I
    .local v19, "x":I
    .local v31, "y":I
    :goto_4
    if-ge v0, v9, :cond_3

    .line 2321
    add-int v1, v29, v0

    aget v2, p7, v19

    aput v2, p7, v1

    .line 2322
    add-int v1, v30, v0

    aget v2, p7, v31

    aput v2, p7, v1

    .line 2319
    add-int/lit8 v0, v0, 0x1

    add-int v19, v19, v13

    add-int v31, v31, v13

    goto :goto_4

    .line 2324
    :cond_3
    add-int v2, v25, v10

    move v6, v5

    move v5, v4

    .end local v4    # "igm":I
    .local v5, "igm":I
    .local v6, "logn":I
    move-object/from16 v4, p7

    move-object/from16 v1, p7

    move v3, v13

    move v13, v0

    move-object/from16 v0, p0

    .end local v0    # "v":I
    .restart local v3    # "slen":I
    .local v13, "v":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    .line 2325
    move v4, v5

    move v5, v6

    .end local v6    # "logn":I
    .restart local v4    # "igm":I
    .local v5, "logn":I
    add-int v2, v26, v10

    move v5, v4

    .end local v4    # "igm":I
    .local v5, "igm":I
    .restart local v6    # "logn":I
    move-object/from16 v4, p7

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move/from16 v32, v5

    move v5, v8

    move v8, v14

    move/from16 v4, v17

    move/from16 v33, v19

    move/from16 v17, v29

    move/from16 v29, v30

    move v14, v3

    move/from16 v19, v6

    move v0, v13

    .end local v6    # "logn":I
    .local v5, "p0i":I
    .local v8, "logn":I
    .local v32, "igm":I
    goto/16 :goto_6

    .line 2331
    .end local v3    # "slen":I
    .end local v19    # "x":I
    .end local v31    # "y":I
    .end local v32    # "igm":I
    .restart local v4    # "igm":I
    .local v5, "logn":I
    .local v8, "p0i":I
    .local v13, "slen":I
    :cond_4
    move v0, v8

    move v8, v5

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v32, v4

    move v3, v13

    .end local v4    # "igm":I
    .end local v13    # "slen":I
    .restart local v3    # "slen":I
    .local v5, "p0i":I
    .local v8, "logn":I
    .restart local v32    # "igm":I
    move v6, v7

    .end local v7    # "p":I
    .local v6, "p":I
    invoke-virtual {v0, v3, v6, v5, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v7

    .line 2332
    .local v7, "Rx":I
    const/4 v1, 0x0

    .local v1, "v":I
    move/from16 v2, v25

    .local v2, "x":I
    move/from16 v4, v26

    move v13, v1

    move/from16 v19, v4

    .line 2333
    .end local v1    # "v":I
    .local v13, "v":I
    .local v19, "y":I
    :goto_5
    if-ge v13, v9, :cond_5

    .line 2335
    add-int v31, v29, v13

    move-object/from16 v1, p7

    move v4, v6

    move v6, v14

    .end local v14    # "R2":I
    .local v4, "p":I
    .local v6, "R2":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v14

    move/from16 v33, v2

    move v0, v7

    move v7, v4

    .end local v2    # "x":I
    .end local v4    # "p":I
    .local v0, "Rx":I
    .local v7, "p":I
    .local v33, "x":I
    aput v14, p7, v31

    .line 2337
    add-int v14, v30, v13

    move/from16 v2, v19

    move v7, v0

    move-object/from16 v0, p0

    .end local v0    # "Rx":I
    .end local v19    # "y":I
    .local v2, "y":I
    .restart local v4    # "p":I
    .local v7, "Rx":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v19

    move/from16 v31, v2

    move/from16 v34, v7

    move v7, v4

    .end local v2    # "y":I
    .end local v4    # "p":I
    .local v7, "p":I
    .restart local v31    # "y":I
    .local v34, "Rx":I
    aput v19, p7, v14

    .line 2333
    add-int/lit8 v13, v13, 0x1

    add-int v2, v33, v3

    .end local v33    # "x":I
    .local v2, "x":I
    add-int v19, v31, v3

    move v14, v6

    move v6, v7

    move/from16 v7, v34

    .end local v31    # "y":I
    .restart local v19    # "y":I
    goto :goto_5

    .line 2340
    .end local v34    # "Rx":I
    .local v6, "p":I
    .local v7, "Rx":I
    .restart local v14    # "R2":I
    :cond_5
    move/from16 v33, v2

    move/from16 v34, v7

    move/from16 v31, v19

    move v7, v6

    move v6, v14

    .end local v2    # "x":I
    .end local v14    # "R2":I
    .end local v19    # "y":I
    .local v6, "R2":I
    .local v7, "p":I
    .restart local v31    # "y":I
    .restart local v33    # "x":I
    .restart local v34    # "Rx":I
    move v0, v3

    .end local v3    # "slen":I
    .local v0, "slen":I
    move-object/from16 v3, p7

    move v1, v7

    move v7, v5

    move v5, v8

    move v8, v6

    move v6, v1

    move-object/from16 v1, p7

    move v14, v0

    move/from16 v4, v17

    move/from16 v2, v29

    move-object/from16 v0, p0

    .end local v0    # "slen":I
    .end local v17    # "gm":I
    .end local v29    # "fx":I
    .local v2, "fx":I
    .local v4, "gm":I
    .local v5, "logn":I
    .local v6, "p":I
    .local v7, "p0i":I
    .local v8, "R2":I
    .local v14, "slen":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2341
    move/from16 v17, v2

    move/from16 v19, v7

    move v7, v6

    .end local v2    # "fx":I
    .end local v6    # "p":I
    .local v7, "p":I
    .local v17, "fx":I
    .local v19, "p0i":I
    move/from16 v7, v19

    move/from16 v2, v30

    .end local v19    # "p0i":I
    .end local v30    # "gx":I
    .local v2, "gx":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v29, v2

    move/from16 v19, v5

    move v5, v7

    move v7, v6

    move v0, v13

    .line 2349
    .end local v2    # "gx":I
    .end local v6    # "p":I
    .end local v13    # "v":I
    .end local v34    # "Rx":I
    .local v0, "v":I
    .local v5, "p0i":I
    .local v7, "p":I
    .local v19, "logn":I
    .local v29, "gx":I
    :goto_6
    add-int v2, v29, v9

    .line 2350
    .local v2, "Fp":I
    add-int v13, v2, v11

    .line 2351
    .local v13, "Gp":I
    const/4 v0, 0x0

    add-int v1, v20, v10

    .end local v33    # "x":I
    .local v1, "x":I
    add-int v3, v21, v10

    move/from16 v30, v1

    move/from16 v31, v3

    .line 2352
    .end local v1    # "x":I
    .local v30, "x":I
    :goto_7
    if-ge v0, v11, :cond_6

    .line 2354
    add-int v1, v2, v0

    aget v3, p7, v30

    aput v3, p7, v1

    .line 2355
    add-int v1, v13, v0

    aget v3, p7, v31

    aput v3, p7, v1

    .line 2352
    add-int/lit8 v0, v0, 0x1

    add-int v30, v30, v15

    add-int v31, v31, v15

    goto :goto_7

    .line 2357
    :cond_6
    move v6, v7

    move v7, v5

    .end local v5    # "p0i":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    add-int/lit8 v5, v19, -0x1

    move-object/from16 v3, p7

    move-object/from16 v1, p7

    move/from16 v33, v0

    move-object/from16 v0, p0

    .end local v0    # "v":I
    .local v33, "v":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2358
    move/from16 v34, v2

    move v5, v7

    move v7, v6

    .end local v2    # "Fp":I
    .end local v6    # "p":I
    .restart local v5    # "p0i":I
    .local v7, "p":I
    .local v34, "Fp":I
    move v7, v5

    .end local v5    # "p0i":I
    .restart local v6    # "p":I
    .local v7, "p0i":I
    add-int/lit8 v5, v19, -0x1

    move v2, v13

    .end local v13    # "Gp":I
    .local v2, "Gp":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    .line 2390
    move/from16 v35, v2

    move v13, v4

    move v5, v7

    move v7, v6

    .end local v2    # "Gp":I
    .end local v4    # "gm":I
    .end local v6    # "p":I
    .restart local v5    # "p0i":I
    .local v7, "p":I
    .local v13, "gm":I
    .local v35, "Gp":I
    const/4 v1, 0x0

    .end local v33    # "v":I
    .local v1, "v":I
    add-int v2, v20, v10

    .end local v30    # "x":I
    .local v2, "x":I
    add-int v3, v21, v10

    move/from16 v30, v2

    move/from16 v31, v3

    .end local v2    # "x":I
    .restart local v30    # "x":I
    :goto_8
    if-ge v1, v11, :cond_7

    .line 2396
    shl-int/lit8 v2, v1, 0x1

    add-int v2, v17, v2

    add-int/lit8 v2, v2, 0x0

    aget v2, p7, v2

    .line 2397
    .local v2, "ftA":I
    shl-int/lit8 v3, v1, 0x1

    add-int v3, v17, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, p7, v3

    .line 2398
    .local v3, "ftB":I
    shl-int/lit8 v4, v1, 0x1

    add-int v4, v29, v4

    add-int/lit8 v4, v4, 0x0

    aget v4, p7, v4

    .line 2399
    .local v4, "gtA":I
    shl-int/lit8 v6, v1, 0x1

    add-int v6, v29, v6

    add-int/lit8 v6, v6, 0x1

    aget v6, p7, v6

    .line 2400
    .local v6, "gtB":I
    add-int v33, v34, v1

    move/from16 v36, v1

    .end local v1    # "v":I
    .local v36, "v":I
    aget v1, p7, v33

    invoke-virtual {v0, v1, v8, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    .line 2401
    .local v1, "mFp":I
    add-int v33, v35, v36

    move/from16 v37, v9

    .end local v9    # "n":I
    .local v37, "n":I
    aget v9, p7, v33

    invoke-virtual {v0, v9, v8, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v9

    .line 2402
    .local v9, "mGp":I
    add-int/lit8 v33, v30, 0x0

    invoke-virtual {v0, v6, v1, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v38

    aput v38, p7, v33

    .line 2403
    add-int v33, v30, v15

    invoke-virtual {v0, v4, v1, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v38

    aput v38, p7, v33

    .line 2404
    add-int/lit8 v33, v31, 0x0

    invoke-virtual {v0, v3, v9, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v38

    aput v38, p7, v33

    .line 2405
    add-int v33, v31, v15

    invoke-virtual {v0, v2, v9, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v38

    aput v38, p7, v33

    .line 2391
    .end local v1    # "mFp":I
    .end local v2    # "ftA":I
    .end local v3    # "ftB":I
    .end local v4    # "gtA":I
    .end local v6    # "gtB":I
    .end local v9    # "mGp":I
    add-int/lit8 v1, v36, 0x1

    .end local v36    # "v":I
    .local v1, "v":I
    shl-int/lit8 v2, v15, 0x1

    add-int v30, v30, v2

    shl-int/lit8 v2, v15, 0x1

    add-int v31, v31, v2

    move/from16 v9, v37

    goto :goto_8

    .line 2407
    .end local v37    # "n":I
    .local v9, "n":I
    :cond_7
    move/from16 v36, v1

    move/from16 v37, v9

    .end local v1    # "v":I
    .end local v9    # "n":I
    .restart local v36    # "v":I
    .restart local v37    # "n":I
    add-int v2, v20, v10

    move-object/from16 v4, p7

    move-object/from16 v1, p7

    move v9, v8

    move v3, v15

    move/from16 v6, v19

    move v8, v5

    move/from16 v5, v32

    .end local v15    # "llen":I
    .end local v19    # "logn":I
    .end local v32    # "igm":I
    .local v3, "llen":I
    .local v5, "igm":I
    .local v6, "logn":I
    .local v8, "p0i":I
    .local v9, "R2":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    .line 2408
    move v4, v5

    move v5, v6

    .end local v6    # "logn":I
    .local v4, "igm":I
    .local v5, "logn":I
    add-int v2, v21, v10

    move/from16 v32, v4

    .end local v4    # "igm":I
    .restart local v32    # "igm":I
    move-object/from16 v4, p7

    move-object/from16 v0, p0

    move/from16 v5, v32

    .end local v32    # "igm":I
    .local v5, "igm":I
    .restart local v6    # "logn":I
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    .line 2286
    move v13, v6

    .end local v5    # "igm":I
    .end local v6    # "logn":I
    .end local v7    # "p":I
    .end local v8    # "p0i":I
    .end local v9    # "R2":I
    .end local v17    # "fx":I
    .end local v29    # "gx":I
    .end local v34    # "Fp":I
    .end local v35    # "Gp":I
    .end local v36    # "v":I
    .local v13, "logn":I
    add-int/lit8 v10, v10, 0x1

    move v12, v14

    move-object/from16 v17, v22

    move/from16 v8, v25

    move/from16 v22, v26

    move/from16 v9, v28

    move/from16 v19, v37

    goto/16 :goto_2

    .line 2414
    .end local v3    # "llen":I
    .end local v14    # "slen":I
    .end local v25    # "ft":I
    .end local v26    # "gt":I
    .end local v28    # "t1":I
    .end local v30    # "x":I
    .end local v31    # "y":I
    .end local v37    # "n":I
    .local v8, "ft":I
    .local v9, "t1":I
    .restart local v12    # "slen":I
    .restart local v15    # "llen":I
    .local v17, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v19, "n":I
    .local v22, "gt":I
    :cond_8
    move/from16 v25, v8

    move/from16 v28, v9

    move v14, v12

    move v3, v15

    move/from16 v37, v19

    move/from16 v26, v22

    const/16 v24, 0x0

    move/from16 v12, p6

    move-object/from16 v22, v17

    .end local v8    # "ft":I
    .end local v9    # "t1":I
    .end local v12    # "slen":I
    .end local v15    # "llen":I
    .end local v17    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .end local v19    # "n":I
    .restart local v3    # "llen":I
    .restart local v14    # "slen":I
    .local v22, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .restart local v25    # "ft":I
    .restart local v26    # "gt":I
    .restart local v28    # "t1":I
    .restart local v37    # "n":I
    const/4 v7, 0x1

    move v4, v3

    move-object/from16 v8, p7

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, v20

    move-object/from16 v6, v22

    move/from16 v5, v37

    .end local v20    # "Ft":I
    .end local v22    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .end local v28    # "t1":I
    .end local v37    # "n":I
    .local v2, "Ft":I
    .local v5, "n":I
    .local v6, "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .restart local v9    # "t1":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    .line 2415
    move v15, v2

    move v4, v9

    .end local v2    # "Ft":I
    .local v15, "Ft":I
    move v4, v3

    move/from16 v2, v21

    .end local v21    # "Gt":I
    .local v2, "Gt":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    .line 2480
    move/from16 v20, v2

    move v8, v5

    move v9, v3

    .end local v2    # "Gt":I
    .end local v3    # "llen":I
    .end local v5    # "n":I
    .end local v6    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .local v8, "n":I
    .local v9, "llen":I
    .local v20, "Gt":I
    .restart local v22    # "primes":[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .restart local v28    # "t1":I
    new-array v0, v8, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 2481
    .local v0, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-array v1, v8, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 2482
    .local v1, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-array v3, v8, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 2483
    .local v3, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    new-array v2, v8, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 2484
    .local v2, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    shr-int/lit8 v4, v8, 0x1

    new-array v4, v4, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 2485
    .local v4, "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move/from16 v17, v9

    .end local v9    # "llen":I
    .local v17, "llen":I
    new-array v9, v8, [I

    .line 2497
    .local v9, "k":[I
    const/16 v5, 0xa

    if-le v14, v5, :cond_9

    const/16 v6, 0xa

    goto :goto_9

    :cond_9
    move v6, v14

    .line 2498
    .local v6, "rlen":I
    :goto_9
    add-int v7, v25, v14

    sub-int/2addr v7, v6

    move-object/from16 v19, v2

    .end local v2    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    const/4 v2, 0x0

    move-object/from16 v29, v4

    move v5, v6

    move v4, v7

    move v7, v13

    move v6, v14

    move-object/from16 v21, v19

    const/16 v13, 0xa

    move-object v14, v0

    move-object/from16 v19, v1

    move-object v1, v3

    move-object/from16 v0, p0

    move-object/from16 v3, p7

    .end local v0    # "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v13    # "logn":I
    .local v1, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v5, "rlen":I
    .local v6, "slen":I
    .local v7, "logn":I
    .local v14, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v21, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v29, "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    .line 2499
    move v3, v6

    move v6, v5

    move v5, v7

    .end local v7    # "logn":I
    .local v3, "slen":I
    .local v5, "logn":I
    .local v6, "rlen":I
    add-int v0, v26, v3

    sub-int v4, v0, v6

    move-object/from16 v0, p0

    move-object v13, v1

    move v5, v6

    move-object/from16 v1, v21

    move v6, v3

    move-object/from16 v3, p7

    .end local v3    # "slen":I
    .end local v21    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v5, "rlen":I
    .local v6, "slen":I
    .restart local v7    # "logn":I
    .local v13, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    .line 2504
    move/from16 v21, v5

    move/from16 v31, v6

    move v5, v7

    .end local v6    # "slen":I
    .end local v7    # "logn":I
    .local v5, "logn":I
    .local v21, "rlen":I
    .local v31, "slen":I
    sub-int v2, v31, v21

    mul-int/lit8 v32, v2, 0x1f

    .line 2512
    .local v32, "scale_fg":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_avg:[I

    aget v2, v2, v12

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_std:[I

    aget v3, v3, v12

    mul-int/lit8 v3, v3, 0x6

    sub-int v33, v2, v3

    .line 2513
    .local v33, "minbl_fg":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_avg:[I

    aget v2, v2, v12

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_std:[I

    aget v3, v3, v12

    mul-int/lit8 v3, v3, 0x6

    add-int v34, v2, v3

    .line 2519
    .local v34, "maxbl_fg":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2520
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2521
    move-object v2, v0

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, v13

    move-object/from16 v13, p0

    move-object v5, v1

    move-object/from16 v1, v29

    move-object/from16 v29, v9

    const/4 v9, 0x0

    .end local v9    # "k":[I
    .end local v13    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v5, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v7    # "logn":I
    .local v29, "k":[I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2522
    move-object/from16 v35, v1

    move-object v0, v3

    move-object v1, v5

    move v5, v7

    .end local v3    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "logn":I
    .local v0, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v5, "logn":I
    .local v35, "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v2, v13, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v0, v9, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2523
    iget-object v2, v13, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v9, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2532
    move/from16 v2, v17

    .line 2533
    .local v2, "FGlen":I
    mul-int/lit8 v3, v17, 0x1f

    .line 2560
    .local v3, "maxbl_FG":I
    sub-int v4, v3, v33

    move v9, v3

    move/from16 v36, v10

    move/from16 v6, v21

    move v10, v2

    move/from16 v21, v4

    .line 2572
    .end local v2    # "FGlen":I
    .end local v3    # "maxbl_FG":I
    .local v6, "rlen":I
    .local v9, "maxbl_FG":I
    .local v10, "FGlen":I
    .local v21, "scale_k":I
    .local v36, "u":I
    :goto_a
    const/16 v2, 0xa

    if-le v10, v2, :cond_a

    const/16 v3, 0xa

    goto :goto_b

    :cond_a
    move v3, v10

    .line 2573
    .end local v6    # "rlen":I
    .local v3, "rlen":I
    :goto_b
    sub-int v4, v10, v3

    mul-int/lit8 v30, v4, 0x1f

    .line 2574
    .local v30, "scale_FG":I
    add-int v4, v15, v10

    sub-int/2addr v4, v3

    const/16 v6, 0xa

    const/4 v2, 0x0

    move-object v6, v13

    move-object v13, v0

    move-object v0, v6

    move-object v6, v14

    move-object v14, v1

    move-object v1, v6

    move v7, v5

    move/from16 v6, v17

    const/16 v17, 0xa

    move v5, v3

    move-object/from16 v3, p7

    .end local v0    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "rlen":I
    .end local v17    # "llen":I
    .local v1, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v5, "rlen":I
    .local v6, "llen":I
    .restart local v7    # "logn":I
    .restart local v13    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v14, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    .line 2575
    move v0, v5

    move v3, v6

    move v5, v7

    .end local v6    # "llen":I
    .end local v7    # "logn":I
    .local v0, "rlen":I
    .local v3, "llen":I
    .local v5, "logn":I
    add-int v2, v20, v10

    sub-int v4, v2, v0

    const/4 v2, 0x0

    move/from16 v37, v9

    move-object/from16 v3, p7

    move v5, v0

    move-object v9, v1

    move-object/from16 v1, v19

    move-object/from16 v0, p0

    .end local v0    # "rlen":I
    .end local v3    # "llen":I
    .end local v19    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v5, "rlen":I
    .restart local v6    # "llen":I
    .restart local v7    # "logn":I
    .local v9, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v37, "maxbl_FG":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    .line 2580
    move/from16 v19, v5

    move v5, v7

    move v7, v6

    move-object v6, v0

    move-object v0, v1

    .end local v1    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "llen":I
    .local v0, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v5, "logn":I
    .local v7, "llen":I
    .local v19, "rlen":I
    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2581
    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v1, v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2582
    move-object v1, v0

    .end local v0    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v1    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v4, 0x0

    move-object v3, v9

    move-object v9, v1

    move-object v1, v3

    move-object v3, v13

    .end local v13    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v9, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2583
    move-object v13, v1

    move-object/from16 v38, v3

    .end local v1    # "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v13, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v38, "rt3":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v1, v9

    move-object v3, v14

    .end local v9    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v14    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v1, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2584
    move-object/from16 v39, v3

    .end local v3    # "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v39, "rt4":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v13

    .end local v13    # "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2585
    move-object/from16 v40, v3

    .end local v3    # "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v40, "rt1":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, v35

    .end local v35    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2586
    move-object v0, v1

    .end local v1    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v3    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v0    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v35    # "rt5":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 2601
    sub-int v1, v21, v30

    add-int v1, v1, v32

    .line 2611
    .local v1, "dc":I
    if-gez v1, :cond_b

    .line 2613
    neg-int v1, v1

    .line 2614
    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_two:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .local v2, "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    goto :goto_c

    .line 2618
    .end local v2    # "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    :cond_b
    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_onehalf:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 2620
    .restart local v2    # "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    :goto_c
    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_one:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move/from16 v41, v1

    move-object v1, v2

    move-object v2, v3

    .line 2621
    .local v1, "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v2, "pdc":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v41, "dc":I
    :goto_d
    if-eqz v41, :cond_d

    .line 2623
    and-int/lit8 v3, v41, 0x1

    if-eqz v3, :cond_c

    .line 2625
    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    .line 2627
    :cond_c
    shr-int/lit8 v41, v41, 0x1

    .line 2628
    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    goto :goto_d

    .line 2631
    :cond_d
    const/4 v3, 0x0

    .end local v36    # "u":I
    .local v3, "u":I
    :goto_e
    if-ge v3, v8, :cond_10

    .line 2635
    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v9, v0, v3

    invoke-virtual {v4, v9, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 2646
    .local v4, "xv":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v9, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mtwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v9, v13, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 2647
    invoke-virtual {v9, v4, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_f

    .line 2651
    :cond_e
    iget-object v9, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v13

    long-to-int v9, v13

    aput v9, v29, v3

    .line 2631
    .end local v4    # "xv":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2649
    .restart local v4    # "xv":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    :cond_f
    :goto_f
    const/16 v24, 0x0

    return v24

    .line 2661
    .end local v4    # "xv":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    :cond_10
    const/16 v24, 0x0

    move v4, v11

    .end local v11    # "hn":I
    .local v4, "hn":I
    div-int/lit8 v11, v21, 0x1f

    .line 2662
    .local v11, "sch":I
    rem-int/lit8 v9, v21, 0x1f

    .line 2663
    .local v9, "scl":I
    const/4 v13, 0x4

    if-gt v12, v13, :cond_11

    .line 2665
    move v13, v3

    move v3, v10

    .end local v10    # "FGlen":I
    .local v3, "FGlen":I
    .local v13, "u":I
    const/4 v10, 0x0

    move v14, v13

    move v13, v5

    .end local v5    # "logn":I
    .local v13, "logn":I
    .local v14, "u":I
    move-object/from16 v5, p7

    move/from16 v36, v8

    .end local v8    # "n":I
    .local v36, "n":I
    move/from16 v8, v31

    move/from16 v42, v14

    .end local v14    # "u":I
    .local v42, "u":I
    move-object/from16 v14, p7

    move-object/from16 v24, v0

    move/from16 v17, v4

    move-object v0, v6

    move v4, v7

    move v12, v9

    move/from16 v6, v25

    move-object/from16 v9, v29

    move/from16 v7, v31

    move/from16 v43, v36

    move/from16 v44, v37

    const/16 v29, 0xa

    const/16 v31, 0x0

    move-object/from16 v25, v2

    move v2, v15

    move/from16 v15, v28

    move-object/from16 v28, v1

    move-object/from16 v1, p7

    .end local v0    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v1    # "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v29    # "k":[I
    .end local v31    # "slen":I
    .end local v36    # "n":I
    .end local v37    # "maxbl_FG":I
    .local v2, "Ft":I
    .local v4, "llen":I
    .local v6, "ft":I
    .local v7, "slen":I
    .local v9, "k":[I
    .local v12, "scl":I
    .local v15, "t1":I
    .local v17, "hn":I
    .local v24, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v25, "pdc":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v28, "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v43, "n":I
    .local v44, "maxbl_FG":I
    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled_ntt([IIII[IIII[IIIII[II)V

    .line 2667
    move/from16 v36, v2

    move v2, v3

    move/from16 v37, v6

    move v3, v7

    move-object v0, v9

    move v5, v13

    move v9, v15

    .end local v6    # "ft":I
    .end local v7    # "slen":I
    .end local v15    # "t1":I
    .local v0, "k":[I
    .local v2, "FGlen":I
    .local v3, "slen":I
    .local v9, "t1":I
    .local v36, "Ft":I
    .local v37, "ft":I
    move-object/from16 v5, p7

    move v8, v3

    move/from16 v6, v26

    move-object v9, v0

    move v3, v2

    move/from16 v2, v20

    move-object/from16 v0, p0

    .end local v0    # "k":[I
    .end local v20    # "Gt":I
    .end local v26    # "gt":I
    .local v2, "Gt":I
    .local v3, "FGlen":I
    .local v6, "gt":I
    .restart local v7    # "slen":I
    .local v9, "k":[I
    .restart local v15    # "t1":I
    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled_ntt([IIII[IIII[IIIII[II)V

    move v5, v13

    .end local v6    # "gt":I
    .end local v7    # "slen":I
    .end local v13    # "logn":I
    .local v2, "FGlen":I
    .local v3, "slen":I
    .restart local v5    # "logn":I
    .restart local v20    # "Gt":I
    .restart local v26    # "gt":I
    goto :goto_10

    .line 2672
    .end local v12    # "scl":I
    .end local v17    # "hn":I
    .end local v24    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v36    # "Ft":I
    .end local v42    # "u":I
    .end local v43    # "n":I
    .end local v44    # "maxbl_FG":I
    .local v0, "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v1    # "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v2, "pdc":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "u":I
    .local v4, "hn":I
    .local v7, "llen":I
    .restart local v8    # "n":I
    .local v9, "scl":I
    .restart local v10    # "FGlen":I
    .local v15, "Ft":I
    .local v25, "ft":I
    .local v28, "t1":I
    .restart local v29    # "k":[I
    .restart local v31    # "slen":I
    .local v37, "maxbl_FG":I
    :cond_11
    move-object/from16 v24, v0

    move/from16 v42, v3

    move/from16 v17, v4

    move v4, v7

    move/from16 v43, v8

    move v12, v9

    move/from16 v36, v15

    move/from16 v15, v28

    move-object/from16 v9, v29

    move/from16 v3, v31

    move/from16 v44, v37

    const/16 v29, 0xa

    const/16 v31, 0x0

    move-object/from16 v28, v1

    move/from16 v37, v25

    move-object/from16 v25, v2

    move v2, v10

    .end local v0    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v1    # "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "llen":I
    .end local v8    # "n":I
    .end local v10    # "FGlen":I
    .end local v29    # "k":[I
    .end local v31    # "slen":I
    .local v2, "FGlen":I
    .local v3, "slen":I
    .local v4, "llen":I
    .local v9, "k":[I
    .restart local v12    # "scl":I
    .local v15, "t1":I
    .restart local v17    # "hn":I
    .restart local v24    # "rt2":[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v25, "pdc":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v28, "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v36    # "Ft":I
    .local v37, "ft":I
    .restart local v42    # "u":I
    .restart local v43    # "n":I
    .restart local v44    # "maxbl_FG":I
    const/4 v10, 0x0

    move v13, v5

    .end local v5    # "logn":I
    .restart local v13    # "logn":I
    move-object/from16 v5, p7

    move v8, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move v7, v3

    move/from16 v6, v37

    move v3, v2

    move/from16 v2, v36

    .end local v36    # "Ft":I
    .end local v37    # "ft":I
    .local v2, "Ft":I
    .local v3, "FGlen":I
    .local v6, "ft":I
    .local v7, "slen":I
    invoke-virtual/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled([IIII[IIII[IIIII)V

    .line 2674
    move v2, v3

    move v3, v7

    move v5, v13

    .end local v6    # "ft":I
    .end local v7    # "slen":I
    .local v2, "FGlen":I
    .local v3, "slen":I
    .restart local v36    # "Ft":I
    .restart local v37    # "ft":I
    move-object/from16 v5, p7

    move v8, v3

    move/from16 v6, v26

    move v3, v2

    move/from16 v2, v20

    .end local v20    # "Gt":I
    .end local v26    # "gt":I
    .local v2, "Gt":I
    .local v3, "FGlen":I
    .local v6, "gt":I
    .restart local v7    # "slen":I
    invoke-virtual/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled([IIII[IIII[IIIII)V

    move v5, v13

    .line 2684
    .end local v6    # "gt":I
    .end local v13    # "logn":I
    .restart local v5    # "logn":I
    .restart local v26    # "gt":I
    :goto_10
    add-int v0, v21, v34

    add-int/lit8 v0, v0, 0xa

    .line 2685
    .local v0, "new_maxbl_FG":I
    move/from16 v6, v44

    .end local v44    # "maxbl_FG":I
    .local v6, "maxbl_FG":I
    if-ge v0, v6, :cond_13

    .line 2687
    move v6, v0

    .line 2688
    mul-int/lit8 v10, v3, 0x1f

    add-int/lit8 v8, v6, 0x1f

    if-lt v10, v8, :cond_12

    .line 2690
    add-int/lit8 v10, v3, -0x1

    .end local v3    # "FGlen":I
    .restart local v10    # "FGlen":I
    goto :goto_11

    .line 2688
    .end local v10    # "FGlen":I
    .restart local v3    # "FGlen":I
    :cond_12
    move v10, v3

    goto :goto_11

    .line 2685
    :cond_13
    move v10, v3

    .line 2699
    .end local v3    # "FGlen":I
    .restart local v10    # "FGlen":I
    :goto_11
    if-gtz v21, :cond_19

    .line 2701
    nop

    .line 2714
    .end local v0    # "new_maxbl_FG":I
    .end local v11    # "sch":I
    .end local v12    # "scl":I
    .end local v25    # "pdc":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v28    # "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v30    # "scale_FG":I
    .end local v41    # "dc":I
    if-ge v10, v7, :cond_16

    .line 2716
    const/4 v0, 0x0

    move v3, v0

    move/from16 v20, v36

    .end local v36    # "Ft":I
    .end local v42    # "u":I
    .local v3, "u":I
    .local v20, "Ft":I
    :goto_12
    move/from16 v8, v43

    .end local v43    # "n":I
    .restart local v8    # "n":I
    if-ge v3, v8, :cond_17

    .line 2721
    add-int v0, v20, v10

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    ushr-int/lit8 v0, v0, 0x1e

    neg-int v0, v0

    ushr-int/lit8 v0, v0, 0x1

    .line 2722
    .local v0, "sw":I
    move v11, v10

    .local v11, "v":I
    :goto_13
    if-ge v11, v7, :cond_14

    .line 2724
    add-int v12, v20, v11

    aput v0, v1, v12

    .line 2722
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 2726
    :cond_14
    add-int v12, v2, v10

    add-int/lit8 v12, v12, -0x1

    aget v12, v1, v12

    ushr-int/lit8 v12, v12, 0x1e

    neg-int v12, v12

    ushr-int/lit8 v0, v12, 0x1

    .line 2727
    move v11, v10

    :goto_14
    if-ge v11, v7, :cond_15

    .line 2729
    add-int v12, v2, v11

    aput v0, v1, v12

    .line 2727
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 2716
    .end local v0    # "sw":I
    .end local v11    # "v":I
    :cond_15
    add-int/lit8 v3, v3, 0x1

    add-int v20, v20, v4

    add-int/2addr v2, v4

    move/from16 v43, v8

    goto :goto_12

    .line 2714
    .end local v3    # "u":I
    .end local v8    # "n":I
    .end local v20    # "Ft":I
    .restart local v36    # "Ft":I
    .restart local v42    # "u":I
    .restart local v43    # "n":I
    :cond_16
    move/from16 v8, v43

    .end local v43    # "n":I
    .restart local v8    # "n":I
    move/from16 v20, v36

    move/from16 v3, v42

    .line 2738
    .end local v36    # "Ft":I
    .end local v42    # "u":I
    .restart local v3    # "u":I
    .restart local v20    # "Ft":I
    :cond_17
    const/4 v0, 0x0

    .end local v3    # "u":I
    .local v0, "u":I
    move/from16 v3, p8

    .local v3, "x":I
    move/from16 v11, p8

    .line 2739
    .local v11, "y":I
    :goto_15
    shl-int/lit8 v12, v8, 0x1

    if-ge v0, v12, :cond_18

    .line 2742
    invoke-static {v1, v11, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2739
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v7

    add-int/2addr v11, v4

    goto :goto_15

    .line 2744
    :cond_18
    return v16

    .line 2703
    .end local v3    # "x":I
    .end local v8    # "n":I
    .end local v20    # "Ft":I
    .local v0, "new_maxbl_FG":I
    .local v11, "sch":I
    .restart local v12    # "scl":I
    .restart local v25    # "pdc":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v28    # "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v30    # "scale_FG":I
    .restart local v36    # "Ft":I
    .restart local v41    # "dc":I
    .restart local v42    # "u":I
    .restart local v43    # "n":I
    :cond_19
    move/from16 v8, v43

    .end local v43    # "n":I
    .restart local v8    # "n":I
    add-int/lit8 v21, v21, -0x19

    .line 2704
    if-gez v21, :cond_1a

    .line 2706
    const/4 v3, 0x0

    move/from16 v21, v3

    .line 2708
    .end local v0    # "new_maxbl_FG":I
    .end local v11    # "sch":I
    .end local v12    # "scl":I
    .end local v25    # "pdc":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v28    # "pt":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v30    # "scale_FG":I
    .end local v41    # "dc":I
    :cond_1a
    move-object/from16 v13, p0

    move/from16 v12, p6

    move/from16 v20, v2

    move/from16 v31, v7

    move-object/from16 v29, v9

    move/from16 v28, v15

    move/from16 v11, v17

    move/from16 v15, v36

    move/from16 v25, v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v14, v40

    move/from16 v36, v42

    move/from16 v17, v4

    move v9, v6

    move/from16 v6, v19

    move-object/from16 v19, v24

    goto/16 :goto_a
.end method

.method zint_add_mul_small([II[IIII)V
    .locals 9
    .param p1, "srcx"    # [I
    .param p2, "x"    # I
    .param p3, "srcy"    # [I
    .param p4, "y"    # I
    .param p5, "len"    # I
    .param p6, "s"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcx",
            "x",
            "srcy",
            "y",
            "len",
            "s"
        }
    .end annotation

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "cc":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, p5, :cond_0

    .line 655
    add-int v2, p2, v1

    aget v2, p1, v2

    .line 656
    .local v2, "xw":I
    add-int v3, p4, v1

    aget v3, p3, v3

    .line 657
    .local v3, "yw":I
    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    invoke-direct {p0, p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v6

    mul-long v4, v4, v6

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 658
    .local v4, "z":J
    add-int v6, p2, v1

    long-to-int v7, v4

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    aput v7, p1, v6

    .line 659
    const/16 v6, 0x1f

    ushr-long v6, v4, v6

    long-to-int v0, v6

    .line 650
    .end local v2    # "xw":I
    .end local v3    # "yw":I
    .end local v4    # "z":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    :cond_0
    add-int v2, p2, p5

    aput v0, p1, v2

    .line 662
    return-void
.end method

.method zint_add_scaled_mul_small([III[IIIIII)V
    .locals 16
    .param p1, "srcx"    # [I
    .param p2, "x"    # I
    .param p3, "xlen"    # I
    .param p4, "srcy"    # [I
    .param p5, "y"    # I
    .param p6, "ylen"    # I
    .param p7, "k"    # I
    .param p8, "sch"    # I
    .param p9, "scl"    # I
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
            "srcx",
            "x",
            "xlen",
            "srcy",
            "y",
            "ylen",
            "k",
            "sch",
            "scl"
        }
    .end annotation

    .line 1336
    move-object/from16 v0, p0

    move/from16 v1, p6

    if-nez v1, :cond_0

    .line 1338
    return-void

    .line 1341
    :cond_0
    add-int v2, p5, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, p4, v2

    ushr-int/lit8 v2, v2, 0x1e

    neg-int v2, v2

    ushr-int/lit8 v2, v2, 0x1

    .line 1342
    .local v2, "ysign":I
    const/4 v3, 0x0

    .line 1343
    .local v3, "tw":I
    const/4 v4, 0x0

    .line 1344
    .local v4, "cc":I
    move/from16 v5, p8

    .local v5, "u":I
    :goto_0
    move/from16 v6, p3

    if-ge v5, v6, :cond_2

    .line 1353
    sub-int v7, v5, p8

    .line 1354
    .local v7, "v":I
    if-ge v7, v1, :cond_1

    add-int v8, p5, v7

    aget v8, p4, v8

    goto :goto_1

    :cond_1
    move v8, v2

    .line 1355
    .local v8, "wy":I
    :goto_1
    shl-int v9, v8, p9

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    or-int/2addr v9, v3

    .line 1356
    .local v9, "wys":I
    rsub-int/lit8 v11, p9, 0x1f

    ushr-int v3, v8, v11

    .line 1361
    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v11

    move/from16 v13, p7

    int-to-long v14, v13

    mul-long v11, v11, v14

    add-int v14, p2, v5

    aget v14, p1, v14

    invoke-direct {v0, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v14

    add-long/2addr v11, v14

    int-to-long v14, v4

    add-long/2addr v11, v14

    .line 1362
    .local v11, "z":J
    add-int v14, p2, v5

    long-to-int v15, v11

    and-int/2addr v10, v15

    aput v10, p1, v14

    .line 1374
    const/16 v10, 0x1f

    ushr-long v14, v11, v10

    long-to-int v10, v14

    .line 1375
    .local v10, "ccu":I
    move v4, v10

    .line 1344
    .end local v7    # "v":I
    .end local v8    # "wy":I
    .end local v9    # "wys":I
    .end local v10    # "ccu":I
    .end local v11    # "z":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1377
    :cond_2
    move/from16 v13, p7

    return-void
.end method

.method zint_bezout([II[II[II[III[II)I
    .locals 53
    .param p1, "srcu"    # [I
    .param p2, "u"    # I
    .param p3, "srcv"    # [I
    .param p4, "v"    # I
    .param p5, "srcx"    # [I
    .param p6, "x"    # I
    .param p7, "srcy"    # [I
    .param p8, "y"    # I
    .param p9, "len"    # I
    .param p10, "srctmp"    # [I
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
            "srcu",
            "u",
            "srcv",
            "v",
            "srcx",
            "x",
            "srcy",
            "y",
            "len",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 1105
    move-object/from16 v0, p0

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v1, p7

    move/from16 v2, p8

    move/from16 v7, p9

    move-object/from16 v3, p10

    const/4 v4, 0x0

    if-nez v7, :cond_0

    .line 1107
    return v4

    .line 1114
    :cond_0
    move/from16 v16, p2

    .line 1115
    .local v16, "u0":I
    move/from16 v17, p4

    .line 1116
    .local v17, "v0":I
    move/from16 v5, p11

    .line 1117
    .local v5, "u1":I
    add-int v6, v5, v7

    .line 1118
    .local v6, "v1":I
    add-int v8, v6, v7

    .line 1119
    .local v8, "a":I
    const/4 v9, 0x0

    add-int v4, v8, v7

    .line 1124
    .local v4, "b":I
    add-int/lit8 v10, v15, 0x0

    aget v10, v14, v10

    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v18

    .line 1125
    .local v18, "x0i":I
    add-int/lit8 v10, v2, 0x0

    aget v10, v1, v10

    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v19

    .line 1134
    .local v19, "y0i":I
    invoke-static {v14, v15, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1136
    invoke-static {v1, v2, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1138
    add-int/lit8 v10, v16, 0x0

    const/16 v20, 0x1

    aput v20, p1, v10

    .line 1141
    add-int/lit8 v10, v17, 0x0

    aput v9, p3, v10

    .line 1142
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_1

    .line 1144
    add-int v11, v16, v10

    aput v9, p1, v11

    .line 1145
    add-int v11, v17, v10

    aput v9, p3, v11

    .line 1142
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1148
    .end local v10    # "i":I
    :cond_1
    invoke-static {v1, v2, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1150
    invoke-static {v14, v15, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1152
    add-int/lit8 v9, v6, 0x0

    aget v10, v3, v9

    add-int/lit8 v10, v10, -0x1

    aput v10, v3, v9

    .line 1157
    mul-int/lit8 v9, v7, 0x3e

    const/16 v10, 0x1e

    add-int/2addr v9, v10

    .local v9, "num":I
    :goto_1
    const/16 v11, 0x1f

    if-lt v9, v10, :cond_4

    .line 1174
    const/4 v12, -0x1

    .line 1175
    .local v12, "c0":I
    const/4 v13, -0x1

    .line 1176
    .local v13, "c1":I
    const/16 v21, 0x0

    .line 1177
    .local v21, "a0":I
    const/16 v22, 0x0

    .line 1178
    .local v22, "a1":I
    const/16 v23, 0x0

    .line 1179
    .local v23, "b0":I
    const/16 v24, 0x0

    .line 1180
    .local v24, "b1":I
    move/from16 v25, p9

    move/from16 v52, v21

    move/from16 v21, v12

    move v12, v13

    move/from16 v13, v52

    .line 1181
    .local v12, "c1":I
    .local v13, "a0":I
    .local v21, "c0":I
    .local v25, "j":I
    :goto_2
    add-int/lit8 v26, v25, -0x1

    .end local v25    # "j":I
    .local v26, "j":I
    if-lez v25, :cond_2

    .line 1185
    add-int v25, v8, v26

    aget v25, v3, v25

    .line 1186
    .local v25, "aw":I
    add-int v27, v4, v26

    aget v27, v3, v27

    .line 1187
    .local v27, "bw":I
    xor-int v28, v13, v25

    and-int v28, v28, v21

    xor-int v13, v13, v28

    .line 1188
    xor-int v28, v22, v25

    and-int v28, v28, v12

    xor-int v22, v22, v28

    .line 1189
    xor-int v28, v23, v27

    and-int v28, v28, v21

    xor-int v23, v23, v28

    .line 1190
    xor-int v28, v24, v27

    and-int v28, v28, v12

    xor-int v24, v24, v28

    .line 1191
    move/from16 v12, v21

    .line 1192
    or-int v28, v25, v27

    const v29, 0x7fffffff

    add-int v28, v28, v29

    ushr-int/lit8 v28, v28, 0x1f

    add-int/lit8 v28, v28, -0x1

    and-int v21, v21, v28

    .line 1193
    .end local v25    # "aw":I
    .end local v27    # "bw":I
    move/from16 v25, v26

    goto :goto_2

    .line 1201
    :cond_2
    and-int v25, v13, v12

    const/16 v27, 0x1f

    or-int v11, v22, v25

    .line 1202
    .end local v22    # "a1":I
    .local v11, "a1":I
    not-int v10, v12

    and-int/2addr v10, v13

    .line 1203
    .end local v13    # "a0":I
    .local v10, "a0":I
    and-int v13, v23, v12

    or-int v13, v24, v13

    .line 1204
    .end local v24    # "b1":I
    .local v13, "b1":I
    not-int v1, v12

    and-int v1, v23, v1

    .line 1205
    .end local v23    # "b0":I
    .local v1, "b0":I
    invoke-direct {v0, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v23

    shl-long v23, v23, v27

    invoke-direct {v0, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v28

    add-long v23, v23, v28

    .line 1206
    .local v23, "a_hi":J
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v28

    shl-long v28, v28, v27

    invoke-direct {v0, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v30

    add-long v28, v28, v30

    .line 1207
    .local v28, "b_hi":J
    add-int/lit8 v25, v8, 0x0

    aget v25, v3, v25

    .line 1208
    .local v25, "a_lo":I
    add-int/lit8 v30, v4, 0x0

    aget v30, v3, v30

    .line 1219
    .local v30, "b_lo":I
    const-wide/16 v31, 0x1

    .line 1220
    .local v31, "pa":J
    const-wide/16 v33, 0x0

    .line 1221
    .local v33, "pb":J
    const-wide/16 v35, 0x0

    .line 1222
    .local v35, "qa":J
    const-wide/16 v37, 0x1

    .line 1223
    .local v37, "qb":J
    const/16 v39, 0x0

    move/from16 v14, v39

    .local v14, "i":I
    :goto_3
    move/from16 v39, v1

    const/16 v1, 0x1f

    .end local v1    # "b0":I
    .local v39, "b0":I
    if-ge v14, v1, :cond_3

    .line 1243
    sub-long v40, v28, v23

    .line 1244
    .local v40, "rz":J
    xor-long v42, v23, v28

    xor-long v44, v23, v40

    and-long v42, v42, v44

    xor-long v42, v40, v42

    const/16 v1, 0x3f

    ushr-long v1, v42, v1

    long-to-int v2, v1

    .line 1257
    .local v2, "rt":I
    shr-int v1, v25, v14

    and-int/lit8 v1, v1, 0x1

    .line 1258
    .local v1, "oa":I
    shr-int v42, v30, v14

    and-int/lit8 v42, v42, 0x1

    .line 1259
    .local v42, "ob":I
    and-int v43, v1, v42

    move/from16 v44, v1

    .end local v1    # "oa":I
    .local v44, "oa":I
    and-int v1, v43, v2

    .line 1260
    .local v1, "cAB":I
    and-int v43, v44, v42

    not-int v3, v2

    and-int v3, v43, v3

    .line 1261
    .local v3, "cBA":I
    xor-int/lit8 v43, v44, 0x1

    move/from16 v45, v2

    .end local v2    # "rt":I
    .local v45, "rt":I
    or-int v2, v1, v43

    .line 1266
    .local v2, "cA":I
    move/from16 v43, v4

    .end local v4    # "b":I
    .local v43, "b":I
    neg-int v4, v1

    and-int v4, v30, v4

    sub-int v25, v25, v4

    .line 1267
    move/from16 v46, v5

    .end local v5    # "u1":I
    .local v46, "u1":I
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    neg-long v4, v4

    and-long v4, v28, v4

    sub-long v23, v23, v4

    .line 1268
    int-to-long v4, v1

    neg-long v4, v4

    and-long v4, v35, v4

    sub-long v31, v31, v4

    .line 1269
    int-to-long v4, v1

    neg-long v4, v4

    and-long v4, v37, v4

    sub-long v33, v33, v4

    .line 1270
    neg-int v4, v3

    and-int v4, v25, v4

    sub-int v30, v30, v4

    .line 1271
    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    neg-long v4, v4

    and-long v4, v23, v4

    sub-long v28, v28, v4

    .line 1272
    int-to-long v4, v3

    neg-long v4, v4

    and-long v4, v31, v4

    sub-long v35, v35, v4

    .line 1273
    int-to-long v4, v3

    neg-long v4, v4

    and-long v4, v33, v4

    sub-long v37, v37, v4

    .line 1278
    add-int/lit8 v4, v2, -0x1

    and-int v4, v25, v4

    add-int v25, v25, v4

    .line 1279
    int-to-long v4, v2

    const-wide/16 v47, 0x1

    sub-long v4, v4, v47

    and-long v4, v31, v4

    add-long v31, v31, v4

    .line 1280
    int-to-long v4, v2

    sub-long v4, v4, v47

    and-long v4, v33, v4

    add-long v33, v33, v4

    .line 1281
    shr-long v4, v23, v20

    xor-long v4, v23, v4

    move/from16 v49, v3

    move-wide/from16 v50, v4

    .end local v3    # "cBA":I
    .local v49, "cBA":I
    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v3

    neg-long v3, v3

    and-long v3, v50, v3

    xor-long v23, v23, v3

    .line 1282
    neg-int v3, v2

    and-int v3, v30, v3

    add-int v30, v30, v3

    .line 1283
    int-to-long v3, v2

    neg-long v3, v3

    and-long v3, v35, v3

    add-long v35, v35, v3

    .line 1284
    int-to-long v3, v2

    neg-long v3, v3

    and-long v3, v37, v3

    add-long v37, v37, v3

    .line 1285
    shr-long v3, v28, v20

    xor-long v3, v28, v3

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v50

    sub-long v50, v50, v47

    and-long v3, v3, v50

    xor-long v28, v28, v3

    .line 1223
    .end local v1    # "cAB":I
    .end local v2    # "cA":I
    .end local v40    # "rz":J
    .end local v42    # "ob":I
    .end local v44    # "oa":I
    .end local v45    # "rt":I
    .end local v49    # "cBA":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p8

    move-object/from16 v3, p10

    move/from16 v1, v39

    move/from16 v4, v43

    move/from16 v5, v46

    const/16 v27, 0x1f

    goto/16 :goto_3

    .line 1294
    .end local v43    # "b":I
    .end local v46    # "u1":I
    .restart local v4    # "b":I
    .restart local v5    # "u1":I
    :cond_3
    move/from16 v43, v4

    move/from16 v46, v5

    .end local v4    # "b":I
    .end local v5    # "u1":I
    .restart local v43    # "b":I
    .restart local v46    # "u1":I
    move-object/from16 v3, p10

    move-object/from16 v1, p10

    move/from16 v22, v6

    move v5, v7

    move v2, v8

    move/from16 v27, v12

    move-wide/from16 v6, v31

    move/from16 v31, v9

    move/from16 v32, v11

    move-wide/from16 v8, v33

    move/from16 v33, v10

    move/from16 v34, v13

    move-wide/from16 v10, v35

    move-wide/from16 v12, v37

    const/16 v35, 0x1e

    .end local v9    # "num":I
    .end local v11    # "a1":I
    .end local v13    # "b1":I
    .end local v35    # "qa":J
    .end local v37    # "qb":J
    .end local v43    # "b":I
    .local v2, "a":I
    .restart local v4    # "b":I
    .local v6, "pa":J
    .local v8, "pb":J
    .local v10, "qa":J
    .local v12, "qb":J
    .local v22, "v1":I
    .local v27, "c1":I
    .local v31, "num":I
    .local v32, "a1":I
    .local v33, "a0":I
    .local v34, "b1":I
    invoke-virtual/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_co_reduce([II[IIIJJJJ)I

    move-result v36

    .line 1295
    move/from16 v37, v2

    .end local v2    # "a":I
    .end local v4    # "b":I
    .local v36, "r":I
    .local v37, "a":I
    .restart local v43    # "b":I
    add-long v0, v6, v6

    and-int/lit8 v2, v36, 0x1

    int-to-long v2, v2

    neg-long v2, v2

    and-long/2addr v0, v2

    sub-long v0, v6, v0

    .line 1296
    .end local v6    # "pa":J
    .local v0, "pa":J
    add-long v2, v8, v8

    and-int/lit8 v4, v36, 0x1

    int-to-long v4, v4

    neg-long v4, v4

    and-long/2addr v2, v4

    sub-long v2, v8, v2

    .line 1297
    .end local v8    # "pb":J
    .local v2, "pb":J
    add-long v4, v10, v10

    ushr-int/lit8 v6, v36, 0x1

    int-to-long v6, v6

    neg-long v6, v6

    and-long/2addr v4, v6

    sub-long v4, v10, v4

    .line 1298
    .end local v10    # "qa":J
    .local v4, "qa":J
    add-long v6, v12, v12

    ushr-int/lit8 v8, v36, 0x1

    int-to-long v8, v8

    neg-long v8, v8

    and-long/2addr v6, v8

    sub-long v6, v12, v6

    .line 1299
    .end local v12    # "qb":J
    .local v6, "qb":J
    move-wide v9, v0

    move-wide v11, v2

    move/from16 v2, v16

    move/from16 v8, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p10

    move-wide v15, v6

    move/from16 v19, v14

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide v13, v4

    move/from16 v4, v46

    move-object/from16 v5, p7

    .end local v0    # "pa":J
    .end local v6    # "qb":J
    .end local v14    # "i":I
    .end local v16    # "u0":I
    .end local v46    # "u1":I
    .local v2, "u0":I
    .local v4, "u1":I
    .local v8, "y0i":I
    .local v9, "pa":J
    .local v11, "pb":J
    .local v13, "qa":J
    .local v15, "qb":J
    .local v19, "i":I
    invoke-virtual/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_co_reduce_mod([II[II[IIIIJJJJ)V

    .line 1300
    move/from16 v38, v2

    move/from16 v40, v8

    .end local v2    # "u0":I
    .end local v4    # "u1":I
    .end local v8    # "y0i":I
    .local v38, "u0":I
    .local v40, "y0i":I
    .restart local v46    # "u1":I
    move-object/from16 v1, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v2, v17

    move/from16 v8, v18

    move/from16 v4, v22

    .end local v17    # "v0":I
    .end local v18    # "x0i":I
    .end local v22    # "v1":I
    .local v2, "v0":I
    .local v4, "v1":I
    .local v8, "x0i":I
    invoke-virtual/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_co_reduce_mod([II[II[IIIIJJJJ)V

    .line 1157
    .end local v9    # "pa":J
    .end local v11    # "pb":J
    .end local v13    # "qa":J
    .end local v15    # "qb":J
    .end local v19    # "i":I
    .end local v21    # "c0":I
    .end local v23    # "a_hi":J
    .end local v25    # "a_lo":I
    .end local v27    # "c1":I
    .end local v28    # "b_hi":J
    .end local v30    # "b_lo":I
    .end local v32    # "a1":I
    .end local v33    # "a0":I
    .end local v34    # "b1":I
    .end local v36    # "r":I
    .end local v39    # "b0":I
    add-int/lit8 v9, v31, -0x1e

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v1, p7

    move v6, v4

    move/from16 v8, v37

    move/from16 v16, v38

    move/from16 v19, v40

    move/from16 v4, v43

    move/from16 v5, v46

    const/16 v10, 0x1e

    move/from16 v2, p8

    .end local v31    # "num":I
    .local v9, "num":I
    goto/16 :goto_1

    .line 1309
    .end local v2    # "v0":I
    .end local v26    # "j":I
    .end local v37    # "a":I
    .end local v38    # "u0":I
    .end local v40    # "y0i":I
    .end local v43    # "b":I
    .end local v46    # "u1":I
    .local v4, "b":I
    .restart local v5    # "u1":I
    .local v6, "v1":I
    .local v8, "a":I
    .restart local v16    # "u0":I
    .restart local v17    # "v0":I
    .restart local v18    # "x0i":I
    .local v19, "y0i":I
    :cond_4
    move/from16 v43, v4

    move/from16 v46, v5

    move v4, v6

    move/from16 v37, v8

    move/from16 v31, v9

    move/from16 v38, v16

    move/from16 v2, v17

    move/from16 v8, v18

    move/from16 v40, v19

    .end local v5    # "u1":I
    .end local v6    # "v1":I
    .end local v9    # "num":I
    .end local v16    # "u0":I
    .end local v17    # "v0":I
    .end local v18    # "x0i":I
    .end local v19    # "y0i":I
    .restart local v2    # "v0":I
    .local v4, "v1":I
    .local v8, "x0i":I
    .restart local v31    # "num":I
    .restart local v37    # "a":I
    .restart local v38    # "u0":I
    .restart local v40    # "y0i":I
    .restart local v43    # "b":I
    .restart local v46    # "u1":I
    add-int/lit8 v0, v37, 0x0

    aget v0, p10, v0

    xor-int/lit8 v0, v0, 0x1

    .line 1310
    .local v0, "rc":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_4
    if-ge v1, v7, :cond_5

    .line 1312
    add-int v3, v37, v1

    aget v3, p10, v3

    or-int/2addr v0, v3

    .line 1310
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1314
    :cond_5
    neg-int v3, v0

    or-int/2addr v3, v0

    const/16 v27, 0x1f

    ushr-int/lit8 v3, v3, 0x1f

    rsub-int/lit8 v20, v3, 0x1

    add-int/lit8 v3, p6, 0x0

    aget v3, p5, v3

    and-int v3, v20, v3

    add-int/lit8 v5, p8, 0x0

    aget v5, p7, v5

    and-int/2addr v3, v5

    return v3
.end method

.method zint_co_reduce([II[IIIJJJJ)I
    .locals 18
    .param p1, "srca"    # [I
    .param p2, "a"    # I
    .param p3, "srcb"    # [I
    .param p4, "b"    # I
    .param p5, "len"    # I
    .param p6, "xa"    # J
    .param p8, "xb"    # J
    .param p10, "ya"    # J
    .param p12, "yb"    # J
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
            "srca",
            "a",
            "srcb",
            "b",
            "len",
            "xa",
            "xb",
            "ya",
            "yb"
        }
    .end annotation

    .line 841
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p5

    const-wide/16 v6, 0x0

    .line 842
    .local v6, "cca":J
    const-wide/16 v8, 0x0

    .line 843
    .local v8, "ccb":J
    const/4 v10, 0x0

    .local v10, "u":I
    :goto_0
    if-ge v10, v5, :cond_1

    .line 848
    add-int v11, v2, v10

    aget v11, v1, v11

    .line 849
    .local v11, "wa":I
    add-int v12, p4, v10

    aget v12, p3, v12

    .line 850
    .local v12, "wb":I
    int-to-long v13, v11

    mul-long v13, v13, p6

    move-wide v15, v13

    int-to-long v13, v12

    mul-long v13, v13, p8

    add-long/2addr v13, v15

    add-long/2addr v13, v6

    .line 851
    .local v13, "za":J
    int-to-long v3, v11

    mul-long v3, v3, p10

    move-wide v15, v3

    int-to-long v3, v12

    mul-long v3, v3, p12

    add-long/2addr v3, v15

    add-long/2addr v3, v8

    .line 852
    .local v3, "zb":J
    if-lez v10, :cond_0

    .line 854
    add-int v15, v2, v10

    add-int/lit8 v15, v15, -0x1

    move/from16 v16, v10

    .end local v10    # "u":I
    .local v16, "u":I
    long-to-int v10, v13

    const v17, 0x7fffffff

    and-int v10, v10, v17

    aput v10, v1, v15

    .line 855
    add-int v10, p4, v16

    add-int/lit8 v10, v10, -0x1

    long-to-int v15, v3

    and-int v15, v15, v17

    aput v15, p3, v10

    goto :goto_1

    .line 852
    .end local v16    # "u":I
    .restart local v10    # "u":I
    :cond_0
    move/from16 v16, v10

    .line 858
    .end local v10    # "u":I
    .restart local v16    # "u":I
    :goto_1
    const/16 v10, 0x1f

    shr-long v6, v13, v10

    .line 860
    shr-long v8, v3, v10

    .line 843
    .end local v3    # "zb":J
    .end local v11    # "wa":I
    .end local v12    # "wb":I
    .end local v13    # "za":J
    add-int/lit8 v10, v16, 0x1

    .end local v16    # "u":I
    .restart local v10    # "u":I
    goto :goto_0

    .line 862
    :cond_1
    move/from16 v16, v10

    .end local v10    # "u":I
    .restart local v16    # "u":I
    add-int v3, v2, v5

    add-int/lit8 v3, v3, -0x1

    long-to-int v4, v6

    aput v4, v1, v3

    .line 863
    add-int v3, p4, v5

    add-int/lit8 v3, v3, -0x1

    long-to-int v4, v8

    aput v4, p3, v3

    .line 865
    const/16 v3, 0x3f

    ushr-long v10, v6, v3

    long-to-int v4, v10

    .line 866
    .local v4, "nega":I
    ushr-long v10, v8, v3

    long-to-int v3, v10

    .line 867
    .local v3, "negb":I
    invoke-virtual {v0, v1, v2, v5, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_negate([IIII)V

    .line 868
    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual {v0, v10, v11, v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_negate([IIII)V

    .line 869
    shl-int/lit8 v12, v3, 0x1

    or-int/2addr v12, v4

    return v12
.end method

.method zint_co_reduce_mod([II[II[IIIIJJJJ)V
    .locals 23
    .param p1, "srca"    # [I
    .param p2, "a"    # I
    .param p3, "srcb"    # [I
    .param p4, "b"    # I
    .param p5, "srcm"    # [I
    .param p6, "m"    # I
    .param p7, "len"    # I
    .param p8, "m0i"    # I
    .param p9, "xa"    # J
    .param p11, "xb"    # J
    .param p13, "ya"    # J
    .param p15, "yb"    # J
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
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcb",
            "b",
            "srcm",
            "m",
            "len",
            "m0i",
            "xa",
            "xb",
            "ya",
            "yb"
        }
    .end annotation

    .line 936
    move-object/from16 v0, p0

    move/from16 v3, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-wide/from16 v11, p13

    move-wide/from16 v13, p15

    const-wide/16 v1, 0x0

    .line 937
    .local v1, "cca":J
    const-wide/16 v4, 0x0

    .line 938
    .local v4, "ccb":J
    add-int/lit8 v6, p2, 0x0

    aget v6, p1, v6

    long-to-int v15, v7

    mul-int v6, v6, v15

    add-int/lit8 v15, p4, 0x0

    aget v15, p3, v15

    move-wide/from16 v16, v1

    .end local v1    # "cca":J
    .local v16, "cca":J
    long-to-int v1, v9

    mul-int v15, v15, v1

    add-int/2addr v6, v15

    mul-int v6, v6, p8

    const v1, 0x7fffffff

    and-int v15, v6, v1

    .line 939
    .local v15, "fa":I
    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    long-to-int v6, v11

    mul-int v2, v2, v6

    add-int/lit8 v6, p4, 0x0

    aget v6, p3, v6

    const v18, 0x7fffffff

    long-to-int v1, v13

    mul-int v6, v6, v1

    add-int/2addr v2, v6

    mul-int v2, v2, p8

    and-int v1, v2, v18

    .line 940
    .local v1, "fb":I
    const/4 v2, 0x0

    move-wide v7, v4

    move-wide/from16 v4, v16

    .end local v16    # "cca":J
    .local v2, "u":I
    .local v4, "cca":J
    .local v7, "ccb":J
    :goto_0
    if-ge v2, v3, :cond_1

    .line 945
    add-int v6, p2, v2

    aget v6, p1, v6

    .line 946
    .local v6, "wa":I
    add-int v16, p4, v2

    move/from16 v17, v2

    .end local v2    # "u":I
    .local v17, "u":I
    aget v2, p3, v16

    .line 947
    .local v2, "wb":I
    int-to-long v9, v6

    mul-long v9, v9, p9

    move-wide/from16 v19, v9

    int-to-long v9, v2

    mul-long v9, v9, p11

    add-long v9, v19, v9

    add-int v16, p6, v17

    aget v3, p5, v16

    move-wide/from16 v19, v9

    int-to-long v9, v3

    .line 948
    invoke-direct {v0, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v21

    mul-long v9, v9, v21

    add-long v9, v19, v9

    add-long/2addr v9, v4

    .line 949
    .local v9, "za":J
    int-to-long v11, v6

    mul-long v11, v11, p13

    move-wide/from16 v19, v11

    int-to-long v11, v2

    mul-long v11, v11, v13

    add-long v11, v19, v11

    add-int v3, p6, v17

    aget v3, p5, v3

    move/from16 v16, v2

    .end local v2    # "wb":I
    .local v16, "wb":I
    int-to-long v2, v3

    .line 950
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v19

    mul-long v2, v2, v19

    add-long/2addr v11, v2

    add-long/2addr v11, v7

    .line 951
    .local v11, "zb":J
    if-lez v17, :cond_0

    .line 953
    add-int v2, p2, v17

    add-int/lit8 v2, v2, -0x1

    long-to-int v3, v9

    and-int v3, v3, v18

    aput v3, p1, v2

    .line 954
    add-int v2, p4, v17

    add-int/lit8 v2, v2, -0x1

    long-to-int v3, v11

    and-int v3, v3, v18

    aput v3, p3, v2

    .line 956
    :cond_0
    const/16 v2, 0x1f

    shr-long v4, v9, v2

    .line 957
    shr-long v7, v11, v2

    .line 940
    .end local v6    # "wa":I
    .end local v9    # "za":J
    .end local v11    # "zb":J
    .end local v16    # "wb":I
    add-int/lit8 v2, v17, 0x1

    move/from16 v3, p7

    move-wide/from16 v9, p11

    move-wide/from16 v11, p13

    .end local v17    # "u":I
    .local v2, "u":I
    goto :goto_0

    .line 959
    :cond_1
    move/from16 v17, v2

    .end local v2    # "u":I
    .restart local v17    # "u":I
    add-int v2, p2, p7

    add-int/lit8 v2, v2, -0x1

    long-to-int v3, v4

    aput v3, p1, v2

    .line 960
    add-int v2, p4, p7

    add-int/lit8 v2, v2, -0x1

    long-to-int v3, v7

    aput v3, p3, v2

    .line 970
    const/16 v9, 0x3f

    ushr-long v2, v4, v9

    long-to-int v6, v2

    move/from16 v2, p2

    move/from16 v3, p7

    move v10, v1

    move-wide v11, v4

    move-object/from16 v1, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    .end local v1    # "fb":I
    .end local v4    # "cca":J
    .local v10, "fb":I
    .local v11, "cca":J
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_finish_mod([III[III)V

    .line 971
    ushr-long v0, v7, v9

    long-to-int v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_finish_mod([III[III)V

    .line 972
    return-void
.end method

.method zint_finish_mod([III[III)V
    .locals 8
    .param p1, "srca"    # [I
    .param p2, "a"    # I
    .param p3, "len"    # I
    .param p4, "srcm"    # [I
    .param p5, "m"    # I
    .param p6, "neg"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "len",
            "srcm",
            "m",
            "neg"
        }
    .end annotation

    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "cc":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 895
    add-int v2, p2, v1

    aget v2, p1, v2

    add-int v3, p5, v1

    aget v3, p4, v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    ushr-int/lit8 v0, v2, 0x1f

    .line 893
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    :cond_0
    neg-int v2, p6

    ushr-int/lit8 v2, v2, 0x1

    .line 908
    .local v2, "xm":I
    rsub-int/lit8 v3, v0, 0x1

    or-int/2addr v3, p6

    neg-int v3, v3

    .line 909
    .local v3, "ym":I
    move v0, p6

    .line 910
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_1

    .line 914
    add-int v4, p2, v1

    aget v4, p1, v4

    .line 915
    .local v4, "aw":I
    add-int v5, p5, v1

    aget v5, p4, v5

    xor-int/2addr v5, v2

    and-int/2addr v5, v3

    .line 916
    .local v5, "mw":I
    sub-int v6, v4, v5

    sub-int/2addr v6, v0

    .line 917
    .end local v4    # "aw":I
    .local v6, "aw":I
    add-int v4, p2, v1

    const v7, 0x7fffffff

    and-int/2addr v7, v6

    aput v7, p1, v4

    .line 918
    ushr-int/lit8 v0, v6, 0x1f

    .line 910
    .end local v5    # "mw":I
    .end local v6    # "aw":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 920
    :cond_1
    return-void
.end method

.method zint_mod_small_signed([IIIIIII)I
    .locals 3
    .param p1, "srcd"    # [I
    .param p2, "d"    # I
    .param p3, "dlen"    # I
    .param p4, "p"    # I
    .param p5, "p0i"    # I
    .param p6, "R2"    # I
    .param p7, "Rx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcd",
            "d",
            "dlen",
            "p",
            "p0i",
            "R2",
            "Rx"
        }
    .end annotation

    .line 629
    if-nez p3, :cond_0

    .line 631
    const/4 v0, 0x0

    return v0

    .line 633
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_unsigned([IIIIII)I

    move-result v0

    .line 634
    move v1, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "srcd":[I
    .local v0, "z":I
    .local v1, "R2":I
    .local p2, "srcd":[I
    .local p3, "d":I
    .local p4, "dlen":I
    .local p5, "p":I
    .local p6, "p0i":I
    add-int v2, p3, p4

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1e

    neg-int v2, v2

    and-int/2addr v2, p7

    invoke-virtual {p0, v0, v2, p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v0

    .line 635
    return v0
.end method

.method zint_mod_small_unsigned([IIIIII)I
    .locals 4
    .param p1, "srcd"    # [I
    .param p2, "d"    # I
    .param p3, "dlen"    # I
    .param p4, "p"    # I
    .param p5, "p0i"    # I
    .param p6, "R2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcd",
            "d",
            "dlen",
            "p",
            "p0i",
            "R2"
        }
    .end annotation

    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "x":I
    move v1, p3

    .line 608
    .local v1, "u":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "u":I
    .local v2, "u":I
    if-lez v1, :cond_0

    .line 612
    invoke-virtual {p0, v0, p6, p4, p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    .line 613
    add-int v1, p2, v2

    aget v1, p1, v1

    sub-int/2addr v1, p4

    .line 614
    .local v1, "w":I
    ushr-int/lit8 v3, v1, 0x1f

    neg-int v3, v3

    and-int/2addr v3, p4

    add-int/2addr v1, v3

    .line 615
    invoke-virtual {p0, v0, v1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v0

    .line 616
    .end local v1    # "w":I
    move v1, v2

    goto :goto_0

    .line 617
    :cond_0
    return v0
.end method

.method zint_mul_small([IIII)I
    .locals 7
    .param p1, "srcm"    # [I
    .param p2, "m"    # I
    .param p3, "mlen"    # I
    .param p4, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcm",
            "m",
            "mlen",
            "x"
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "cc":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 578
    add-int v2, p2, v1

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v2

    invoke-direct {p0, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    mul-long v2, v2, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 579
    .local v2, "z":J
    add-int v4, p2, v1

    long-to-int v5, v2

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    aput v5, p1, v4

    .line 580
    const/16 v4, 0x1f

    shr-long v4, v2, v4

    long-to-int v0, v4

    .line 574
    .end local v2    # "z":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    :cond_0
    return v0
.end method

.method zint_negate([IIII)V
    .locals 6
    .param p1, "srca"    # [I
    .param p2, "a"    # I
    .param p3, "len"    # I
    .param p4, "ctl"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "len",
            "ctl"
        }
    .end annotation

    .line 807
    move v0, p4

    .line 808
    .local v0, "cc":I
    neg-int v1, p4

    ushr-int/lit8 v1, v1, 0x1

    .line 809
    .local v1, "m":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 813
    add-int v3, p2, v2

    aget v3, p1, v3

    .line 814
    .local v3, "aw":I
    xor-int v4, v3, v1

    add-int/2addr v4, v0

    .line 815
    .end local v3    # "aw":I
    .local v4, "aw":I
    add-int v3, p2, v2

    const v5, 0x7fffffff

    and-int/2addr v5, v4

    aput v5, p1, v3

    .line 816
    ushr-int/lit8 v0, v4, 0x1f

    .line 809
    .end local v4    # "aw":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    :cond_0
    return-void
.end method

.method zint_norm_zero([II[III)V
    .locals 11
    .param p1, "srcx"    # [I
    .param p2, "x"    # I
    .param p3, "srcp"    # [I
    .param p4, "p"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcx",
            "x",
            "srcp",
            "p",
            "len"
        }
    .end annotation

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "r":I
    const/4 v1, 0x0

    .line 681
    .local v1, "bb":I
    move/from16 v2, p5

    .line 682
    .local v2, "u":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "u":I
    .local v3, "u":I
    if-lez v2, :cond_0

    .line 690
    add-int v2, p2, v3

    aget v2, p1, v2

    .line 691
    .local v2, "wx":I
    add-int v4, p4, v3

    aget v4, p3, v4

    ushr-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v1, 0x1e

    or-int/2addr v4, v5

    .line 692
    .local v4, "wp":I
    add-int v5, p4, v3

    aget v5, p3, v5

    and-int/lit8 v1, v5, 0x1

    .line 698
    sub-int v5, v4, v2

    .line 699
    .local v5, "cc":I
    neg-int v6, v5

    ushr-int/lit8 v6, v6, 0x1f

    ushr-int/lit8 v7, v5, 0x1f

    neg-int v7, v7

    or-int v5, v6, v7

    .line 705
    and-int/lit8 v6, v0, 0x1

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v5

    or-int/2addr v0, v6

    .line 706
    .end local v2    # "wx":I
    .end local v4    # "wp":I
    .end local v5    # "cc":I
    move v2, v3

    goto :goto_0

    .line 713
    :cond_0
    ushr-int/lit8 v10, v0, 0x1f

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_sub([II[IIII)I

    .line 714
    return-void
.end method

.method zint_one_to_plain([II)I
    .locals 2
    .param p1, "srcx"    # [I
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "srcx",
            "x"
        }
    .end annotation

    .line 1431
    add-int/lit8 v0, p2, 0x0

    aget v0, p1, v0

    .line 1432
    .local v0, "w":I
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 1433
    return v0
.end method

.method zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V
    .locals 16
    .param p1, "srcxx"    # [I
    .param p2, "xx"    # I
    .param p3, "xlen"    # I
    .param p4, "xstride"    # I
    .param p5, "num"    # I
    .param p6, "primes"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;
    .param p7, "normalize_signed"    # I
    .param p8, "srctmp"    # [I
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
            "srcxx",
            "xx",
            "xlen",
            "xstride",
            "num",
            "primes",
            "normalize_signed",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 737
    move-object/from16 v0, p0

    move/from16 v7, p5

    add-int/lit8 v1, p9, 0x0

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    aput v2, p8, v1

    .line 738
    const/4 v1, 0x1

    move v3, v1

    .local v3, "u":I
    :goto_0
    move/from16 v8, p3

    if-ge v3, v8, :cond_1

    .line 752
    aget-object v1, p6, v3

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    .line 753
    .local v4, "p":I
    aget-object v1, p6, v3

    iget v9, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->s:I

    .line 754
    .local v9, "s":I
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v5

    .line 755
    .local v5, "p0i":I
    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v6

    .line 757
    .local v6, "R2":I
    const/4 v1, 0x0

    .local v1, "v":I
    move/from16 v2, p2

    move v10, v1

    .end local v1    # "v":I
    .local v2, "x":I
    .local v10, "v":I
    :goto_1
    if-ge v10, v7, :cond_0

    .line 765
    add-int v1, v2, v3

    aget v11, p1, v1

    .line 766
    .local v11, "xp":I
    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_unsigned([IIIIII)I

    move-result v12

    .line 771
    move v13, v4

    move v14, v5

    move v15, v6

    .end local v4    # "p":I
    .end local v5    # "p0i":I
    .end local v6    # "R2":I
    .local v12, "xq":I
    .local v13, "p":I
    .local v14, "p0i":I
    .local v15, "R2":I
    invoke-virtual {v0, v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v1

    invoke-virtual {v0, v9, v1, v13, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v6

    .line 772
    .local v6, "xr":I
    move-object/from16 v1, p1

    move/from16 v4, p9

    move v5, v3

    move-object/from16 v3, p8

    .end local v3    # "u":I
    .local v5, "u":I
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_add_mul_small([II[IIII)V

    .line 757
    move-object v1, v3

    move v3, v5

    .end local v5    # "u":I
    .end local v6    # "xr":I
    .end local v11    # "xp":I
    .end local v12    # "xq":I
    .restart local v3    # "u":I
    add-int/lit8 v10, v10, 0x1

    add-int v2, v2, p4

    move v4, v13

    move v5, v14

    move v6, v15

    goto :goto_1

    .line 778
    .end local v13    # "p":I
    .end local v14    # "p0i":I
    .end local v15    # "R2":I
    .restart local v4    # "p":I
    .local v5, "p0i":I
    .local v6, "R2":I
    :cond_0
    move-object/from16 v1, p8

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v4, p9

    .end local v4    # "p":I
    .end local v5    # "p0i":I
    .end local v6    # "R2":I
    .restart local v13    # "p":I
    .restart local v14    # "p0i":I
    .restart local v15    # "R2":I
    add-int v5, v4, v3

    invoke-virtual {v0, v1, v4, v3, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mul_small([IIII)I

    move-result v6

    aput v6, v1, v5

    .line 738
    .end local v9    # "s":I
    .end local v10    # "v":I
    .end local v13    # "p":I
    .end local v14    # "p0i":I
    .end local v15    # "R2":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 784
    .end local v2    # "x":I
    :cond_1
    move-object/from16 v1, p8

    move/from16 v4, p9

    if-eqz p7, :cond_3

    .line 786
    const/4 v2, 0x0

    .end local v3    # "u":I
    .local v2, "u":I
    move/from16 v3, p2

    move v6, v2

    move v2, v3

    .local v2, "x":I
    .local v6, "u":I
    :goto_2
    if-ge v6, v7, :cond_2

    .line 788
    move-object v3, v1

    move v5, v8

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_norm_zero([II[III)V

    .line 786
    add-int/lit8 v6, v6, 0x1

    add-int v2, v2, p4

    move-object/from16 v0, p0

    move/from16 v8, p3

    move-object/from16 v1, p8

    move/from16 v4, p9

    goto :goto_2

    :cond_2
    move v3, v6

    .line 791
    .end local v2    # "x":I
    .end local v6    # "u":I
    .restart local v3    # "u":I
    :cond_3
    return-void
.end method

.method zint_sub([II[IIII)I
    .locals 6
    .param p1, "srca"    # [I
    .param p2, "a"    # I
    .param p3, "srcb"    # [I
    .param p4, "b"    # I
    .param p5, "len"    # I
    .param p6, "ctl"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srca",
            "a",
            "srcb",
            "b",
            "len",
            "ctl"
        }
    .end annotation

    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "cc":I
    neg-int v1, p6

    .line 551
    .local v1, "m":I
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_0
    if-ge v2, p5, :cond_0

    .line 555
    add-int v3, p2, v2

    aget v3, p1, v3

    .line 556
    .local v3, "aw":I
    add-int v4, p4, v2

    aget v4, p3, v4

    sub-int v4, v3, v4

    sub-int/2addr v4, v0

    .line 557
    .local v4, "w":I
    ushr-int/lit8 v0, v4, 0x1f

    .line 558
    const v5, 0x7fffffff

    and-int/2addr v5, v4

    xor-int/2addr v5, v3

    and-int/2addr v5, v1

    xor-int/2addr v3, v5

    .line 559
    add-int v5, p2, v2

    aput v3, p1, v5

    .line 551
    .end local v3    # "aw":I
    .end local v4    # "w":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    :cond_0
    return v0
.end method

.method zint_sub_scaled([III[IIIII)V
    .locals 11
    .param p1, "srcx"    # [I
    .param p2, "x"    # I
    .param p3, "xlen"    # I
    .param p4, "srcy"    # [I
    .param p5, "y"    # I
    .param p6, "ylen"    # I
    .param p7, "sch"    # I
    .param p8, "scl"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "srcx",
            "x",
            "xlen",
            "srcy",
            "y",
            "ylen",
            "sch",
            "scl"
        }
    .end annotation

    .line 1397
    move/from16 v0, p6

    if-nez v0, :cond_0

    .line 1399
    return-void

    .line 1402
    :cond_0
    add-int v1, p5, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, p4, v1

    ushr-int/lit8 v1, v1, 0x1e

    neg-int v1, v1

    ushr-int/lit8 v1, v1, 0x1

    .line 1403
    .local v1, "ysign":I
    const/4 v2, 0x0

    .line 1404
    .local v2, "tw":I
    const/4 v3, 0x0

    .line 1405
    .local v3, "cc":I
    move/from16 v4, p7

    .local v4, "u":I
    :goto_0
    if-ge v4, p3, :cond_2

    .line 1413
    sub-int v5, v4, p7

    .line 1414
    .local v5, "v":I
    if-ge v5, v0, :cond_1

    add-int v6, p5, v5

    aget v6, p4, v6

    goto :goto_1

    :cond_1
    move v6, v1

    .line 1415
    .local v6, "wy":I
    :goto_1
    shl-int v7, v6, p8

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    or-int/2addr v7, v2

    .line 1416
    .local v7, "wys":I
    rsub-int/lit8 v9, p8, 0x1f

    ushr-int v2, v6, v9

    .line 1418
    add-int v9, p2, v4

    aget v9, p1, v9

    sub-int/2addr v9, v7

    sub-int/2addr v9, v3

    .line 1419
    .local v9, "w":I
    add-int v10, p2, v4

    and-int/2addr v8, v9

    aput v8, p1, v10

    .line 1420
    ushr-int/lit8 v3, v9, 0x1f

    .line 1405
    .end local v5    # "v":I
    .end local v6    # "wy":I
    .end local v7    # "wys":I
    .end local v9    # "w":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1422
    :cond_2
    return-void
.end method

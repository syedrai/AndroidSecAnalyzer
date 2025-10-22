.class public final Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;
.super Ljava/lang/Object;
.source "WhirlpoolDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final BITCOUNT_ARRAY_SIZE:I = 0x20

.field private static final BYTE_LENGTH:I = 0x40

.field private static final C0:[J

.field private static final C1:[J

.field private static final C2:[J

.field private static final C3:[J

.field private static final C4:[J

.field private static final C5:[J

.field private static final C6:[J

.field private static final C7:[J

.field private static final DIGEST_LENGTH_BYTES:I = 0x40

.field private static final EIGHT:[S

.field private static final REDUCTION_POLYNOMIAL:I = 0x11d

.field private static final ROUNDS:I = 0xa

.field private static final SBOX:[I


# instance fields
.field private _K:[J

.field private _L:[J

.field private _bitCount:[S

.field private _block:[J

.field private _buffer:[B

.field private _bufferPos:I

.field private _hash:[J

.field private final _rc:[J

.field private _state:[J

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 22
    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->SBOX:[I

    .line 41
    new-array v1, v0, [J

    sput-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    .line 42
    new-array v1, v0, [J

    sput-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    .line 43
    new-array v1, v0, [J

    sput-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    .line 44
    new-array v1, v0, [J

    sput-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    .line 45
    new-array v1, v0, [J

    sput-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    .line 46
    new-array v1, v0, [J

    sput-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    .line 47
    new-array v1, v0, [J

    sput-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    .line 48
    new-array v1, v0, [J

    sput-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    .line 58
    const/16 v1, 0x20

    new-array v1, v1, [S

    sput-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    .line 62
    sget-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    const/16 v2, 0x1f

    const/16 v3, 0x8

    aput-short v3, v1, v2

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->SBOX:[I

    aget v3, v2, v1

    .line 67
    .local v3, "v1":I
    invoke-static {v3}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->mulX(I)I

    move-result v4

    .line 68
    .local v4, "v2":I
    invoke-static {v4}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->mulX(I)I

    move-result v5

    .line 69
    .local v5, "v4":I
    xor-int v6, v5, v3

    .line 70
    .local v6, "v5":I
    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->mulX(I)I

    move-result v7

    .line 71
    .local v7, "v8":I
    xor-int v8, v7, v3

    .line 73
    .local v8, "v9":I
    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    move v9, v4

    .end local v4    # "v2":I
    .local v9, "v2":I
    move v4, v3

    move v10, v6

    .end local v6    # "v5":I
    .local v10, "v5":I
    move v6, v3

    move v13, v10

    move v10, v8

    move v8, v13

    .local v8, "v5":I
    .local v10, "v9":I
    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v11

    move v4, v5

    move v5, v7

    move v6, v10

    move v10, v8

    .end local v7    # "v8":I
    .end local v8    # "v5":I
    .local v4, "v4":I
    .local v5, "v8":I
    .local v6, "v9":I
    .local v10, "v5":I
    aput-wide v11, v2, v1

    .line 74
    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    .end local v5    # "v8":I
    .restart local v7    # "v8":I
    move v5, v3

    move v8, v7

    .end local v7    # "v8":I
    .local v8, "v8":I
    move v7, v3

    move v13, v4

    move v4, v3

    move v3, v6

    move v6, v13

    move v13, v10

    move v10, v9

    move v9, v13

    .local v3, "v9":I
    .local v4, "v1":I
    .local v6, "v4":I
    .local v9, "v5":I
    .local v10, "v2":I
    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v11

    move v5, v6

    move v6, v3

    move v3, v4

    move v4, v5

    move v5, v10

    move v10, v9

    move v9, v5

    move v5, v8

    .end local v8    # "v8":I
    .local v3, "v1":I
    .local v4, "v4":I
    .restart local v5    # "v8":I
    .local v6, "v9":I
    .local v9, "v2":I
    .local v10, "v5":I
    aput-wide v11, v2, v1

    .line 75
    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    move v7, v6

    .end local v6    # "v9":I
    .local v7, "v9":I
    move v6, v3

    move v8, v3

    move v13, v5

    move v5, v3

    move v3, v9

    move v9, v13

    move v13, v7

    move v7, v4

    move v4, v13

    .local v3, "v2":I
    .local v4, "v9":I
    .local v5, "v1":I
    .local v7, "v4":I
    .local v9, "v8":I
    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v11

    move v6, v9

    move v9, v3

    move v3, v5

    move v5, v6

    move v6, v4

    move v4, v7

    .end local v7    # "v4":I
    .local v3, "v1":I
    .local v4, "v4":I
    .local v5, "v8":I
    .restart local v6    # "v9":I
    .local v9, "v2":I
    aput-wide v11, v2, v1

    .line 76
    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    move v7, v3

    move v8, v9

    .end local v9    # "v2":I
    .local v8, "v2":I
    move v9, v3

    move v13, v6

    move v6, v3

    move v3, v10

    move v10, v5

    move v5, v13

    move v13, v8

    move v8, v4

    move v4, v13

    .local v3, "v5":I
    .local v4, "v2":I
    .local v5, "v9":I
    .local v6, "v1":I
    .local v8, "v4":I
    .local v10, "v8":I
    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v11

    move v9, v10

    move v10, v3

    move v3, v6

    move v6, v5

    move v5, v9

    move v9, v4

    move v4, v8

    .end local v8    # "v4":I
    .local v3, "v1":I
    .local v4, "v4":I
    .local v5, "v8":I
    .local v6, "v9":I
    .restart local v9    # "v2":I
    .local v10, "v5":I
    aput-wide v11, v2, v1

    .line 77
    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    move v8, v3

    move v7, v10

    .end local v10    # "v5":I
    .local v7, "v5":I
    move v10, v3

    move v13, v7

    move v7, v3

    move v3, v5

    move v5, v9

    move v9, v4

    move v4, v13

    .local v3, "v8":I
    .local v4, "v5":I
    .local v5, "v2":I
    .local v7, "v1":I
    .local v9, "v4":I
    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v10

    move v13, v5

    move v5, v3

    move v3, v7

    move v7, v4

    move v4, v9

    move v9, v13

    .local v3, "v1":I
    .local v4, "v4":I
    .local v5, "v8":I
    .local v7, "v5":I
    .local v9, "v2":I
    aput-wide v10, v2, v1

    .line 78
    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    move v8, v3

    move v10, v9

    .end local v9    # "v2":I
    .local v10, "v2":I
    move v9, v3

    move v13, v10

    move v10, v4

    move v4, v5

    move v5, v7

    move v7, v6

    move v6, v13

    .local v4, "v8":I
    .local v5, "v5":I
    .local v6, "v2":I
    .local v7, "v9":I
    .local v10, "v4":I
    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v8

    move v13, v5

    move v5, v4

    move v4, v10

    move v10, v6

    move v6, v7

    move v7, v13

    .local v4, "v4":I
    .local v5, "v8":I
    .local v6, "v9":I
    .local v7, "v5":I
    .local v10, "v2":I
    aput-wide v8, v2, v1

    .line 79
    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    move v9, v3

    move v8, v10

    .end local v10    # "v2":I
    .local v8, "v2":I
    move v10, v3

    move v13, v4

    move v4, v3

    move v3, v13

    move v13, v8

    move v8, v6

    move v6, v7

    move v7, v13

    .local v3, "v4":I
    .local v4, "v1":I
    .local v6, "v5":I
    .local v7, "v2":I
    .local v8, "v9":I
    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v9

    move v13, v4

    move v4, v3

    move v3, v13

    move v13, v7

    move v7, v6

    move v6, v8

    move v8, v13

    .local v3, "v1":I
    .local v4, "v4":I
    .local v6, "v9":I
    .local v7, "v5":I
    .local v8, "v2":I
    aput-wide v9, v2, v1

    .line 80
    sget-object v2, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    move v9, v5

    .end local v5    # "v8":I
    .local v9, "v8":I
    move v5, v3

    move v10, v3

    move v13, v9

    move v9, v6

    move v6, v13

    .local v6, "v8":I
    .local v9, "v9":I
    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v10

    move v5, v6

    move v6, v9

    move v9, v8

    .end local v8    # "v2":I
    .restart local v5    # "v8":I
    .local v6, "v9":I
    .local v9, "v2":I
    aput-wide v10, v2, v1

    .line 64
    .end local v3    # "v1":I
    .end local v4    # "v4":I
    .end local v5    # "v8":I
    .end local v6    # "v9":I
    .end local v7    # "v5":I
    .end local v9    # "v2":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x18
        0x23
        0xc6
        0xe8
        0x87
        0xb8
        0x1
        0x4f
        0x36
        0xa6
        0xd2
        0xf5
        0x79
        0x6f
        0x91
        0x52
        0x60
        0xbc
        0x9b
        0x8e
        0xa3
        0xc
        0x7b
        0x35
        0x1d
        0xe0
        0xd7
        0xc2
        0x2e
        0x4b
        0xfe
        0x57
        0x15
        0x77
        0x37
        0xe5
        0x9f
        0xf0
        0x4a
        0xda
        0x58
        0xc9
        0x29
        0xa
        0xb1
        0xa0
        0x6b
        0x85
        0xbd
        0x5d
        0x10
        0xf4
        0xcb
        0x3e
        0x5
        0x67
        0xe4
        0x27
        0x41
        0x8b
        0xa7
        0x7d
        0x95
        0xd8
        0xfb
        0xee
        0x7c
        0x66
        0xdd
        0x17
        0x47
        0x9e
        0xca
        0x2d
        0xbf
        0x7
        0xad
        0x5a
        0x83
        0x33
        0x63
        0x2
        0xaa
        0x71
        0xc8
        0x19
        0x49
        0xd9
        0xf2
        0xe3
        0x5b
        0x88
        0x9a
        0x26
        0x32
        0xb0
        0xe9
        0xf
        0xd5
        0x80
        0xbe
        0xcd
        0x34
        0x48
        0xff
        0x7a
        0x90
        0x5f
        0x20
        0x68
        0x1a
        0xae
        0xb4
        0x54
        0x93
        0x22
        0x64
        0xf1
        0x73
        0x12
        0x40
        0x8
        0xc3
        0xec
        0xdb
        0xa1
        0x8d
        0x3d
        0x97
        0x0
        0xcf
        0x2b
        0x76
        0x82
        0xd6
        0x1b
        0xb5
        0xaf
        0x6a
        0x50
        0x45
        0xf3
        0x30
        0xef
        0x3f
        0x55
        0xa2
        0xea
        0x65
        0xba
        0x2f
        0xc0
        0xde
        0x1c
        0xfd
        0x4d
        0x92
        0x75
        0x6
        0x8a
        0xb2
        0xe6
        0xe
        0x1f
        0x62
        0xd4
        0xa8
        0x96
        0xf9
        0xc5
        0x25
        0x59
        0x84
        0x72
        0x39
        0x4c
        0x5e
        0x78
        0x38
        0x8c
        0xd1
        0xa5
        0xe2
        0x61
        0xb3
        0x21
        0x9c
        0x1e
        0x43
        0xc7
        0xfc
        0x4
        0x51
        0x99
        0x6d
        0xd
        0xfa
        0xdf
        0x7e
        0x24
        0x3b
        0xab
        0xce
        0x11
        0x8f
        0x4e
        0xb7
        0xeb
        0x3c
        0x81
        0x94
        0xf7
        0xb9
        0x13
        0x2c
        0xd3
        0xe7
        0x6e
        0xc4
        0x3
        0x56
        0x44
        0x7f
        0xa9
        0x2a
        0xbb
        0xc1
        0x53
        0xdc
        0xb
        0x9d
        0x6c
        0x31
        0x74
        0xf6
        0x46
        0xac
        0x89
        0x14
        0xe1
        0x16
        0x3a
        0x69
        0x9
        0x70
        0xb6
        0xd0
        0xed
        0xcc
        0x42
        0x98
        0xa4
        0x28
        0x5c
        0xf8
        0x86
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 108
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 11
    .param p1, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    .line 133
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 135
    const/16 v1, 0x20

    new-array v1, v1, [S

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    .line 138
    const/16 v1, 0x8

    new-array v2, v1, [J

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    .line 139
    new-array v2, v1, [J

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    .line 140
    new-array v2, v1, [J

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    .line 141
    new-array v2, v1, [J

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    .line 142
    new-array v2, v1, [J

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    .line 112
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 113
    const/4 v0, 0x1

    .local v0, "r":I
    :goto_0
    const/16 v2, 0xa

    if-gt v0, v2, :cond_0

    .line 115
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x8

    .line 116
    .local v2, "i":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    sget-object v4, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    aget-wide v5, v4, v2

    const-wide/high16 v7, -0x100000000000000L

    and-long/2addr v5, v7

    sget-object v4, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    add-int/lit8 v7, v2, 0x1

    aget-wide v7, v4, v7

    const-wide/high16 v9, 0xff000000000000L

    and-long/2addr v7, v9

    xor-long/2addr v5, v7

    sget-object v4, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    add-int/lit8 v7, v2, 0x2

    aget-wide v7, v4, v7

    const-wide v9, 0xff0000000000L

    and-long/2addr v7, v9

    xor-long/2addr v5, v7

    sget-object v4, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    add-int/lit8 v7, v2, 0x3

    aget-wide v7, v4, v7

    const-wide v9, 0xff00000000L

    and-long/2addr v7, v9

    xor-long/2addr v5, v7

    sget-object v4, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    add-int/lit8 v7, v2, 0x4

    aget-wide v7, v4, v7

    const-wide v9, 0xff000000L

    and-long/2addr v7, v9

    xor-long/2addr v5, v7

    sget-object v4, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    add-int/lit8 v7, v2, 0x5

    aget-wide v7, v4, v7

    const-wide/32 v9, 0xff0000

    and-long/2addr v7, v9

    xor-long/2addr v5, v7

    sget-object v4, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    add-int/lit8 v7, v2, 0x6

    aget-wide v7, v4, v7

    const-wide/32 v9, 0xff00

    and-long/2addr v7, v9

    xor-long/2addr v5, v7

    sget-object v4, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    add-int/lit8 v7, v2, 0x7

    aget-wide v7, v4, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    xor-long/2addr v5, v7

    aput-wide v5, v3, v0

    .line 113
    .end local v2    # "i":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "r":I
    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 127
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->getDigestSize()I

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;)V
    .locals 2
    .param p1, "originalDigest"    # Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalDigest"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    .line 133
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 135
    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    .line 138
    const/16 v0, 0x8

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    .line 139
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    .line 140
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    .line 141
    new-array v1, v0, [J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    .line 142
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    .line 149
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 150
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 152
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->getDigestSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 153
    return-void
.end method

.method private copyBitLength()[B
    .locals 3

    .line 333
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 334
    .local v0, "rv":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 336
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    aget-short v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private finish()V
    .locals 5

    .line 298
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->copyBitLength()[B

    move-result-object v0

    .line 300
    .local v0, "bitLength":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 301
    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 303
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    .line 312
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 314
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_0

    .line 320
    :cond_1
    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-gt v1, v2, :cond_2

    .line 322
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_1

    .line 326
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    .line 329
    return-void
.end method

.method private increment()V
    .locals 5

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "carry":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 274
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    aget-short v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    aget-short v3, v3, v1

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 276
    .local v2, "sum":I
    ushr-int/lit8 v0, v2, 0x8

    .line 277
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    and-int/lit16 v4, v2, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 272
    .end local v2    # "sum":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 279
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static mulX(I)I
    .locals 2
    .param p0, "input"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 87
    shl-int/lit8 v0, p0, 0x1

    ushr-int/lit8 v1, p0, 0x7

    neg-int v1, v1

    and-int/lit16 v1, v1, 0x11d

    xor-int/2addr v0, v1

    return v0
.end method

.method private static packIntoLong(IIIIIIII)J
    .locals 5
    .param p0, "b7"    # I
    .param p1, "b6"    # I
    .param p2, "b5"    # I
    .param p3, "b4"    # I
    .param p4, "b3"    # I
    .param p5, "b2"    # I
    .param p6, "b1"    # I
    .param p7, "b0"    # I
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
            "b7",
            "b6",
            "b5",
            "b4",
            "b3",
            "b2",
            "b1",
            "b0"
        }
    .end annotation

    .line 92
    int-to-long v0, p0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p3

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p4

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p7

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private processFilledBuffer([BI)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI[J)V

    .line 197
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processBlock()V

    .line 198
    iput v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 199
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 200
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 348
    new-instance v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;-><init>(Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->finish()V

    .line 170
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 172
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->reset()V

    .line 173
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 157
    const-string v0, "Whirlpool"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 343
    const/16 v0, 0x40

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 162
    const/16 v0, 0x40

    return v0
.end method

.method protected processBlock()V
    .locals 19

    .line 207
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 209
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    aget-wide v4, v3, v1

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v7, v6, v1

    aput-wide v7, v3, v1

    xor-long/2addr v4, v7

    aput-wide v4, v2, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x1

    .local v1, "round":I
    :goto_1
    const/16 v3, 0xa

    if-gt v1, v3, :cond_3

    .line 215
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/16 v4, 0x10

    const/16 v5, 0x18

    const/16 v6, 0x20

    const/16 v7, 0x28

    const/16 v8, 0x30

    const/16 v9, 0x38

    if-ge v3, v2, :cond_1

    .line 217
    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    const-wide/16 v11, 0x0

    aput-wide v11, v10, v3

    .line 218
    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v11, v10, v3

    sget-object v13, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v15, v3, 0x0

    and-int/lit8 v15, v15, 0x7

    aget-wide v15, v14, v15

    ushr-long v14, v15, v9

    long-to-int v9, v14

    and-int/lit16 v9, v9, 0xff

    aget-wide v14, v13, v9

    xor-long/2addr v11, v14

    aput-wide v11, v10, v3

    .line 219
    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v10, v9, v3

    sget-object v12, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v14, v3, -0x1

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v13, v14

    ushr-long v13, v14, v8

    long-to-int v8, v13

    and-int/lit16 v8, v8, 0xff

    aget-wide v13, v12, v8

    xor-long/2addr v10, v13

    aput-wide v10, v9, v3

    .line 220
    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v9, v8, v3

    sget-object v11, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v13, v3, -0x2

    and-int/lit8 v13, v13, 0x7

    aget-wide v13, v12, v13

    ushr-long v12, v13, v7

    long-to-int v7, v12

    and-int/lit16 v7, v7, 0xff

    aget-wide v12, v11, v7

    xor-long/2addr v9, v12

    aput-wide v9, v8, v3

    .line 221
    iget-object v7, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v8, v7, v3

    sget-object v10, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v12, v3, -0x3

    and-int/lit8 v12, v12, 0x7

    aget-wide v12, v11, v12

    ushr-long v11, v12, v6

    long-to-int v6, v11

    and-int/lit16 v6, v6, 0xff

    aget-wide v11, v10, v6

    xor-long/2addr v8, v11

    aput-wide v8, v7, v3

    .line 222
    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v7, v6, v3

    sget-object v9, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v11, v3, -0x4

    and-int/lit8 v11, v11, 0x7

    aget-wide v11, v10, v11

    ushr-long v10, v11, v5

    long-to-int v5, v10

    and-int/lit16 v5, v5, 0xff

    aget-wide v10, v9, v5

    xor-long/2addr v7, v10

    aput-wide v7, v6, v3

    .line 223
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v6, v5, v3

    sget-object v8, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v10, v3, -0x5

    and-int/lit8 v10, v10, 0x7

    aget-wide v10, v9, v10

    ushr-long v9, v10, v4

    long-to-int v4, v9

    and-int/lit16 v4, v4, 0xff

    aget-wide v9, v8, v4

    xor-long/2addr v6, v9

    aput-wide v6, v5, v3

    .line 224
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v5, v4, v3

    sget-object v7, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v9, v3, -0x6

    and-int/lit8 v9, v9, 0x7

    aget-wide v9, v8, v9

    ushr-long v8, v9, v2

    long-to-int v9, v8

    and-int/lit16 v8, v9, 0xff

    aget-wide v8, v7, v8

    xor-long/2addr v5, v8

    aput-wide v5, v4, v3

    .line 225
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v5, v4, v3

    sget-object v7, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v9, v3, -0x7

    and-int/lit8 v9, v9, 0x7

    aget-wide v9, v8, v9

    long-to-int v8, v9

    and-int/lit16 v8, v8, 0xff

    aget-wide v8, v7, v8

    xor-long/2addr v5, v8

    aput-wide v5, v4, v3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 228
    .end local v3    # "i":I
    :cond_1
    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    array-length v11, v11

    const/4 v12, 0x0

    invoke-static {v3, v12, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    aget-wide v10, v3, v12

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    aget-wide v14, v13, v1

    xor-long/2addr v10, v14

    aput-wide v10, v3, v12

    .line 233
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v2, :cond_2

    .line 235
    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    aget-wide v13, v11, v3

    aput-wide v13, v10, v3

    .line 237
    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v13, v10, v3

    sget-object v11, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v16, v3, 0x0

    and-int/lit8 v16, v16, 0x7

    aget-wide v16, v15, v16

    const/16 v15, 0x18

    const/16 v18, 0x10

    ushr-long v4, v16, v9

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    aget-wide v4, v11, v4

    xor-long/2addr v4, v13

    aput-wide v4, v10, v3

    .line 238
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v10, v4, v3

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v14, v3, -0x1

    and-int/lit8 v14, v14, 0x7

    aget-wide v16, v13, v14

    ushr-long v13, v16, v8

    long-to-int v14, v13

    and-int/lit16 v13, v14, 0xff

    aget-wide v13, v5, v13

    xor-long/2addr v10, v13

    aput-wide v10, v4, v3

    .line 239
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v10, v4, v3

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v14, v3, -0x2

    and-int/lit8 v14, v14, 0x7

    aget-wide v16, v13, v14

    ushr-long v13, v16, v7

    long-to-int v14, v13

    and-int/lit16 v13, v14, 0xff

    aget-wide v13, v5, v13

    xor-long/2addr v10, v13

    aput-wide v10, v4, v3

    .line 240
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v10, v4, v3

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v14, v3, -0x3

    and-int/lit8 v14, v14, 0x7

    aget-wide v16, v13, v14

    ushr-long v13, v16, v6

    long-to-int v14, v13

    and-int/lit16 v13, v14, 0xff

    aget-wide v13, v5, v13

    xor-long/2addr v10, v13

    aput-wide v10, v4, v3

    .line 241
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v10, v4, v3

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v14, v3, -0x4

    and-int/lit8 v14, v14, 0x7

    aget-wide v16, v13, v14

    ushr-long v13, v16, v15

    long-to-int v14, v13

    and-int/lit16 v13, v14, 0xff

    aget-wide v13, v5, v13

    xor-long/2addr v10, v13

    aput-wide v10, v4, v3

    .line 242
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v10, v4, v3

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v14, v3, -0x5

    and-int/lit8 v14, v14, 0x7

    aget-wide v16, v13, v14

    ushr-long v13, v16, v18

    long-to-int v14, v13

    and-int/lit16 v13, v14, 0xff

    aget-wide v13, v5, v13

    xor-long/2addr v10, v13

    aput-wide v10, v4, v3

    .line 243
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v10, v4, v3

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v14, v3, -0x6

    and-int/lit8 v14, v14, 0x7

    aget-wide v16, v13, v14

    ushr-long v13, v16, v2

    long-to-int v14, v13

    and-int/lit16 v13, v14, 0xff

    aget-wide v13, v5, v13

    xor-long/2addr v10, v13

    aput-wide v10, v4, v3

    .line 244
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v10, v4, v3

    sget-object v5, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v14, v3, -0x7

    and-int/lit8 v14, v14, 0x7

    aget-wide v6, v13, v14

    long-to-int v7, v6

    and-int/lit16 v6, v7, 0xff

    aget-wide v6, v5, v6

    xor-long/2addr v6, v10

    aput-wide v6, v4, v3

    .line 233
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x10

    const/16 v5, 0x18

    const/16 v6, 0x20

    const/16 v7, 0x28

    goto/16 :goto_3

    .line 248
    .end local v3    # "i":I
    :cond_2
    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v5, v5

    invoke-static {v3, v12, v4, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 252
    .end local v1    # "round":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v2, :cond_4

    .line 254
    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v4, v3, v1

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    aget-wide v7, v6, v1

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    aget-wide v9, v6, v1

    xor-long/2addr v7, v9

    xor-long/2addr v4, v7

    aput-wide v4, v3, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 256
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 3

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 183
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([SS)V

    .line 184
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 186
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 189
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 190
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 5
    .param p1, "other"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 353
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    .line 355
    .local v0, "originalDigest":Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iget v1, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    .line 360
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    return-void
.end method

.method public update(B)V
    .locals 2
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    aput-byte p1, v0, v1

    .line 261
    iget v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    .line 266
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->increment()V

    .line 267
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 283
    nop

    :goto_0
    if-lez p3, :cond_0

    .line 285
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    .line 286
    add-int/lit8 p2, p2, 0x1

    .line 287
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

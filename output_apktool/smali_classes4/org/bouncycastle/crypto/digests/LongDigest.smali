.class public abstract Lorg/bouncycastle/crypto/digests/LongDigest;
.super Ljava/lang/Object;
.source "LongDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;
.implements Lorg/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final BYTE_LENGTH:I = 0x80

.field static final K:[J


# instance fields
.field protected H1:J

.field protected H2:J

.field protected H3:J

.field protected H4:J

.field protected H5:J

.field protected H6:J

.field protected H7:J

.field protected H8:J

.field private W:[J

.field private byteCount1:J

.field private byteCount2:J

.field protected final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field private wOff:I

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 402
    const/16 v0, 0x50

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    return-void

    :array_0
    .array-data 8
        0x428a2f98d728ae22L    # 3.5989662528217666E12
        0x7137449123ef65cdL    # 2.367405559035152E237
        -0x4a3f043013b2c4d1L    # -9.0786554787018E-50
        -0x164a245a7e762444L
        0x3956c25bf348b538L
        0x59f111f1b605d019L    # 1.8054860536953294E125
        -0x6dc07d5b50e6b065L    # -8.717181310573585E-221
        -0x54e3a12a25927ee8L
        -0x27f855675cfcfdbeL    # -1.1656291332323638E116
        0x12835b0145706fbeL
        0x243185be4ee4b28cL    # 2.410773468256423E-134
        0x550c7dc3d5ffb4e2L    # 4.985403983718413E101
        0x72be5d74f27b896fL    # 5.183352230240388E244
        -0x7f214e01c4e9694fL
        -0x6423f958da38edcbL
        -0x3e640e8b3096d96cL    # -1.1720222785268623E8
        -0x1b64963e610eb52eL    # -4.339261227288659E176
        -0x1041b879c7b0da1dL    # -1.836300920646737E230
        0xfc19dc68b8cd5b5L    # 8.864787397362889E-233
        0x240ca1cc77ac9c65L    # 4.924067956729057E-135
        0x2de92c6f592b0275L    # 1.5818166760957606E-87
        0x4a7484aa6ea6e483L    # 4.79798724707082E50
        0x5cb0a9dcbd41fbd4L    # 3.100593885146353E138
        0x76f988da831153b5L    # 1.2864857866870779E265
        -0x67c1aead11992055L
        -0x57ce3992d24bcdf0L    # -4.511217866312199E-115
        -0x4ffcd8376704dec1L    # -2.0678662886600765E-77
        -0x40a680384110f11cL    # -0.0015563440936014411
        -0x391ff40cc257703eL    # -2.603722742751637E33
        -0x2a586eb86cf558dbL    # -4.222814448133811E104
        0x6ca6351e003826fL
        0x142929670a0e6e70L
        0x27b70a8546d22ffcL
        0x2e1b21385c26c926L    # 1.3637893953385892E-86
        0x4d2c6dfc5ac42aedL    # 5.84763610164635E63
        0x53380d139d95b3dfL    # 7.838866619197482E92
        0x650a73548baf63deL    # 5.35921865865203E178
        0x766a0abb3c77b2a8L    # 2.5625906234442426E262
        -0x7e3d36d1b812511aL    # -3.506432391784029E-300
        -0x6d8dd37aeb7dcac5L    # -8.044358981173315E-220
        -0x5d40175eb30efc9cL
        -0x57e599b443bdcfffL
        -0x3db4748f2f07686fL    # -2.366070870891841E11
        -0x3893ae5cf9ab41d0L    # -1.17632082693375E36
        -0x2e6d17e62910ade8L    # -9.182337425192181E84
        -0x2966f9dbaa9a56f0L    # -1.4692477645833556E109
        -0xbf1ca7aa88edfd6L
        0x106aa07032bbd1b8L
        0x19a4c116b8d2d0c8L
        0x1e376c085141ab53L    # 4.067301537801791E-163
        0x2748774cdf8eeb99L    # 1.894937972556452E-119
        0x34b0bcb5e19b48a8L    # 6.82593759724882E-55
        0x391c0cb3c5c95a63L    # 1.3505399862746614E-33
        0x4ed8aa4ae3418acbL    # 6.809319594147137E71
        0x5b9cca4f7763e373L    # 2.0435436325319052E133
        0x682e6ff3d6b2b8a3L    # 6.943421982965376E193
        0x748f82ee5defb2fcL    # 2.887850816088868E253
        0x78a5636f43172f60L    # 1.4463210820003646E273
        -0x7b3787eb5e0f548eL
        -0x7338fdf7e59bc614L
        -0x6f410005dc9ce1d8L    # -5.111680914909667E-228
        -0x5baf9314217d4217L    # -9.03940504491957E-134
        -0x41065c084d3986ebL    # -2.445268471406536E-5
        -0x398e870d1c8dacd5L    # -2.2148969568888243E31
        -0x35d8c13115d99e64L    # -1.6986554718624063E49
        -0x2e794738de3f3df9L    # -5.517613964471652E84
        -0x15258229321f14e2L    # -5.315750124715331E206
        -0xa82b08011912e88L    # -8.801976642581914E257
        0x6f067aa72176fbaL
        0xa637dc5a2c898a6L
        0x113f9804bef90daeL
        0x1b710b35131c471bL
        0x28db77f523047d84L    # 7.138679721560702E-112
        0x32caab7b40c72493L    # 5.064907242937011E-64
        0x3c9ebe0a15c9bebcL    # 1.0665892261952011E-16
        0x431d67c49c100d4cL    # 2.069217113539411E15
        0x4cc5d4becb3e42b6L    # 7.016224550123326E61
        0x597f299cfc657e2aL    # 1.2875119238090917E123
        0x5fcb6fab3ad6faecL    # 2.873901462601813E153
        0x6c44198c4a475817L    # 3.3832852265175575E213
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 27
    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    .line 43
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 47
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/digests/LongDigest;)V
    .locals 1
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/LongDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 27
    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    .line 57
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 59
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/LongDigest;->copyIn(Lorg/bouncycastle/crypto/digests/LongDigest;)V

    .line 60
    return-void
.end method

.method private Ch(JJJ)J
    .locals 4
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 363
    and-long v0, p1, p3

    not-long v2, p1

    and-long/2addr v2, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Maj(JJJ)J
    .locals 4
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 371
    and-long v0, p1, p3

    and-long v2, p1, p5

    xor-long/2addr v0, v2

    and-long v2, p3, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma0(J)J
    .locals 6
    .param p1, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 389
    const/16 v0, 0x3f

    shl-long v0, p1, v0

    const/4 v2, 0x1

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, p1, v2

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma1(J)J
    .locals 6
    .param p1, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 395
    const/16 v0, 0x2d

    shl-long v0, p1, v0

    const/16 v2, 0x13

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long v2, p1, v2

    const/16 v4, 0x3d

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x6

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum0(J)J
    .locals 6
    .param p1, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 377
    const/16 v0, 0x24

    shl-long v0, p1, v0

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x1e

    shl-long v2, p1, v2

    const/16 v4, 0x22

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    shl-long v2, p1, v2

    const/16 v4, 0x27

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum1(J)J
    .locals 6
    .param p1, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 383
    const/16 v0, 0x32

    shl-long v0, p1, v0

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x2e

    shl-long v2, p1, v2

    const/16 v4, 0x12

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    shl-long v2, p1, v2

    const/16 v4, 0x29

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private adjustByteCounts()V
    .locals 7

    .line 250
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide v2, 0x1fffffffffffffffL

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 252
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/16 v6, 0x3d

    ushr-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 253
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 255
    :cond_0
    return-void
.end method


# virtual methods
.method protected copyIn(Lorg/bouncycastle/crypto/digests/LongDigest;)V
    .locals 4
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/LongDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 64
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 67
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 68
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 70
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 71
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 72
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 73
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 74
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 75
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 76
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 77
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 79
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 81
    return-void
.end method

.method protected abstract cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
.end method

.method public finish()V
    .locals 5

    .line 189
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 191
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 192
    .local v0, "lowBitLength":J
    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 197
    .local v2, "hiBitLength":J
    const/16 v4, -0x80

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 199
    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v4, :cond_0

    .line 201
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/LongDigest;->processLength(JJ)V

    .line 206
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 207
    return-void
.end method

.method public getByteLength()I
    .locals 1

    .line 229
    const/16 v0, 0x80

    return v0
.end method

.method protected getEncodedStateSize()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x60

    return v0
.end method

.method protected populateState([B)V
    .locals 4
    .param p1, "state"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    const/16 v1, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 87
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 88
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/16 v2, 0x14

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 89
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    const/16 v2, 0x1c

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 90
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    const/16 v2, 0x24

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 91
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    const/16 v2, 0x2c

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 92
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    const/16 v2, 0x34

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 93
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    const/16 v2, 0x3c

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 94
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    const/16 v2, 0x44

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 95
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    const/16 v2, 0x4c

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 96
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    const/16 v2, 0x54

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 98
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0x5c

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    aget-wide v2, v1, v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x60

    invoke-static {v2, v3, p1, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected processBlock()V
    .locals 36

    .line 272
    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 277
    const/16 v1, 0x10

    .local v1, "t":I
    :goto_0
    const/16 v2, 0x4f

    if-gt v1, v2, :cond_0

    .line 279
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v4, v1, -0x2

    aget-wide v4, v3, v4

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sigma1(J)J

    move-result-wide v3

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v6, v1, -0x7

    aget-wide v6, v5, v6

    add-long/2addr v3, v6

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v6, v1, -0xf

    aget-wide v6, v5, v6

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sigma0(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v6, v1, -0x10

    aget-wide v6, v5, v6

    add-long/2addr v3, v6

    aput-wide v3, v2, v1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "t":I
    :cond_0
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 286
    .local v1, "a":J
    iget-wide v3, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 287
    .local v3, "b":J
    iget-wide v5, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 288
    .local v5, "c":J
    iget-wide v7, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 289
    .local v7, "d":J
    iget-wide v9, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 290
    .local v9, "e":J
    iget-wide v11, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 291
    .local v11, "f":J
    iget-wide v13, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 292
    .local v13, "g":J
    move-wide v15, v1

    .end local v1    # "a":J
    .local v15, "a":J
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 294
    .local v1, "h":J
    const/16 v17, 0x0

    .line 295
    .local v17, "t":I
    const/16 v18, 0x0

    move-wide/from16 v34, v9

    move/from16 v9, v18

    move-wide/from16 v18, v1

    move-wide/from16 v1, v34

    move-wide/from16 v34, v11

    move-wide v11, v3

    move-wide/from16 v3, v34

    move-wide/from16 v34, v13

    move-wide v13, v5

    move-wide/from16 v5, v34

    move-wide/from16 v34, v15

    move-wide v15, v7

    move-wide/from16 v7, v34

    .local v1, "e":J
    .local v3, "f":J
    .local v5, "g":J
    .local v7, "a":J
    .local v9, "i":I
    .local v11, "b":J
    .local v13, "c":J
    .local v15, "d":J
    .local v18, "h":J
    :goto_1
    const/16 v10, 0xa

    if-ge v9, v10, :cond_1

    .line 298
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v20

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v22

    move-wide/from16 v24, v1

    move-wide/from16 v26, v3

    move-wide/from16 v28, v5

    .end local v1    # "e":J
    .end local v3    # "f":J
    .end local v5    # "g":J
    .local v24, "e":J
    .local v26, "f":J
    .local v28, "g":J
    add-long v20, v20, v22

    sget-object v1, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v2, v1, v17

    add-long v20, v20, v2

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v10, v17, 0x1

    .end local v17    # "t":I
    .local v10, "t":I
    aget-wide v2, v1, v17

    add-long v20, v20, v2

    add-long v18, v18, v20

    .line 299
    add-long v1, v15, v18

    .line 300
    .end local v15    # "d":J
    .local v1, "d":J
    invoke-direct {v0, v7, v8}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v15

    move-wide v3, v7

    move-wide v7, v1

    move-wide v1, v3

    move-wide v3, v11

    move-wide v5, v13

    .end local v11    # "b":J
    .end local v13    # "c":J
    .local v1, "a":J
    .local v3, "b":J
    .local v5, "c":J
    .local v7, "d":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v11

    move-wide v13, v1

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    .end local v1    # "a":J
    .end local v3    # "b":J
    .end local v5    # "c":J
    .local v13, "a":J
    .local v20, "b":J
    .local v22, "c":J
    add-long/2addr v15, v11

    add-long v11, v18, v15

    .line 303
    .end local v18    # "h":J
    .local v11, "h":J
    invoke-direct {v0, v7, v8}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v15

    move-wide v1, v7

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    .end local v7    # "d":J
    .end local v24    # "e":J
    .end local v26    # "f":J
    .local v1, "d":J
    .local v3, "e":J
    .local v5, "f":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v7

    move-wide/from16 v17, v1

    .end local v1    # "d":J
    .end local v3    # "e":J
    .end local v5    # "f":J
    .local v17, "d":J
    .restart local v24    # "e":J
    .restart local v26    # "f":J
    add-long/2addr v15, v7

    sget-object v1, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v2, v1, v10

    add-long/2addr v15, v2

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v7, v10, 0x1

    .end local v10    # "t":I
    .local v7, "t":I
    aget-wide v2, v1, v10

    add-long/2addr v15, v2

    add-long v15, v28, v15

    .line 304
    .end local v28    # "g":J
    .local v15, "g":J
    add-long v1, v22, v15

    .line 305
    .end local v22    # "c":J
    .local v1, "c":J
    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v22

    move-wide v3, v13

    move-wide/from16 v5, v20

    move-wide v13, v1

    move-wide v1, v11

    .end local v11    # "h":J
    .end local v20    # "b":J
    .local v1, "h":J
    .local v3, "a":J
    .local v5, "b":J
    .local v13, "c":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v10

    move-wide/from16 v28, v1

    move-wide/from16 v19, v3

    move-wide/from16 v30, v5

    .end local v1    # "h":J
    .end local v3    # "a":J
    .end local v5    # "b":J
    .local v19, "a":J
    .local v28, "h":J
    .local v30, "b":J
    add-long v22, v22, v10

    add-long v10, v15, v22

    .line 308
    .end local v15    # "g":J
    .local v10, "g":J
    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v15

    move-wide v1, v13

    move-wide/from16 v3, v17

    move-wide/from16 v5, v24

    .end local v13    # "c":J
    .end local v17    # "d":J
    .end local v24    # "e":J
    .local v1, "c":J
    .local v3, "d":J
    .local v5, "e":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v12

    move-wide/from16 v21, v1

    .end local v1    # "c":J
    .end local v3    # "d":J
    .end local v5    # "e":J
    .restart local v17    # "d":J
    .local v21, "c":J
    .restart local v24    # "e":J
    add-long/2addr v15, v12

    sget-object v1, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v2, v1, v7

    add-long/2addr v15, v2

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "t":I
    .local v8, "t":I
    aget-wide v2, v1, v7

    add-long/2addr v15, v2

    add-long v12, v26, v15

    .line 309
    .end local v26    # "f":J
    .local v12, "f":J
    add-long v14, v30, v12

    .line 310
    .end local v30    # "b":J
    .local v14, "b":J
    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v26

    move-wide v1, v10

    move-wide/from16 v5, v19

    move-wide/from16 v3, v28

    .end local v10    # "g":J
    .end local v19    # "a":J
    .end local v28    # "h":J
    .local v1, "g":J
    .local v3, "h":J
    .local v5, "a":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v10

    move-wide/from16 v19, v1

    move-wide/from16 v32, v5

    .end local v1    # "g":J
    .end local v3    # "h":J
    .end local v5    # "a":J
    .local v19, "g":J
    .restart local v28    # "h":J
    .local v32, "a":J
    add-long v26, v26, v10

    add-long v12, v12, v26

    .line 313
    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v10

    move-wide v1, v14

    move-wide/from16 v5, v17

    move-wide/from16 v3, v21

    .end local v14    # "b":J
    .end local v17    # "d":J
    .end local v21    # "c":J
    .local v1, "b":J
    .local v3, "c":J
    .local v5, "d":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v14

    move-wide/from16 v26, v1

    .end local v1    # "b":J
    .end local v3    # "c":J
    .end local v5    # "d":J
    .restart local v17    # "d":J
    .restart local v21    # "c":J
    .local v26, "b":J
    add-long/2addr v10, v14

    sget-object v1, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v2, v1, v8

    add-long/2addr v10, v2

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "t":I
    .restart local v7    # "t":I
    aget-wide v2, v1, v8

    add-long/2addr v10, v2

    add-long v10, v24, v10

    .line 314
    .end local v24    # "e":J
    .local v10, "e":J
    add-long v14, v32, v10

    .line 315
    .end local v32    # "a":J
    .local v14, "a":J
    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v23

    move-wide v1, v12

    move-wide/from16 v3, v19

    move-wide/from16 v5, v28

    .end local v12    # "f":J
    .end local v19    # "g":J
    .end local v28    # "h":J
    .local v1, "f":J
    .local v3, "g":J
    .local v5, "h":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v12

    move-wide/from16 v30, v1

    .end local v1    # "f":J
    .end local v3    # "g":J
    .end local v5    # "h":J
    .restart local v19    # "g":J
    .restart local v28    # "h":J
    .local v30, "f":J
    add-long v23, v23, v12

    add-long v10, v10, v23

    .line 318
    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v12

    move-wide v1, v14

    move-wide/from16 v5, v21

    move-wide/from16 v3, v26

    .end local v14    # "a":J
    .end local v21    # "c":J
    .end local v26    # "b":J
    .local v1, "a":J
    .local v3, "b":J
    .local v5, "c":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v14

    move-wide/from16 v23, v1

    .end local v1    # "a":J
    .end local v3    # "b":J
    .end local v5    # "c":J
    .restart local v21    # "c":J
    .local v23, "a":J
    .restart local v26    # "b":J
    add-long/2addr v12, v14

    sget-object v1, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v2, v1, v7

    add-long/2addr v12, v2

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "t":I
    .restart local v8    # "t":I
    aget-wide v2, v1, v7

    add-long/2addr v12, v2

    add-long v12, v17, v12

    .line 319
    .end local v17    # "d":J
    .local v12, "d":J
    add-long v14, v28, v12

    .line 320
    .end local v28    # "h":J
    .local v14, "h":J
    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v16

    move-wide v1, v10

    move-wide/from16 v5, v19

    move-wide/from16 v3, v30

    .end local v10    # "e":J
    .end local v19    # "g":J
    .end local v30    # "f":J
    .local v1, "e":J
    .local v3, "f":J
    .local v5, "g":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v10

    move-wide/from16 v28, v1

    .end local v1    # "e":J
    .end local v3    # "f":J
    .end local v5    # "g":J
    .restart local v19    # "g":J
    .local v28, "e":J
    .restart local v30    # "f":J
    add-long v16, v16, v10

    add-long v12, v12, v16

    .line 323
    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v10

    move-wide v1, v14

    move-wide/from16 v3, v23

    move-wide/from16 v5, v26

    .end local v14    # "h":J
    .end local v23    # "a":J
    .end local v26    # "b":J
    .local v1, "h":J
    .local v3, "a":J
    .local v5, "b":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v14

    move-wide/from16 v16, v1

    .end local v1    # "h":J
    .end local v3    # "a":J
    .end local v5    # "b":J
    .local v16, "h":J
    .restart local v23    # "a":J
    .restart local v26    # "b":J
    add-long/2addr v10, v14

    sget-object v1, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v2, v1, v8

    add-long/2addr v10, v2

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "t":I
    .restart local v7    # "t":I
    aget-wide v2, v1, v8

    add-long/2addr v10, v2

    add-long v10, v21, v10

    .line 324
    .end local v21    # "c":J
    .local v10, "c":J
    add-long v14, v19, v10

    .line 325
    .end local v19    # "g":J
    .local v14, "g":J
    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v18

    move-wide v1, v12

    move-wide/from16 v3, v28

    move-wide/from16 v5, v30

    .end local v12    # "d":J
    .end local v28    # "e":J
    .end local v30    # "f":J
    .local v1, "d":J
    .local v3, "e":J
    .local v5, "f":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v12

    move-wide/from16 v20, v1

    .end local v1    # "d":J
    .end local v3    # "e":J
    .end local v5    # "f":J
    .local v20, "d":J
    .restart local v28    # "e":J
    .restart local v30    # "f":J
    add-long v18, v18, v12

    add-long v10, v10, v18

    .line 328
    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v12

    move-wide v1, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, v23

    .end local v14    # "g":J
    .end local v16    # "h":J
    .end local v23    # "a":J
    .local v1, "g":J
    .local v3, "h":J
    .local v5, "a":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v14

    move-wide/from16 v18, v1

    .end local v1    # "g":J
    .end local v3    # "h":J
    .end local v5    # "a":J
    .restart local v16    # "h":J
    .local v18, "g":J
    .restart local v23    # "a":J
    add-long/2addr v12, v14

    sget-object v1, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v2, v1, v7

    add-long/2addr v12, v2

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "t":I
    .restart local v8    # "t":I
    aget-wide v2, v1, v7

    add-long/2addr v12, v2

    add-long v14, v26, v12

    .line 329
    .end local v26    # "b":J
    .local v14, "b":J
    add-long v12, v30, v14

    .line 330
    .end local v30    # "f":J
    .local v12, "f":J
    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v25

    move-wide v1, v10

    move-wide/from16 v3, v20

    move-wide/from16 v5, v28

    .end local v10    # "c":J
    .end local v20    # "d":J
    .end local v28    # "e":J
    .local v1, "c":J
    .local v3, "d":J
    .local v5, "e":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v10

    move-wide/from16 v30, v1

    .end local v1    # "c":J
    .end local v3    # "d":J
    .end local v5    # "e":J
    .restart local v20    # "d":J
    .restart local v28    # "e":J
    .local v30, "c":J
    add-long v25, v25, v10

    add-long v14, v14, v25

    .line 333
    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v10

    move-wide v1, v12

    move-wide/from16 v5, v16

    move-wide/from16 v3, v18

    .end local v12    # "f":J
    .end local v16    # "h":J
    .end local v18    # "g":J
    .local v1, "f":J
    .local v3, "g":J
    .local v5, "h":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v12

    move-wide/from16 v16, v1

    move-wide/from16 v25, v5

    .end local v1    # "f":J
    .end local v3    # "g":J
    .end local v5    # "h":J
    .local v16, "f":J
    .restart local v18    # "g":J
    .local v25, "h":J
    add-long/2addr v10, v12

    sget-object v1, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v2, v1, v8

    add-long/2addr v10, v2

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "t":I
    .restart local v7    # "t":I
    aget-wide v2, v1, v8

    add-long/2addr v10, v2

    add-long v10, v23, v10

    .line 334
    .end local v23    # "a":J
    .local v10, "a":J
    add-long v12, v28, v10

    .line 335
    .end local v28    # "e":J
    .local v12, "e":J
    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v22

    move-wide v1, v14

    move-wide/from16 v5, v20

    move-wide/from16 v3, v30

    .end local v14    # "b":J
    .end local v20    # "d":J
    .end local v30    # "c":J
    .local v1, "b":J
    .local v3, "c":J
    .local v5, "d":J
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v14

    .end local v5    # "d":J
    .restart local v20    # "d":J
    add-long v22, v22, v14

    add-long v5, v10, v22

    .line 295
    .end local v10    # "a":J
    .local v5, "a":J
    add-int/lit8 v9, v9, 0x1

    move-wide v14, v12

    move-wide v11, v1

    move-wide v1, v14

    move-wide v13, v3

    move-wide/from16 v3, v16

    move-wide/from16 v15, v20

    move/from16 v17, v7

    move-wide v7, v5

    move-wide/from16 v5, v18

    move-wide/from16 v18, v25

    goto/16 :goto_1

    .end local v12    # "e":J
    .end local v16    # "f":J
    .end local v20    # "d":J
    .end local v25    # "h":J
    .local v1, "e":J
    .local v3, "f":J
    .local v5, "g":J
    .local v7, "a":J
    .local v11, "b":J
    .restart local v13    # "c":J
    .local v15, "d":J
    .local v17, "t":I
    .local v18, "h":J
    :cond_1
    move-wide/from16 v24, v1

    move-wide/from16 v26, v3

    move-wide/from16 v28, v5

    move-wide/from16 v32, v7

    move-wide/from16 v30, v11

    move-wide/from16 v22, v13

    .line 338
    .end local v1    # "e":J
    .end local v3    # "f":J
    .end local v5    # "g":J
    .end local v7    # "a":J
    .end local v9    # "i":I
    .end local v11    # "b":J
    .end local v13    # "c":J
    .restart local v22    # "c":J
    .restart local v24    # "e":J
    .local v26, "f":J
    .local v28, "g":J
    .local v30, "b":J
    .restart local v32    # "a":J
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    add-long v1, v1, v32

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 339
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    add-long v1, v1, v30

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 340
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    add-long v1, v1, v22

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 341
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    add-long/2addr v1, v15

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 342
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    add-long v1, v1, v24

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 343
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    add-long v1, v1, v26

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 344
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    add-long v1, v1, v28

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 345
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    add-long v1, v1, v18

    iput-wide v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 350
    const/4 v1, 0x0

    iput v1, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 353
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 355
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected processLength(JJ)V
    .locals 2
    .param p1, "lowW"    # J
    .param p3, "hiW"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lowW",
            "hiW"
        }
    .end annotation

    .line 261
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide p3, v0, v1

    .line 267
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    const/16 v1, 0xf

    aput-wide p1, v0, v1

    .line 268
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
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

    .line 236
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 238
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 242
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .line 211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 212
    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 214
    const/4 v2, 0x0

    iput v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 215
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 217
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    aput-byte v2, v4, v3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .end local v3    # "i":I
    :cond_0
    iput v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 223
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide v0, v3, v2

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected restoreState([B)V
    .locals 4
    .param p1, "encodedState"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedState"
        }
    .end annotation

    .line 107
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    const/16 v0, 0xc

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 110
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 112
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 113
    const/16 v0, 0x24

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 114
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 115
    const/16 v0, 0x34

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 116
    const/16 v0, 0x3c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 117
    const/16 v0, 0x44

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 118
    const/16 v0, 0x4c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 119
    const/16 v0, 0x54

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 121
    const/16 v0, 0x5c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x60

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 138
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 141
    iput v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 144
    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 145
    return-void
.end method

.method public update([BII)V
    .locals 4
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

    .line 155
    nop

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 157
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 159
    add-int/lit8 p2, p2, 0x1

    .line 160
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 166
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    if-lt p3, v0, :cond_1

    .line 168
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 170
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 172
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    goto :goto_1

    .line 178
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 180
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 182
    add-int/lit8 p2, p2, 0x1

    .line 183
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 185
    :cond_2
    return-void
.end method

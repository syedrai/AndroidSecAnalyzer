.class public Lorg/bouncycastle/crypto/digests/GOST3411Digest;
.super Ljava/lang/Object;
.source "GOST3411Digest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final C2:[B

.field private static final DIGEST_LENGTH:I = 0x20


# instance fields
.field private C:[[B

.field private H:[B

.field private K:[B

.field private L:[B

.field private M:[B

.field S:[B

.field private Sum:[B

.field U:[B

.field V:[B

.field W:[B

.field a:[B

.field private byteCount:J

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field private sBox:[B

.field wS:[S

.field w_S:[S

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 285
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 5
    .param p1, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    .line 27
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v1, v3

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    .line 29
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    .line 33
    new-instance v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 146
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    .line 162
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    .line 185
    const/16 v1, 0x10

    new-array v3, v1, [S

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v1, v1, [S

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    .line 196
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    .line 197
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    .line 46
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 48
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 50
    const-string v0, "D-A"

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->getSBox(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 53
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/GOST3411Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/GOST3411Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    .line 27
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    .line 29
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    .line 33
    new-instance v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 146
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    .line 162
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    .line 185
    const/16 v1, 0x10

    new-array v2, v1, [S

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v1, v1, [S

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    .line 196
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    .line 197
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    .line 87
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 89
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 91
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 92
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "sBoxParam"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sBoxParam"
        }
    .end annotation

    .line 62
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 63
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 5
    .param p1, "sBoxParam"    # [B
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sBoxParam",
            "purpose"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    .line 27
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v1, v3

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    .line 29
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    .line 33
    new-instance v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 146
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    .line 162
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    .line 185
    const/16 v1, 0x10

    new-array v3, v1, [S

    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v1, v1, [S

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    .line 196
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    .line 197
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    .line 71
    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 73
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 75
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 78
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 79
    return-void
.end method

.method private A([B)[B
    .locals 4
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    aget-byte v2, p1, v0

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "j":I
    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x18

    invoke-static {p1, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->a:[B

    invoke-static {v3, v0, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    return-object p1
.end method

.method private E([B[BI[BI)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "s"    # [B
    .param p3, "sOff"    # I
    .param p4, "in"    # [B
    .param p5, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "s",
            "sOff",
            "in",
            "inOff"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 181
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p4, p5, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 182
    return-void
.end method

.method private P([B)[B
    .locals 4
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 153
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 154
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v0, 0x10

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 155
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, 0x18

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "k":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->K:[B

    return-object v0
.end method

.method private cpyBytesToShort([B[S)V
    .locals 3
    .param p1, "S"    # [B
    .param p2, "wS"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "S",
            "wS"
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 347
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private cpyShortToBytes([S[B)V
    .locals 3
    .param p1, "wS"    # [S
    .param p2, "S"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wS",
            "S"
        }
    .end annotation

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 355
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-short v2, p1, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 356
    mul-int/lit8 v1, v0, 0x2

    aget-short v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private finish()V
    .locals 4

    .line 258
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 260
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 266
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 267
    return-void
.end method

.method private fw([B)V
    .locals 6
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cpyBytesToShort([B[S)V

    .line 190
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v4, 0x1

    aget-short v3, v3, v4

    xor-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v5, 0x2

    aget-short v3, v3, v5

    xor-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v5, 0x3

    aget-short v3, v3, v5

    xor-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/16 v5, 0xc

    aget-short v3, v3, v5

    xor-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/16 v5, 0xf

    aget-short v3, v3, v5

    xor-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, v0, v5

    .line 191
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->wS:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->w_S:[S

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cpyShortToBytes([S[B)V

    .line 193
    return-void
.end method

.method private sumByteArray([B)V
    .locals 5
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "carry":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 335
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 337
    .local v2, "sum":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v1

    .line 339
    ushr-int/lit8 v0, v2, 0x8

    .line 333
    .end local v2    # "sum":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 367
    new-instance v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>(Lorg/bouncycastle/crypto/digests/GOST3411Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    .line 394
    const/16 v0, 0x100

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3
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

    .line 273
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->finish()V

    .line 275
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 279
    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "GOST3411"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 362
    const/16 v0, 0x20

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 101
    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock([BI)V
    .locals 10
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

    .line 201
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-static {p1, p2, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    invoke-static {v1, v6, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    invoke-static {v1, v6, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 211
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "j":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->P([B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->E([B[BI[BI)V

    .line 217
    const/4 v1, 0x1

    move v8, v1

    .local v8, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v8, v1, :cond_3

    .line 219
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v9

    .line 220
    .local v9, "tmpA":[B
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    if-ge v1, v7, :cond_1

    .line 222
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v3, v9, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v4, v4, v8

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 224
    .end local v1    # "j":I
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    .line 225
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v7, :cond_2

    .line 227
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->V:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 230
    .end local v1    # "j":I
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->P([B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    mul-int/lit8 v3, v8, 0x8

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    mul-int/lit8 v5, v8, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->E([B[BI[BI)V

    .line 217
    .end local v9    # "tmpA":[B
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 234
    .end local v8    # "i":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_4
    const/16 v2, 0xc

    if-ge v1, v2, :cond_4

    .line 236
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 238
    .end local v1    # "n":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "n":I
    :goto_5
    if-ge v1, v7, :cond_5

    .line 240
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    aget-byte v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 243
    .end local v1    # "n":I
    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    .line 245
    const/4 v1, 0x0

    .restart local v1    # "n":I
    :goto_6
    if-ge v1, v7, :cond_6

    .line 247
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    aget-byte v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 249
    .end local v1    # "n":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "n":I
    :goto_7
    const/16 v2, 0x3d

    if-ge v1, v2, :cond_7

    .line 251
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->fw([B)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 253
    .end local v1    # "n":I
    :cond_7
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v3, v3

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    return-void
.end method

.method public reset()V
    .locals 4

    .line 293
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 298
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    aput-byte v0, v2, v1

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 302
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    aput-byte v0, v2, v1

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 306
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    aput-byte v0, v2, v1

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 308
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 310
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v3

    aput-byte v0, v2, v1

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 312
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    const/4 v3, 0x3

    aget-object v2, v2, v3

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 314
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v3

    aput-byte v0, v2, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 316
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 318
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    aput-byte v0, v2, v1

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 320
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 322
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    aput-byte v0, v2, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 325
    .end local v1    # "i":I
    :cond_6
    sget-object v1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C2:[B

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 6
    .param p1, "other"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 372
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    .line 374
    .local v0, "t":Lorg/bouncycastle/crypto/digests/GOST3411Digest;
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    .line 375
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sBox:[B

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 377
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 379
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->L:[B

    array-length v4, v4

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->M:[B

    array-length v4, v4

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v4, v4

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v3

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v4, v2

    array-length v2, v2

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v4, v2

    array-length v2, v2

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    .line 389
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    .line 390
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

    .line 106
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 107
    iget v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sumByteArray([B)V

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 111
    iput v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    .line 113
    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    .line 114
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

    .line 118
    nop

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 120
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    .line 121
    add-int/lit8 p2, p2, 0x1

    .line 122
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 125
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    if-lt p3, v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->sumByteArray([B)V

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 133
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->byteCount:J

    goto :goto_1

    .line 137
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 139
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;->update(B)V

    .line 140
    add-int/lit8 p2, p2, 0x1

    .line 141
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 143
    :cond_2
    return-void
.end method

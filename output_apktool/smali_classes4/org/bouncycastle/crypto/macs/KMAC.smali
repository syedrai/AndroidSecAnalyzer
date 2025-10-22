.class public Lorg/bouncycastle/crypto/macs/KMAC;
.super Ljava/lang/Object;
.source "KMAC.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;
.implements Lorg/bouncycastle/crypto/Xof;


# static fields
.field private static final padding:[B


# instance fields
.field private final bitLength:I

.field private final cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

.field private firstOutput:Z

.field private initialised:Z

.field private key:[B

.field private final outputLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/16 v0, 0x64

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "bitLength"    # I
    .param p2, "S"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "S"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const-string v1, "KMAC"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(I[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    .line 41
    iput p1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->bitLength:I

    .line 42
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->outputLength:I

    .line 43
    return-void
.end method

.method private bytePad([BI)V
    .locals 6
    .param p1, "X"    # [B
    .param p2, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "X",
            "w"
        }
    .end annotation

    .line 181
    int-to-long v0, p2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    .line 182
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    .line 183
    invoke-static {p1}, Lorg/bouncycastle/crypto/macs/KMAC;->encode([B)[B

    move-result-object v1

    .line 184
    .local v1, "encX":[B
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    .line 186
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    rem-int/2addr v3, p2

    sub-int v3, p2, v3

    .line 188
    .local v3, "required":I
    if-lez v3, :cond_1

    if-eq v3, p2, :cond_1

    .line 190
    :goto_0
    sget-object v4, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 192
    sget-object v4, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    sget-object v5, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    array-length v5, v5

    invoke-virtual {p0, v4, v2, v5}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    .line 193
    sget-object v4, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 196
    :cond_0
    sget-object v4, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    invoke-virtual {p0, v4, v2, v3}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    .line 198
    :cond_1
    return-void
.end method

.method private static encode([B)[B
    .locals 2
    .param p0, "X"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "X"
        }
    .end annotation

    .line 202
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    if-eqz v0, :cond_1

    .line 103
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->getMacSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    .line 110
    .local v0, "encOut":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    goto :goto_0

    .line 105
    .end local v0    # "encOut":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KMAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->getMacSize()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    move-result v0

    .line 115
    .local v0, "rv":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->reset()V

    .line 117
    return v0
.end method

.method public doFinal([BII)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    if-eqz v0, :cond_1

    .line 124
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-eqz v0, :cond_0

    .line 129
    mul-int/lit8 v0, p3, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    .line 131
    .local v0, "encOut":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    goto :goto_0

    .line 126
    .end local v0    # "encOut":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KMAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    move-result v0

    .line 136
    .local v0, "rv":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->reset()V

    .line 138
    return v0
.end method

.method public doOutput([BII)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    if-eqz v0, :cond_1

    .line 145
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-eqz v0, :cond_0

    .line 150
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    .line 152
    .local v0, "encOut":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 154
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    goto :goto_0

    .line 147
    .end local v0    # "encOut":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KMAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doOutput([BII)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KMAC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->outputLength:I

    return v0
.end method

.method public getMacSize()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->outputLength:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 48
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 50
    .local v0, "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->key:[B

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    .line 53
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->reset()V

    .line 54
    return-void
.end method

.method public reset()V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->reset()V

    .line 164
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->key:[B

    if-eqz v0, :cond_1

    .line 166
    iget v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->bitLength:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->key:[B

    const/16 v1, 0xa8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/macs/KMAC;->bytePad([BI)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->key:[B

    const/16 v1, 0x88

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/macs/KMAC;->bytePad([BI)V

    .line 176
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    .line 177
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update(B)V

    .line 85
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KMAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update([BII)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 96
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KMAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

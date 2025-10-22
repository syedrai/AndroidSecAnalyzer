.class public Lorg/bouncycastle/crypto/digests/ParallelHash;
.super Ljava/lang/Object;
.source "ParallelHash.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Xof;
.implements Lorg/bouncycastle/crypto/Digest;


# static fields
.field private static final N_PARALLEL_HASH:[B


# instance fields
.field private final B:I

.field private final bitLength:I

.field private bufOff:I

.field private final buffer:[B

.field private final compressor:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

.field private final compressorBuffer:[B

.field private final cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

.field private firstOutput:Z

.field private nCount:I

.field private final outputLength:I

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "ParallelHash"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/digests/ParallelHash;->N_PARALLEL_HASH:[B

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 6
    .param p1, "bitLength"    # I
    .param p2, "S"    # [B
    .param p3, "B"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "S",
            "B"
        }
    .end annotation

    .line 46
    mul-int/lit8 v4, p1, 0x2

    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "bitLength":I
    .end local p2    # "S":[B
    .end local p3    # "B":I
    .local v1, "bitLength":I
    .local v2, "S":[B
    .local v3, "B":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/ParallelHash;-><init>(I[BIILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 47
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 6
    .param p1, "bitLength"    # I
    .param p2, "S"    # [B
    .param p3, "B"    # I
    .param p4, "outputSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "S",
            "B",
            "outputSize"
        }
    .end annotation

    .line 51
    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "bitLength":I
    .end local p2    # "S":[B
    .end local p3    # "B":I
    .end local p4    # "outputSize":I
    .local v1, "bitLength":I
    .local v2, "S":[B
    .local v3, "B":I
    .local v4, "outputSize":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/ParallelHash;-><init>(I[BIILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 52
    return-void
.end method

.method public constructor <init>(I[BIILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 3
    .param p1, "bitLength"    # I
    .param p2, "S"    # [B
    .param p3, "B"    # I
    .param p4, "outputSize"    # I
    .param p5, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "S",
            "B",
            "outputSize",
            "purpose"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    sget-object v1, Lorg/bouncycastle/crypto/digests/ParallelHash;->N_PARALLEL_HASH:[B

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(I[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    .line 56
    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const/4 v1, 0x0

    new-array v2, v1, [B

    new-array v1, v1, [B

    invoke-direct {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(I[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressor:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    .line 57
    iput p1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bitLength:I

    .line 58
    iput p3, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->B:I

    .line 59
    add-int/lit8 v0, p4, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->outputLength:I

    .line 60
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->buffer:[B

    .line 61
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressorBuffer:[B

    .line 62
    iput-object p5, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 64
    invoke-static {p0, p1, p5}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 66
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->reset()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/ParallelHash;)V
    .locals 2
    .param p1, "source"    # Lorg/bouncycastle/crypto/digests/ParallelHash;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/CSHAKEDigest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    .line 72
    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressor:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/CSHAKEDigest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressor:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    .line 73
    iget v0, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->bitLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bitLength:I

    .line 74
    iget v0, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->B:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->B:I

    .line 75
    iget v0, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->outputLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->outputLength:I

    .line 76
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->buffer:[B

    .line 77
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressorBuffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressorBuffer:[B

    .line 78
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 80
    iget-boolean v0, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->firstOutput:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->firstOutput:Z

    .line 81
    iget v0, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->nCount:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->nCount:I

    .line 82
    iget v0, p1, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    .line 84
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bitLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 85
    return-void
.end method

.method private compress()V
    .locals 3

    .line 151
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/digests/ParallelHash;->compress([BII)V

    .line 152
    iput v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    .line 153
    return-void
.end method

.method private compress([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "offSet"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "offSet",
            "len"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressor:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressor:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressorBuffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressorBuffer:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressorBuffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->compressorBuffer:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 162
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->nCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->nCount:I

    .line 163
    return-void
.end method

.method private wrapUp(I)V
    .locals 5
    .param p1, "outputSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputSize"
        }
    .end annotation

    .line 167
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->compress()V

    .line 171
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->nCount:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    .line 172
    .local v0, "nOut":[B
    mul-int/lit8 v1, p1, 0x8

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v1

    .line 174
    .local v1, "encOut":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 175
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    array-length v3, v1

    invoke-virtual {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 177
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->firstOutput:Z

    .line 178
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
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

    .line 183
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->firstOutput:Z

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->outputLength:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->wrapUp(I)V

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->getDigestSize()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    move-result v0

    .line 190
    .local v0, "rv":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->reset()V

    .line 192
    return v0
.end method

.method public doFinal([BII)I
    .locals 1
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

    .line 197
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->firstOutput:Z

    if-eqz v0, :cond_0

    .line 199
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->outputLength:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->wrapUp(I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    move-result v0

    .line 204
    .local v0, "rv":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->reset()V

    .line 206
    return v0
.end method

.method public doOutput([BII)I
    .locals 1
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

    .line 211
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->firstOutput:Z

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->wrapUp(I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doOutput([BII)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParallelHash"

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

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->outputLength:I

    return v0
.end method

.method public reset()V
    .locals 4

    .line 221
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->reset()V

    .line 222
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 224
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->B:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    .line 225
    .local v0, "hdr":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 227
    iput v3, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->nCount:I

    .line 228
    iput v3, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    .line 229
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->firstOutput:Z

    .line 230
    return-void
.end method

.method public update(B)V
    .locals 3
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

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    aput-byte p1, v0, v1

    .line 106
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->compress()V

    .line 110
    :cond_0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "i":I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    if-eqz v1, :cond_1

    .line 123
    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->buffer:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->buffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v1, v2

    move v0, v3

    goto :goto_0

    .line 128
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 130
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->compress()V

    .line 134
    :cond_1
    if-ge v0, p3, :cond_2

    .line 136
    :goto_1
    sub-int v1, p3, v0

    iget v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->B:I

    if-lt v1, v2, :cond_2

    .line 138
    add-int v1, p2, v0

    iget v2, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->B:I

    invoke-direct {p0, p1, v1, v2}, Lorg/bouncycastle/crypto/digests/ParallelHash;->compress([BII)V

    .line 139
    iget v1, p0, Lorg/bouncycastle/crypto/digests/ParallelHash;->B:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 143
    :cond_2
    :goto_2
    if-ge v0, p3, :cond_3

    .line 145
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/ParallelHash;->update(B)V

    move v0, v1

    goto :goto_2

    .line 147
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_3
    return-void
.end method

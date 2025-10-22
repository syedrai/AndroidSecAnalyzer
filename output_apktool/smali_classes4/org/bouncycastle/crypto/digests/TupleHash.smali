.class public Lorg/bouncycastle/crypto/digests/TupleHash;
.super Ljava/lang/Object;
.source "TupleHash.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Xof;
.implements Lorg/bouncycastle/crypto/Digest;


# static fields
.field private static final N_TUPLE_HASH:[B


# instance fields
.field private final bitLength:I

.field private final cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

.field private firstOutput:Z

.field private final outputLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "TupleHash"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/digests/TupleHash;->N_TUPLE_HASH:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
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

    .line 34
    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/TupleHash;-><init>(I[BI)V

    .line 35
    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 2
    .param p1, "bitLength"    # I
    .param p2, "S"    # [B
    .param p3, "outputSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "S",
            "outputSize"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    sget-object v1, Lorg/bouncycastle/crypto/digests/TupleHash;->N_TUPLE_HASH:[B

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(I[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    .line 40
    iput p1, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->bitLength:I

    .line 41
    add-int/lit8 v0, p3, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->outputLength:I

    .line 43
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/TupleHash;->reset()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/TupleHash;)V
    .locals 2
    .param p1, "original"    # Lorg/bouncycastle/crypto/digests/TupleHash;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "original"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/CSHAKEDigest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    iget v0, v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->fixedOutputLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->bitLength:I

    .line 50
    iget v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->bitLength:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->outputLength:I

    .line 51
    iget-boolean v0, p1, Lorg/bouncycastle/crypto/digests/TupleHash;->firstOutput:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->firstOutput:Z

    .line 52
    return-void
.end method

.method private wrapUp(I)V
    .locals 4
    .param p1, "outputSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputSize"
        }
    .end annotation

    .line 85
    int-to-long v0, p1

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    .line 87
    .local v0, "encOut":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 89
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->firstOutput:Z

    .line 90
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

    .line 95
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->firstOutput:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/TupleHash;->getDigestSize()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/TupleHash;->wrapUp(I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/TupleHash;->getDigestSize()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    move-result v0

    .line 102
    .local v0, "rv":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/TupleHash;->reset()V

    .line 104
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

    .line 109
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->firstOutput:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/TupleHash;->getDigestSize()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/TupleHash;->wrapUp(I)V

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    move-result v0

    .line 116
    .local v0, "rv":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/TupleHash;->reset()V

    .line 118
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

    .line 123
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->firstOutput:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/TupleHash;->wrapUp(I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doOutput([BII)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TupleHash"

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

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->outputLength:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->reset()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->firstOutput:Z

    .line 135
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lorg/bouncycastle/crypto/digests/XofUtils;->encode(B)[B

    move-result-object v0

    .line 73
    .local v0, "bytes":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 74
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

    .line 79
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/digests/XofUtils;->encode([BII)[B

    move-result-object v0

    .line 80
    .local v0, "bytes":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/TupleHash;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    .line 81
    return-void
.end method

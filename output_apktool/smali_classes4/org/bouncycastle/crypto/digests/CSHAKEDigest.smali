.class public Lorg/bouncycastle/crypto/digests/CSHAKEDigest;
.super Lorg/bouncycastle/crypto/digests/SHAKEDigest;
.source "CSHAKEDigest.java"


# static fields
.field private static final padding:[B


# instance fields
.field private final diff:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/16 v0, 0x64

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->padding:[B

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;[B[B)V
    .locals 3
    .param p1, "bitLength"    # I
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .param p3, "N"    # [B
    .param p4, "S"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "purpose",
            "N",
            "S"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 39
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    if-eqz p4, :cond_2

    array-length v0, p4

    if-nez v0, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->rate:I

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->encodeString([B)[B

    move-result-object v1

    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->encodeString([B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diffPadAndAbsorb()V

    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    .line 48
    :goto_1
    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 1
    .param p1, "bitLength"    # I
    .param p2, "N"    # [B
    .param p3, "S"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "N",
            "S"
        }
    .end annotation

    .line 24
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;[B[B)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/CSHAKEDigest;)V
    .locals 1
    .param p1, "source"    # Lorg/bouncycastle/crypto/digests/CSHAKEDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    .line 54
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    .line 55
    return-void
.end method

.method private diffPadAndAbsorb()V
    .locals 6

    .line 60
    iget v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->rate:I

    div-int/lit8 v0, v0, 0x8

    .line 61
    .local v0, "blockSize":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->absorb([BII)V

    .line 63
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    array-length v1, v1

    rem-int/2addr v1, v0

    .line 66
    .local v1, "delta":I
    if-eqz v1, :cond_1

    .line 68
    sub-int v2, v0, v1

    .line 70
    .local v2, "required":I
    :goto_0
    sget-object v4, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->padding:[B

    array-length v4, v4

    if-le v2, v4, :cond_0

    .line 72
    sget-object v4, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->padding:[B

    sget-object v5, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->padding:[B

    array-length v5, v5

    invoke-virtual {p0, v4, v3, v5}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->absorb([BII)V

    .line 73
    sget-object v4, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->padding:[B

    array-length v4, v4

    sub-int/2addr v2, v4

    goto :goto_0

    .line 76
    :cond_0
    sget-object v4, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->padding:[B

    invoke-virtual {p0, v4, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->absorb([BII)V

    .line 78
    .end local v2    # "required":I
    :cond_1
    return-void
.end method

.method private encodeString([B)[B
    .locals 4
    .param p1, "str"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 82
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
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

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    if-eqz v0, :cond_1

    .line 99
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->squeezing:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->absorbBits(II)V

    .line 104
    :cond_0
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->squeeze([BIJ)V

    .line 106
    return p3

    .line 110
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 92
    iget v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->fixedOutputLength:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSHAKE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 116
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diffPadAndAbsorb()V

    .line 122
    :cond_0
    return-void
.end method

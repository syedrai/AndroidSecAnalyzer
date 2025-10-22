.class public Lorg/bouncycastle/util/Fingerprint;
.super Ljava/lang/Object;
.source "Fingerprint.java"


# static fields
.field private static encodingTable:[C


# instance fields
.field private final fingerprint:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/util/Fingerprint;->encodingTable:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 27
    const/16 v0, 0xa0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/util/Fingerprint;-><init>([BI)V

    .line 28
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "source"    # [B
    .param p2, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "bitLength"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Fingerprint;->calculateFingerprint([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/util/Fingerprint;->fingerprint:[B

    .line 39
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .param p1, "source"    # [B
    .param p2, "useSHA512t"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "useSHA512t"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p2, :cond_0

    .line 52
    invoke-static {p1}, Lorg/bouncycastle/util/Fingerprint;->calculateFingerprintSHA512_160([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/util/Fingerprint;->fingerprint:[B

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/Fingerprint;->calculateFingerprint([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/util/Fingerprint;->fingerprint:[B

    .line 58
    :goto_0
    return-void
.end method

.method public static calculateFingerprint([B)[B
    .locals 1
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 109
    const/16 v0, 0xa0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Fingerprint;->calculateFingerprint([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static calculateFingerprint([BI)[B
    .locals 4
    .param p0, "input"    # [B
    .param p1, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "bitLength"
        }
    .end annotation

    .line 122
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 129
    .local v0, "digest":Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 131
    div-int/lit8 v1, p1, 0x8

    new-array v1, v1, [B

    .line 133
    .local v1, "rv":[B
    div-int/lit8 v3, p1, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 135
    return-object v1

    .line 124
    .end local v0    # "digest":Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .end local v1    # "rv":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateFingerprintSHA512_160([B)[B
    .locals 3
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 148
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    .line 150
    .local v0, "digest":Lorg/bouncycastle/crypto/digests/SHA512tDigest;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update([BII)V

    .line 152
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 154
    .local v1, "rv":[B
    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->doFinal([BI)I

    .line 156
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 83
    if-ne p1, p0, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/util/Fingerprint;

    if-eqz v0, :cond_1

    .line 89
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/util/Fingerprint;

    iget-object v0, v0, Lorg/bouncycastle/util/Fingerprint;->fingerprint:[B

    iget-object v1, p0, Lorg/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    .line 92
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getFingerprint()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/util/Fingerprint;->fingerprint:[B

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 70
    if-lez v1, :cond_0

    .line 72
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    :cond_0
    sget-object v2, Lorg/bouncycastle/util/Fingerprint;->encodingTable:[C

    iget-object v3, p0, Lorg/bouncycastle/util/Fingerprint;->fingerprint:[B

    aget-byte v3, v3, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    sget-object v2, Lorg/bouncycastle/util/Fingerprint;->encodingTable:[C

    iget-object v3, p0, Lorg/bouncycastle/util/Fingerprint;->fingerprint:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
.super Lorg/bouncycastle/crypto/PBEParametersGenerator;
.source "OpenSSLPBEParametersGenerator.java"


# instance fields
.field private final digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createMD5()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 39
    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 7
    .param p1, "bytesNeeded"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytesNeeded"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 61
    .local v0, "buf":[B
    new-array v1, p1, [B

    .line 62
    .local v1, "key":[B
    const/4 v2, 0x0

    .line 66
    .local v2, "offset":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 67
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 69
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v0, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 71
    array-length v3, v0

    if-le p1, v3, :cond_0

    array-length v3, v0

    goto :goto_1

    :cond_0
    move v3, p1

    .line 72
    .local v3, "len":I
    :goto_1
    invoke-static {v0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    add-int/2addr v2, v3

    .line 76
    sub-int/2addr p1, v3

    .line 77
    if-nez p1, :cond_1

    .line 79
    nop

    .line 87
    .end local v3    # "len":I
    return-object v1

    .line 83
    .restart local v3    # "len":I
    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 84
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 85
    .end local v3    # "len":I
    goto :goto_0
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySize"
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySize"
        }
    .end annotation

    .line 101
    div-int/lit8 p1, p1, 0x8

    .line 103
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 105
    .local v0, "dKey":[B
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 4
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySize",
            "ivSize"
        }
    .end annotation

    .line 122
    div-int/lit8 p1, p1, 0x8

    .line 123
    div-int/lit8 p2, p2, 0x8

    .line 125
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 127
    .local v0, "dKey":[B
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method

.method public init([B[B)V
    .locals 1
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "password",
            "salt"
        }
    .end annotation

    .line 51
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 52
    return-void
.end method

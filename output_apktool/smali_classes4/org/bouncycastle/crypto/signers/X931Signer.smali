.class public Lorg/bouncycastle/crypto/signers/X931Signer;
.super Ljava/lang/Object;
.source "X931Signer.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# static fields
.field public static final TRAILER_IMPLICIT:I = 0xbc

.field public static final TRAILER_RIPEMD128:I = 0x32cc

.field public static final TRAILER_RIPEMD160:I = 0x31cc

.field public static final TRAILER_SHA1:I = 0x33cc

.field public static final TRAILER_SHA224:I = 0x38cc

.field public static final TRAILER_SHA256:I = 0x34cc

.field public static final TRAILER_SHA384:I = 0x36cc

.field public static final TRAILER_SHA512:I = 0x35cc

.field public static final TRAILER_WHIRLPOOL:I = 0x37cc


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

.field private keyBits:I

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "digest"
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/signers/X931Signer;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V
    .locals 5
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "implicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "digest",
            "implicit"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 66
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 68
    if-eqz p3, :cond_0

    .line 70
    const/16 v0, 0xbc

    iput v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->trailer:I

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    .local v0, "trailerObj":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->trailer:I

    .line 85
    .end local v0    # "trailerObj":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 82
    .restart local v0    # "trailerObj":Ljava/lang/Integer;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no valid trailer for digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "block"
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 123
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private createSignatureBlock(I)V
    .locals 5
    .param p1, "trailer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trailer"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 179
    .local v0, "digSize":I
    const/16 v1, 0xbc

    if-ne p1, v1, :cond_0

    .line 181
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 182
    .local v1, "delta":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-interface {v2, v3, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 183
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, -0x44

    aput-byte v4, v2, v3

    goto :goto_0

    .line 187
    .end local v1    # "delta":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 188
    .restart local v1    # "delta":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-interface {v2, v3, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 189
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 190
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 193
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    const/4 v3, 0x0

    const/16 v4, 0x6b

    aput-byte v4, v2, v3

    .line 194
    add-int/lit8 v2, v1, -0x2

    .local v2, "i":I
    :goto_1
    if-eqz v2, :cond_1

    .line 196
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    const/16 v4, -0x45

    aput-byte v4, v3, v2

    .line 194
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 198
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    add-int/lit8 v3, v1, -0x1

    const/16 v4, -0x46

    aput-byte v4, v2, v3

    .line 199
    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 162
    iget v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->trailer:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/X931Signer;->createSignatureBlock(I)V

    .line 164
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 165
    .local v0, "t":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/X931Signer;->clearBlock([B)V

    .line 167
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result v1

    .line 170
    .local v1, "size":I
    invoke-static {v1, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v2

    return-object v2
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forSigning",
            "param"
        }
    .end annotation

    .line 104
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 106
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->keyBits:I

    .line 110
    iget v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->keyBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    .line 112
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/X931Signer;->reset()V

    .line 113
    return-void
.end method

.method public reset()V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 153
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 134
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "off",
            "len"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 145
    return-void
.end method

.method public verifySignature([B)Z
    .locals 7
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    nop

    .line 217
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 220
    .local v1, "t":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 222
    move-object v0, v1

    .local v0, "f":Ljava/math/BigInteger;
    goto :goto_0

    .line 226
    .end local v0    # "f":Ljava/math/BigInteger;
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->kParam:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_2

    .line 229
    move-object v0, v1

    .line 237
    .restart local v0    # "f":Ljava/math/BigInteger;
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->trailer:I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/signers/X931Signer;->createSignatureBlock(I)V

    .line 239
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v2, v2

    invoke-static {v2, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v2

    .line 241
    .local v2, "fBlock":[B
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-static {v3, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    .line 244
    .local v3, "rv":Z
    iget v4, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->trailer:I

    const/16 v5, 0x3acc

    if-ne v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 246
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x40

    aput-byte v6, v4, v5

    .line 247
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-static {v4, v2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    .line 250
    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/X931Signer;->block:[B

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/signers/X931Signer;->clearBlock([B)V

    .line 251
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/signers/X931Signer;->clearBlock([B)V

    .line 253
    return v3

    .line 233
    .end local v0    # "f":Ljava/math/BigInteger;
    .end local v2    # "fBlock":[B
    .end local v3    # "rv":Z
    :cond_2
    return v0

    .line 212
    .end local v1    # "t":Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

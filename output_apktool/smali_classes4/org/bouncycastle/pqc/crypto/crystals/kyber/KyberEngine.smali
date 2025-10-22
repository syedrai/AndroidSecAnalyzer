.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
.super Ljava/lang/Object;
.source "KyberEngine.java"


# static fields
.field private static final KyberEta2:I = 0x2

.field private static final KyberIndCpaMsgBytes:I = 0x20

.field public static final KyberN:I = 0x100

.field public static final KyberPolyBytes:I = 0x180

.field public static final KyberQ:I = 0xd01

.field public static final KyberQinv:I = 0xf301

.field private static final KyberSharedSecretBytes:I = 0x20

.field public static final KyberSymBytes:I = 0x20


# instance fields
.field private final CryptoBytes:I

.field private final CryptoCipherTextBytes:I

.field private final CryptoPublicKeyBytes:I

.field private final CryptoSecretKeyBytes:I

.field private final KyberCipherTextBytes:I

.field private final KyberEta1:I

.field private final KyberIndCpaBytes:I

.field private final KyberIndCpaPublicKeyBytes:I

.field private final KyberIndCpaSecretKeyBytes:I

.field private final KyberK:I

.field private final KyberPolyCompressedBytes:I

.field private final KyberPolyVecBytes:I

.field private final KyberPolyVecCompressedBytes:I

.field private final KyberPublicKeyBytes:I

.field private final KyberSecretKeyBytes:I

.field private indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

.field private random:Ljava/security/SecureRandom;

.field private final sessionKeyLength:I

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;


# direct methods
.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "k"    # I
    .param p2, "usingAes"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "usingAes"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberK:I

    .line 143
    const/4 v0, 0x2

    const/16 v1, 0x80

    const/16 v2, 0x20

    packed-switch p1, :pswitch_data_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "K: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported for Crystals Kyber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_0
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    .line 159
    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    .line 160
    mul-int/lit16 v0, p1, 0x160

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    .line 161
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    .line 162
    goto :goto_0

    .line 152
    :pswitch_1
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    .line 153
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    .line 154
    mul-int/lit16 v0, p1, 0x140

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    .line 155
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    .line 156
    goto :goto_0

    .line 146
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    .line 147
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    .line 148
    mul-int/lit16 v0, p1, 0x140

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    .line 149
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    .line 150
    nop

    .line 167
    :goto_0
    mul-int/lit16 v0, p1, 0x180

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    .line 168
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    .line 169
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    .line 170
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaBytes:I

    .line 171
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPublicKeyBytes:I

    .line 172
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    .line 173
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberCipherTextBytes:I

    .line 176
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoBytes:I

    .line 177
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoSecretKeyBytes:I

    .line 178
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPublicKeyBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoPublicKeyBytes:I

    .line 179
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberCipherTextBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoCipherTextBytes:I

    .line 182
    if-eqz p2, :cond_0

    .line 184
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    goto :goto_1

    .line 188
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    .line 191
    :goto_1
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    .line 192
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cmov([B[BIZ)V
    .locals 1
    .param p1, "r"    # [B
    .param p2, "x"    # [B
    .param p3, "xlen"    # I
    .param p4, "b"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "x",
            "xlen",
            "b"
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 296
    invoke-static {p2, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {p1, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :goto_0
    return-void
.end method

.method public static getKyberEta2()I
    .locals 1

    .line 56
    const/4 v0, 0x2

    return v0
.end method

.method public static getKyberIndCpaMsgBytes()I
    .locals 1

    .line 61
    const/16 v0, 0x20

    return v0
.end method


# virtual methods
.method public generateKemKeyPair()[[B
    .locals 10

    .line 201
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->generateKeyPair()[[B

    move-result-object v0

    .line 203
    .local v0, "indCpaKeyPair":[[B
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    new-array v1, v1, [B

    .line 205
    .local v1, "s":[B
    const/4 v2, 0x1

    aget-object v3, v0, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 209
    .local v4, "hashedPublicKey":[B
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    aget-object v7, v0, v5

    invoke-virtual {v6, v4, v7, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    .line 211
    new-array v6, v3, [B

    .line 212
    .local v6, "z":[B
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 214
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    new-array v7, v7, [B

    .line 215
    .local v7, "outputPublicKey":[B
    aget-object v8, v0, v5

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    invoke-static {v8, v5, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    array-length v8, v7

    sub-int/2addr v8, v3

    invoke-static {v7, v5, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    array-length v9, v7

    sub-int/2addr v9, v3

    array-length v3, v7

    invoke-static {v7, v9, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 v9, 0x5

    new-array v9, v9, [[B

    aput-object v8, v9, v5

    aput-object v3, v9, v2

    const/4 v2, 0x2

    aput-object v1, v9, v2

    const/4 v2, 0x3

    aput-object v4, v9, v2

    const/4 v2, 0x4

    aput-object v6, v9, v2

    return-object v9
.end method

.method public getCryptoBytes()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoBytes:I

    return v0
.end method

.method public getCryptoCipherTextBytes()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoCipherTextBytes:I

    return v0
.end method

.method public getCryptoPublicKeyBytes()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoPublicKeyBytes:I

    return v0
.end method

.method public getCryptoSecretKeyBytes()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoSecretKeyBytes:I

    return v0
.end method

.method public getKyberCipherTextBytes()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberCipherTextBytes:I

    return v0
.end method

.method public getKyberEta1()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    return v0
.end method

.method public getKyberIndCpaBytes()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaBytes:I

    return v0
.end method

.method public getKyberIndCpaPublicKeyBytes()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    return v0
.end method

.method public getKyberIndCpaSecretKeyBytes()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    return v0
.end method

.method public getKyberK()I
    .locals 1

    .line 122
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberK:I

    return v0
.end method

.method public getKyberPolyCompressedBytes()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    return v0
.end method

.method public getKyberPolyVecBytes()I
    .locals 1

    .line 127
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    return v0
.end method

.method public getKyberPolyVecCompressedBytes()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    return v0
.end method

.method public getKyberPublicKeyBytes()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPublicKeyBytes:I

    return v0
.end method

.method public getKyberSecretKeyBytes()I
    .locals 1

    .line 91
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    return v0
.end method

.method public getRandomBytes([B)V
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 307
    return-void
.end method

.method public getSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    .line 197
    return-void
.end method

.method public kemDecrypt([B[B)[B
    .locals 9
    .param p1, "cipherText"    # [B
    .param p2, "secretKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipherText",
            "secretKey"
        }
    .end annotation

    .line 270
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 271
    .local v1, "buf":[B
    new-array v2, v0, [B

    .line 273
    .local v2, "kr":[B
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    array-length v4, p2

    invoke-static {p2, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 275
    .local v3, "publicKey":[B
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v4, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->decrypt([B[B)[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-static {v4, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    sub-int/2addr v4, v0

    invoke-static {p2, v4, v1, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_g([B[B)V

    .line 281
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    array-length v7, v2

    invoke-static {v2, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {v0, v4, v3, v7}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->encrypt([B[B[B)[B

    move-result-object v0

    .line 283
    .local v0, "cmp":[B
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 285
    .local v4, "fail":Z
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v7, v2, p1, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    .line 287
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    sub-int/2addr v7, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    invoke-static {p2, v7, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {p0, v2, v7, v6, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->cmov([B[BIZ)V

    .line 289
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    return-object v5
.end method

.method public kemEncrypt([B)[[B
    .locals 11
    .param p1, "publicKeyInput"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKeyInput"
        }
    .end annotation

    .line 223
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    if-ne v0, v1, :cond_1

    .line 228
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 229
    .local v0, "polyVec":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B

    move-result-object v1

    .line 230
    .local v1, "seed":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B

    move-result-object v2

    .line 231
    .local v2, "ek":[B
    invoke-static {v2, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    const/16 v3, 0x40

    new-array v4, v3, [B

    .line 240
    .local v4, "buf":[B
    new-array v3, v3, [B

    .line 242
    .local v3, "kr":[B
    const/16 v5, 0x20

    new-array v6, v5, [B

    .line 244
    .local v6, "randBytes":[B
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 246
    const/4 v7, 0x0

    invoke-static {v6, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v8, v4, p1, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    .line 252
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v8, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_g([B[B)V

    .line 255
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-static {v4, v7, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    array-length v10, v3

    invoke-static {v3, v5, v10}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-virtual {v8, v9, p1, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->encrypt([B[B[B)[B

    move-result-object v5

    .line 257
    .local v5, "outputCipherText":[B
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    new-array v8, v8, [B

    .line 259
    .local v8, "outputSharedSecret":[B
    array-length v9, v8

    invoke-static {v3, v7, v8, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    const/4 v9, 0x2

    new-array v9, v9, [[B

    .line 262
    .local v9, "outBuf":[[B
    aput-object v8, v9, v7

    .line 263
    const/4 v7, 0x1

    aput-object v5, v9, v7

    .line 265
    return-object v9

    .line 233
    .end local v3    # "kr":[B
    .end local v4    # "buf":[B
    .end local v5    # "outputCipherText":[B
    .end local v6    # "randBytes":[B
    .end local v8    # "outputSharedSecret":[B
    .end local v9    # "outBuf":[[B
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input validation: Modulus check failed for ml-kem encapsulation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    .end local v0    # "polyVec":Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .end local v1    # "seed":[B
    .end local v2    # "ek":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input validation Error: Type check failed for ml-kem encapsulation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

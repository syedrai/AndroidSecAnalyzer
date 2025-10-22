.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
.super Ljava/lang/Object;
.source "DilithiumEngine.java"


# static fields
.field public static final CrhBytes:I = 0x40

.field public static final DilithiumD:I = 0xd

.field public static final DilithiumN:I = 0x100

.field public static final DilithiumPolyT0PackedBytes:I = 0x1a0

.field public static final DilithiumPolyT1PackedBytes:I = 0x140

.field public static final DilithiumQ:I = 0x7fe001

.field public static final DilithiumQinv:I = 0x3802001

.field public static final DilithiumRootOfUnity:I = 0x6d9

.field public static final RndBytes:I = 0x20

.field public static final SeedBytes:I = 0x20

.field public static final TrBytes:I = 0x40


# instance fields
.field private final CryptoBytes:I

.field private final CryptoPublicKeyBytes:I

.field private final CryptoSecretKeyBytes:I

.field private final DilithiumBeta:I

.field private final DilithiumCTilde:I

.field private final DilithiumEta:I

.field private final DilithiumGamma1:I

.field private final DilithiumGamma2:I

.field private final DilithiumK:I

.field private final DilithiumL:I

.field private final DilithiumMode:I

.field private final DilithiumOmega:I

.field private final DilithiumPolyEtaPackedBytes:I

.field private final DilithiumPolyVecHPackedBytes:I

.field private final DilithiumPolyW1PackedBytes:I

.field private final DilithiumPolyZPackedBytes:I

.field private final DilithiumTau:I

.field private final PolyUniformGamma1NBlocks:I

.field private final random:Ljava/security/SecureRandom;

.field private final shake128Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;


# direct methods
.method constructor <init>(ILjava/security/SecureRandom;Z)V
    .locals 10
    .param p1, "mode"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "usingAes"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "random",
            "usingAes"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake128Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 13
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 161
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumMode:I

    .line 162
    const v0, 0x3ff00

    const/16 v2, 0x20

    const/16 v3, 0x240

    const/high16 v4, 0x20000

    const/4 v5, 0x2

    const/16 v6, 0x280

    const/high16 v7, 0x80000

    const/16 v8, 0x60

    const/4 v9, 0x4

    packed-switch p1, :pswitch_data_0

    .line 207
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not supported by Crystals Dilithium!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :pswitch_1
    const/16 v9, 0x8

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    .line 194
    const/4 v9, 0x7

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    .line 195
    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    .line 196
    const/16 v5, 0x3c

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    .line 197
    const/16 v5, 0x78

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    .line 198
    iput v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    .line 199
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    .line 200
    const/16 v0, 0x4b

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    .line 201
    iput v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    .line 202
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    .line 203
    iput v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    .line 204
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    .line 205
    goto :goto_0

    .line 179
    :pswitch_2
    const/4 v5, 0x6

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    .line 180
    const/4 v5, 0x5

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    .line 181
    iput v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    .line 182
    const/16 v5, 0x31

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    .line 183
    const/16 v5, 0xc4

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    .line 184
    iput v7, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    .line 185
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    .line 186
    const/16 v0, 0x37

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    .line 187
    iput v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    .line 188
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    .line 189
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    .line 190
    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    .line 191
    goto :goto_0

    .line 165
    :pswitch_3
    iput v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    .line 166
    iput v9, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    .line 167
    iput v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    .line 168
    const/16 v0, 0x27

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    .line 169
    const/16 v0, 0x4e

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    .line 170
    iput v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    .line 171
    const v0, 0x17400

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    .line 172
    const/16 v0, 0x50

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    .line 173
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    .line 174
    const/16 v0, 0xc0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    .line 175
    iput v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    .line 176
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    .line 177
    nop

    .line 210
    :goto_0
    if-eqz p3, :cond_0

    .line 212
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    goto :goto_1

    .line 216
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$ShakeSymmetric;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    .line 220
    :goto_1
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->random:Ljava/security/SecureRandom;

    .line 221
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyVecHPackedBytes:I

    .line 222
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    mul-int/lit16 v0, v0, 0x140

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoPublicKeyBytes:I

    .line 223
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    mul-int v0, v0, v1

    add-int/2addr v0, v8

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    mul-int/lit16 v1, v1, 0x1a0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoSecretKeyBytes:I

    .line 230
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyVecHPackedBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    .line 232
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    if-ne v0, v4, :cond_1

    .line 234
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->PolyUniformGamma1NBlocks:I

    goto :goto_2

    .line 236
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    if-ne v0, v7, :cond_2

    .line 238
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->PolyUniformGamma1NBlocks:I

    .line 244
    :goto_2
    return-void

    .line 242
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithium Gamma1!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected GetSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    return-object v0
.end method

.method public generateKeyPair()[[B
    .locals 27

    .line 248
    move-object/from16 v6, p0

    const/16 v0, 0x20

    new-array v7, v0, [B

    .line 249
    .local v7, "seedBuf":[B
    const/16 v1, 0x80

    new-array v8, v1, [B

    .line 250
    .local v8, "buf":[B
    const/16 v2, 0x40

    new-array v3, v2, [B

    .line 252
    .local v3, "tr":[B
    new-array v4, v0, [B

    .line 253
    .local v4, "rho":[B
    new-array v9, v2, [B

    .line 254
    .local v9, "rhoPrime":[B
    new-array v5, v0, [B

    .line 256
    .local v5, "key":[B
    new-instance v10, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;

    invoke-direct {v10, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 258
    .local v10, "aMatrix":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;
    new-instance v11, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v11, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 259
    .local v11, "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    new-instance v12, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v12, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .local v12, "s2":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    new-instance v13, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v13, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .local v13, "t1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    new-instance v14, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v14, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 261
    .local v14, "t0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    iget-object v15, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v15, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 263
    iget-object v15, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v2, 0x0

    invoke-virtual {v15, v7, v2, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 265
    iget-object v15, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v15, v8, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 269
    invoke-static {v8, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    const/16 v1, 0x40

    invoke-static {v8, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    const/16 v1, 0x60

    invoke-static {v8, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    invoke-virtual {v10, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->expandMatrix([B)V

    .line 280
    invoke-virtual {v11, v9, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->uniformEta([BS)V

    .line 283
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    int-to-short v0, v0

    invoke-virtual {v12, v9, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->uniformEta([BS)V

    .line 285
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    move-object v15, v0

    .line 287
    .local v15, "s1hat":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    invoke-virtual {v11, v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->copyPolyVecL(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    .line 288
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    .line 292
    invoke-virtual {v10, v13, v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    .line 295
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    .line 296
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    .line 298
    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    .line 301
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    .line 302
    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->power2Round(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    .line 308
    invoke-static {v13, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B

    move-result-object v0

    .line 312
    .local v0, "encT1":[B
    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-object/from16 v17, v5

    .end local v5    # "key":[B
    .local v17, "key":[B
    array-length v5, v4

    invoke-virtual {v1, v4, v2, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 313
    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v5, v0

    invoke-virtual {v1, v0, v2, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 314
    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v5, 0x40

    invoke-virtual {v1, v3, v2, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 316
    move-object v1, v11

    move-object v11, v0

    move-object v0, v4

    move-object v4, v1

    move-object v1, v3

    move-object v5, v12

    move-object v3, v14

    move-object/from16 v2, v17

    const/4 v12, 0x0

    .end local v12    # "s2":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .end local v14    # "t0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .end local v17    # "key":[B
    .local v0, "rho":[B
    .local v1, "tr":[B
    .local v2, "key":[B
    .local v3, "t0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .local v4, "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .local v5, "s2":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .local v11, "encT1":[B
    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->packSecretKey([B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[[B

    move-result-object v14

    .line 318
    .end local v2    # "key":[B
    .local v14, "sk":[[B
    .restart local v17    # "key":[B
    aget-object v2, v14, v12

    const/4 v6, 0x1

    aget-object v16, v14, v6

    const/16 v18, 0x2

    aget-object v19, v14, v18

    const/16 v20, 0x3

    aget-object v21, v14, v20

    const/16 v22, 0x4

    aget-object v23, v14, v22

    const/16 v24, 0x5

    aget-object v25, v14, v24

    const/16 v26, 0x1

    const/4 v6, 0x7

    new-array v6, v6, [[B

    aput-object v2, v6, v12

    aput-object v16, v6, v26

    aput-object v19, v6, v18

    aput-object v21, v6, v20

    aput-object v23, v6, v22

    aput-object v25, v6, v24

    const/4 v2, 0x6

    aput-object v11, v6, v2

    return-object v6
.end method

.method getCryptoBytes()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    return v0
.end method

.method getCryptoPublicKeyBytes()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoPublicKeyBytes:I

    return v0
.end method

.method getCryptoSecretKeyBytes()I
    .locals 1

    .line 136
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoSecretKeyBytes:I

    return v0
.end method

.method getDilithiumBeta()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    return v0
.end method

.method getDilithiumCTilde()I
    .locals 1

    .line 126
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    return v0
.end method

.method getDilithiumEta()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumEta:I

    return v0
.end method

.method getDilithiumGamma1()I
    .locals 1

    .line 111
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    return v0
.end method

.method getDilithiumGamma2()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    return v0
.end method

.method getDilithiumK()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    return v0
.end method

.method getDilithiumL()I
    .locals 1

    .line 91
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumL:I

    return v0
.end method

.method getDilithiumMode()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumMode:I

    return v0
.end method

.method getDilithiumOmega()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    return v0
.end method

.method getDilithiumPolyEtaPackedBytes()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyEtaPackedBytes:I

    return v0
.end method

.method getDilithiumPolyVecHPackedBytes()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyVecHPackedBytes:I

    return v0
.end method

.method getDilithiumPolyW1PackedBytes()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    return v0
.end method

.method getDilithiumPolyZPackedBytes()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyZPackedBytes:I

    return v0
.end method

.method getDilithiumTau()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumTau:I

    return v0
.end method

.method getPolyUniformGamma1NBlocks()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->PolyUniformGamma1NBlocks:I

    return v0
.end method

.method getShake128Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake128Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    return-object v0
.end method

.method getShake256Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    return-object v0
.end method

.method public sign([BI[B[B[B[B[B[B)[B
    .locals 1
    .param p1, "msg"    # [B
    .param p2, "mlen"    # I
    .param p3, "rho"    # [B
    .param p4, "key"    # [B
    .param p5, "tr"    # [B
    .param p6, "t0"    # [B
    .param p7, "s1"    # [B
    .param p8, "s2"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "mlen",
            "rho",
            "key",
            "tr",
            "t0",
            "s1",
            "s2"
        }
    .end annotation

    .line 428
    invoke-virtual/range {p0 .. p8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->signSignature([BI[B[B[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public signOpen([B[BI[B[B)Z
    .locals 7
    .param p1, "msg"    # [B
    .param p2, "signedMsg"    # [B
    .param p3, "signedMsglen"    # I
    .param p4, "rho"    # [B
    .param p5, "t1"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "signedMsg",
            "signedMsglen",
            "rho",
            "t1"
        }
    .end annotation

    .line 551
    array-length v4, p1

    move-object v0, p0

    move-object v3, p1

    move-object v1, p2

    move v2, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "msg":[B
    .end local p2    # "signedMsg":[B
    .end local p3    # "signedMsglen":I
    .end local p4    # "rho":[B
    .end local p5    # "t1":[B
    .local v1, "signedMsg":[B
    .local v2, "signedMsglen":I
    .local v3, "msg":[B
    .local v5, "rho":[B
    .local v6, "t1":[B
    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->signVerify([BI[BI[B[B)Z

    move-result p1

    return p1
.end method

.method public signSignature([BI[B[B[B[B[B[B)[B
    .locals 23
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .param p3, "rho"    # [B
    .param p4, "key"    # [B
    .param p5, "tr"    # [B
    .param p6, "t0Enc"    # [B
    .param p7, "s1Enc"    # [B
    .param p8, "s2Enc"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "msglen",
            "rho",
            "key",
            "tr",
            "t0Enc",
            "s1Enc",
            "s2Enc"
        }
    .end annotation

    .line 324
    move-object/from16 v6, p0

    move/from16 v7, p2

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    add-int/2addr v0, v7

    new-array v8, v0, [B

    .line 325
    .local v8, "outSig":[B
    const/16 v9, 0x40

    new-array v10, v9, [B

    .local v10, "mu":[B
    new-array v11, v9, [B

    .line 326
    .local v11, "rhoPrime":[B
    const/4 v12, 0x0

    .line 327
    .local v12, "nonce":S
    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v1, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .local v1, "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    move-object v13, v0

    .local v13, "y":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    move-object v14, v0

    .line 328
    .local v14, "z":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .local v0, "t0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v2, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .local v2, "s2":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v3, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    move-object v15, v3

    .local v15, "w1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v3, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .local v3, "w0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v4, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 329
    .local v4, "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    new-instance v5, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 330
    .local v5, "cp":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    new-instance v9, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;

    invoke-direct {v9, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 332
    .local v9, "aMatrix":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v16, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v12, v3

    move-object/from16 v3, p6

    .end local v3    # "w0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .end local v4    # "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .end local v5    # "cp":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .local v12, "w0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .local v16, "nonce":S
    .local v17, "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .local v18, "cp":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->unpackSecretKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 334
    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v4, 0x0

    move-object/from16 v5, p5

    move-object/from16 v19, v0

    const/16 v0, 0x40

    .end local v0    # "t0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .local v19, "t0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    invoke-virtual {v3, v5, v4, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 335
    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 336
    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v0, 0x40

    invoke-virtual {v3, v10, v4, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 338
    const/16 v0, 0x20

    new-array v3, v0, [B

    .line 339
    .local v3, "rnd":[B
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 344
    :cond_0
    const/16 v0, 0x80

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 345
    .local v5, "keyMu":[B
    const/4 v0, 0x0

    const/16 v4, 0x20

    invoke-static {v3, v0, v5, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    const/16 v4, 0x40

    invoke-static {v10, v0, v5, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-object/from16 v22, v3

    const/16 v3, 0x80

    .end local v3    # "rnd":[B
    .local v22, "rnd":[B
    invoke-virtual {v4, v5, v0, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 348
    iget-object v3, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x40

    invoke-virtual {v3, v11, v0, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 350
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->expandMatrix([B)V

    .line 352
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    .line 353
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->polyVecNtt()V

    .line 355
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->polyVecNtt()V

    .line 357
    const/4 v3, 0x0

    move/from16 v4, v16

    .line 358
    .end local v16    # "nonce":S
    .local v3, "count":I
    .local v4, "nonce":S
    :goto_0
    const/16 v0, 0x3e8

    if-ge v3, v0, :cond_5

    .line 360
    add-int/lit8 v3, v3, 0x1

    .line 362
    add-int/lit8 v0, v4, 0x1

    int-to-short v0, v0

    .end local v4    # "nonce":S
    .local v0, "nonce":S
    invoke-virtual {v13, v11, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->uniformGamma1([BS)V

    .line 364
    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->copyPolyVecL(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    .line 365
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    .line 368
    invoke-virtual {v9, v15, v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    .line 369
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    .line 370
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    .line 373
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    .line 374
    invoke-virtual {v15, v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->decompose(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    .line 376
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->packW1()[B

    move-result-object v4

    move/from16 v16, v0

    .end local v0    # "nonce":S
    .restart local v16    # "nonce":S
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    move/from16 v21, v0

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v0, v0, v21

    move/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "count":I
    .local v21, "count":I
    invoke-static {v4, v3, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x40

    invoke-virtual {v0, v10, v3, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 379
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    move/from16 v20, v4

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v4, v4, v20

    invoke-virtual {v0, v8, v3, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 380
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-virtual {v0, v8, v3, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 382
    const/16 v4, 0x20

    invoke-static {v8, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object/from16 v3, v18

    .end local v18    # "cp":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    .local v3, "cp":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->challenge([B)V

    .line 383
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyNtt()V

    .line 386
    invoke-virtual {v14, v3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    .line 387
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->invNttToMont()V

    .line 388
    invoke-virtual {v14, v13}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->addPolyVecL(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    .line 389
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->reduce()V

    .line 390
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma1:I

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    sub-int/2addr v0, v4

    invoke-virtual {v14, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->checkNorm(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    move-object/from16 v0, v17

    move-object/from16 v17, v1

    goto :goto_1

    .line 395
    :cond_1
    move-object/from16 v0, v17

    .end local v17    # "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .local v0, "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    invoke-virtual {v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    .line 396
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    .line 397
    invoke-virtual {v12, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    .line 398
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    .line 399
    iget v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    move-object/from16 v17, v1

    .end local v1    # "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .local v17, "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    iget v1, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumBeta:I

    sub-int/2addr v4, v1

    invoke-virtual {v12, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->checkNorm(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    goto :goto_1

    .line 404
    :cond_2
    move-object/from16 v1, v19

    .end local v19    # "t0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .local v1, "t0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    .line 405
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    .line 406
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    .line 407
    iget v4, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumGamma2:I

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->checkNorm(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 409
    move-object/from16 v19, v1

    goto :goto_1

    .line 412
    :cond_3
    invoke-virtual {v12, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    .line 413
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    .line 414
    invoke-virtual {v0, v12, v15}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->makeHint(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)I

    move-result v4

    .line 415
    .local v4, "n":I
    move-object/from16 v19, v1

    .end local v1    # "t0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .restart local v19    # "t0":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    iget v1, v6, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumOmega:I

    if-le v4, v1, :cond_4

    .line 417
    nop

    .line 358
    .end local v0    # "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .end local v4    # "n":I
    .local v1, "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .local v17, "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    :goto_1
    move-object/from16 v18, v3

    move-object/from16 v1, v17

    move/from16 v3, v21

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v4, v16

    .end local v1    # "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .restart local v0    # "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .local v17, "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    goto/16 :goto_0

    .line 420
    .restart local v4    # "n":I
    :cond_4
    invoke-static {v8, v14, v0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->packSignature([BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B

    move-result-object v1

    return-object v1

    .line 423
    .end local v0    # "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .end local v16    # "nonce":S
    .end local v21    # "count":I
    .restart local v1    # "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .local v3, "count":I
    .local v4, "nonce":S
    .local v17, "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .restart local v18    # "cp":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    :cond_5
    move-object/from16 v0, v17

    move-object/from16 v17, v1

    .end local v1    # "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .restart local v0    # "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .local v17, "s1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    const/4 v1, 0x0

    return-object v1
.end method

.method public signVerify([BI[BI[B[B)Z
    .locals 18
    .param p1, "sig"    # [B
    .param p2, "siglen"    # I
    .param p3, "msg"    # [B
    .param p4, "msglen"    # I
    .param p5, "rho"    # [B
    .param p6, "encT1"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "siglen",
            "msg",
            "msglen",
            "rho",
            "encT1"
        }
    .end annotation

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const/16 v4, 0x40

    new-array v5, v4, [B

    .line 436
    .local v5, "mu":[B
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    new-array v6, v6, [B

    .line 437
    .local v6, "c2":[B
    new-instance v7, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 438
    .local v7, "cp":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
    new-instance v8, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;

    invoke-direct {v8, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 439
    .local v8, "aMatrix":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;
    new-instance v9, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 440
    .local v9, "z":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    new-instance v10, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v10, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .local v10, "t1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    new-instance v11, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v11, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .local v11, "w1":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    new-instance v12, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    .line 442
    .local v12, "h":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->CryptoBytes:I

    const/4 v14, 0x0

    move/from16 v15, p2

    if-eq v15, v13, :cond_0

    .line 444
    return v14

    .line 450
    :cond_0
    invoke-static {v10, v3, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;

    move-result-object v10

    .line 457
    invoke-static {v9, v12, v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;->unpackSignature(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 459
    return v14

    .line 461
    :cond_1
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-static {v1, v14, v13}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 466
    .local v13, "c":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v16

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumBeta()I

    move-result v17

    sub-int v4, v16, v17

    invoke-virtual {v9, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->checkNorm(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    return v14

    .line 472
    :cond_2
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v1, v2

    invoke-virtual {v4, v2, v14, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 473
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v4, v3

    invoke-virtual {v1, v3, v14, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 474
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x40

    invoke-virtual {v1, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 478
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v1, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 479
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-object/from16 v4, p3

    move/from16 v3, p4

    invoke-virtual {v1, v4, v14, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 480
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v1, v5, v14}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BI)I

    .line 486
    const/16 v1, 0x20

    invoke-static {v13, v14, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->challenge([B)V

    .line 490
    invoke-virtual {v8, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->expandMatrix([B)V

    .line 494
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->polyVecNtt()V

    .line 495
    invoke-virtual {v8, v11, v9}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V

    .line 497
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyNtt()V

    .line 501
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->shiftLeft()V

    .line 502
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->polyVecNtt()V

    .line 503
    invoke-virtual {v10, v7, v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    .line 507
    invoke-virtual {v11, v10}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    .line 508
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->reduce()V

    .line 509
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->invNttToMont()V

    .line 514
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->conditionalAddQ()V

    .line 516
    invoke-virtual {v11, v11, v12}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->useHint(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;)V

    .line 519
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->packW1()[B

    move-result-object v1

    .line 527
    .local v1, "buf":[B
    new-instance v14, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v14, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 528
    .local v14, "shakeDigest256":Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-virtual {v14, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 529
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumK:I

    move/from16 v16, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumPolyW1PackedBytes:I

    mul-int v3, v3, v16

    invoke-virtual {v14, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 530
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    invoke-virtual {v14, v6, v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 539
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->DilithiumCTilde:I

    if-ge v2, v3, :cond_4

    .line 541
    aget-byte v3, v13, v2

    aget-byte v0, v6, v2

    if-eq v3, v0, :cond_3

    .line 543
    const/16 v16, 0x0

    return v16

    .line 539
    :cond_3
    const/16 v16, 0x0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 546
    .end local v2    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

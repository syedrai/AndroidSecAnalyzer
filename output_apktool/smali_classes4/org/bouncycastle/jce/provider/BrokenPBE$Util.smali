.class public Lorg/bouncycastle/jce/provider/BrokenPBE$Util;
.super Ljava/lang/Object;
.source "BrokenPBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/BrokenPBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;
    .locals 2
    .param p0, "type"    # I
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "hash"
        }
    .end annotation

    .line 293
    if-nez p0, :cond_0

    .line 295
    packed-switch p1, :pswitch_data_0

    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PKCS5 scheme 1 only supports only MD5 and SHA1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 302
    .local v0, "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 298
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 299
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 307
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 309
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 311
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_1
    const/4 v0, 0x3

    const-string/jumbo v1, "unknown digest scheme for PBE encryption."

    if-ne p0, v0, :cond_2

    .line 313
    packed-switch p1, :pswitch_data_1

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :pswitch_2
    new-instance v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 323
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 319
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_3
    new-instance v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 320
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 316
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_4
    new-instance v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 317
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 330
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_2
    packed-switch p1, :pswitch_data_2

    .line 342
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_5
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 340
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 336
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_6
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 337
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 333
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_7
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 334
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    nop

    .line 346
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method static makePBEMacParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;III)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "pbeKey"    # Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "type"    # I
    .param p3, "hash"    # I
    .param p4, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pbeKey",
            "spec",
            "type",
            "hash",
            "keySize"
        }
    .end annotation

    .line 419
    if-eqz p1, :cond_1

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_1

    .line 424
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 425
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static {p2, p3}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 426
    .local v1, "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 429
    .local v2, "key":[B
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 431
    invoke-virtual {v1, p4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 433
    .local v3, "param":Lorg/bouncycastle/crypto/CipherParameters;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-eq v4, v5, :cond_0

    .line 435
    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 433
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    .end local v4    # "i":I
    :cond_0
    return-object v3

    .line 421
    .end local v0    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    .end local v2    # "key":[B
    .end local v3    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static makePBEParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;IILjava/lang/String;II)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "pbeKey"    # Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "type"    # I
    .param p3, "hash"    # I
    .param p4, "targetAlgorithm"    # Ljava/lang/String;
    .param p5, "keySize"    # I
    .param p6, "ivSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pbeKey",
            "spec",
            "type",
            "hash",
            "targetAlgorithm",
            "keySize",
            "ivSize"
        }
    .end annotation

    .line 362
    if-eqz p1, :cond_4

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_4

    .line 367
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 368
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static {p2, p3}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 369
    .local v1, "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 372
    .local v2, "key":[B
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 374
    if-eqz p6, :cond_0

    .line 376
    invoke-virtual {v1, p5, p6}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .local v3, "param":Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 380
    .end local v3    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {v1, p5}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 383
    .restart local v3    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    const-string v4, "DES"

    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    instance-of v4, v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_1

    .line 387
    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 389
    .local v4, "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->setOddParity([B)V

    .line 390
    .end local v4    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    goto :goto_1

    .line 393
    :cond_1
    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 395
    .restart local v4    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->setOddParity([B)V

    .line 399
    .end local v4    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v2

    if-eq v4, v5, :cond_3

    .line 401
    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 399
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 404
    .end local v4    # "i":I
    :cond_3
    return-object v3

    .line 364
    .end local v0    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    .end local v2    # "key":[B
    .end local v3    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setOddParity([B)V
    .locals 5
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 275
    aget-byte v1, p0, v0

    .line 276
    .local v1, "b":I
    and-int/lit16 v2, v1, 0xfe

    shr-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v1, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x7

    xor-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 273
    .end local v1    # "b":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

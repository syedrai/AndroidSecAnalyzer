.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "IESKEMCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$KEMwithSHA256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$KEM;
    }
.end annotation


# static fields
.field private static final converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field private final agreement:Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private dhaesMode:Z

.field private engine:Lorg/bouncycastle/crypto/engines/IESEngine;

.field private engineParam:Ljava/security/AlgorithmParameters;

.field private engineSpec:Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

.field private final hMac:Lorg/bouncycastle/crypto/Mac;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private ivLength:I

.field private final kdf:Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;

.field private key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private final macKeyLength:I

.field private final macLength:I

.field private otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private random:Ljava/security/SecureRandom;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;Lorg/bouncycastle/crypto/Mac;II)V
    .locals 2
    .param p1, "agreement"    # Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;
    .param p3, "hMac"    # Lorg/bouncycastle/crypto/Mac;
    .param p4, "macKeyLength"    # I
    .param p5, "macLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "agreement",
            "kdf",
            "hMac",
            "macKeyLength",
            "macLength"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 55
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    .line 65
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 67
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineSpec:Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->dhaesMode:Z

    .line 71
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 75
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->agreement:Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    .line 76
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->kdf:Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;

    .line 77
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->hMac:Lorg/bouncycastle/crypto/Mac;

    .line 78
    iput p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macKeyLength:I

    .line 79
    iput p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macLength:I

    .line 80
    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputOffset",
            "inputLength",
            "output",
            "outputOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 446
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineDoFinal([BII)[B

    move-result-object v0

    .line 448
    .local v0, "buf":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    array-length v1, v0

    return v1
.end method

.method public engineDoFinal([BII)[B
    .locals 18
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputOffset",
            "inputLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 316
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-eqz v3, :cond_0

    .line 318
    iget-object v4, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 321
    :cond_0
    iget-object v4, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 322
    .local v4, "in":[B
    iget-object v5, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 324
    iget-object v5, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v5, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v5

    .line 326
    .local v5, "ecParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    iget v6, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    iget v6, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    move-object/from16 v16, v4

    goto/16 :goto_3

    .line 374
    :cond_1
    iget v6, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eq v6, v10, :cond_3

    iget v6, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-ne v6, v9, :cond_2

    goto :goto_0

    .line 432
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "cipher not initialised"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 376
    :cond_3
    :goto_0
    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v6, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 377
    .local v6, "k":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    .line 379
    .local v10, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v11

    add-int/lit8 v11, v11, 0x7

    div-int/lit8 v11, v11, 0x8

    .line 380
    .local v11, "pEncLength":I
    aget-byte v12, v1, v2

    if-ne v12, v9, :cond_4

    .line 382
    mul-int/lit8 v9, v11, 0x2

    add-int/2addr v9, v7

    .end local v11    # "pEncLength":I
    .local v9, "pEncLength":I
    goto :goto_1

    .line 386
    .end local v9    # "pEncLength":I
    .restart local v11    # "pEncLength":I
    :cond_4
    add-int/lit8 v9, v11, 0x1

    .line 389
    .end local v11    # "pEncLength":I
    .restart local v9    # "pEncLength":I
    :goto_1
    iget v7, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macLength:I

    add-int/2addr v7, v9

    sub-int v7, v3, v7

    .line 391
    .local v7, "keyLength":I
    add-int v11, v2, v9

    invoke-static {v1, v2, v11}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 393
    .local v11, "q":Lorg/bouncycastle/math/ec/ECPoint;
    iget-object v12, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->agreement:Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    iget-object v13, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v12, v13}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 395
    sget-object v12, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v13, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->agreement:Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    new-instance v14, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 396
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v15

    invoke-direct {v14, v11, v15}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    invoke-virtual {v13, v14}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    .line 397
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v14

    .line 395
    invoke-virtual {v12, v13, v14}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v12

    .line 398
    .local v12, "secret":[B
    iget v13, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macKeyLength:I

    add-int/2addr v13, v7

    new-array v13, v13, [B

    .line 400
    .local v13, "out":[B
    iget-object v14, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->kdf:Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;

    new-instance v15, Lorg/bouncycastle/crypto/params/KDFParameters;

    iget-object v8, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineSpec:Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    invoke-virtual {v8}, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->getRecipientInfo()[B

    move-result-object v8

    invoke-direct {v15, v12, v8}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-virtual {v14, v15}, Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 402
    iget-object v8, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->kdf:Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;

    array-length v14, v13

    const/4 v15, 0x0

    invoke-virtual {v8, v13, v15, v14}, Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;->generateBytes([BII)I

    .line 404
    new-array v8, v7, [B

    .line 405
    .local v8, "dec":[B
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v15, v8

    if-eq v14, v15, :cond_5

    .line 407
    add-int v15, v2, v9

    add-int/2addr v15, v14

    aget-byte v15, v1, v15

    aget-byte v16, v13, v14

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v8, v14

    .line 405
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 410
    .end local v14    # "i":I
    :cond_5
    new-instance v14, Lorg/bouncycastle/crypto/params/KeyParameter;

    array-length v15, v13

    sub-int/2addr v15, v7

    invoke-direct {v14, v13, v7, v15}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 412
    .local v14, "macKey":Lorg/bouncycastle/crypto/params/KeyParameter;
    iget-object v15, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v15, v14}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 414
    iget-object v15, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->hMac:Lorg/bouncycastle/crypto/Mac;

    add-int v2, p2, v9

    move-object/from16 v16, v4

    .end local v4    # "in":[B
    .local v16, "in":[B
    array-length v4, v8

    invoke-interface {v15, v1, v2, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 416
    iget-object v2, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    new-array v2, v2, [B

    .line 418
    .local v2, "mac":[B
    iget-object v4, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->hMac:Lorg/bouncycastle/crypto/Mac;

    const/4 v15, 0x0

    invoke-interface {v4, v2, v15}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 420
    invoke-virtual {v14}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 421
    invoke-static {v13}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 423
    iget v4, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macLength:I

    iget v15, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macLength:I

    sub-int v15, v3, v15

    add-int v15, p2, v15

    move-object/from16 v17, v6

    const/4 v6, 0x0

    .end local v6    # "k":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .local v17, "k":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    invoke-static {v4, v2, v6, v1, v15}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual(I[BI[BI)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 428
    return-object v8

    .line 425
    :cond_6
    new-instance v4, Ljavax/crypto/BadPaddingException;

    const-string v6, "mac field"

    invoke-direct {v4, v6}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 326
    .end local v2    # "mac":[B
    .end local v7    # "keyLength":I
    .end local v8    # "dec":[B
    .end local v9    # "pEncLength":I
    .end local v10    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .end local v11    # "q":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v12    # "secret":[B
    .end local v13    # "out":[B
    .end local v14    # "macKey":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v16    # "in":[B
    .end local v17    # "k":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .restart local v4    # "in":[B
    :cond_7
    move-object/from16 v16, v4

    .line 329
    .end local v4    # "in":[B
    .restart local v16    # "in":[B
    :goto_3
    new-instance v2, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 330
    .local v2, "gen":Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;
    new-instance v4, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v6, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->random:Ljava/security/SecureRandom;

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 332
    iget-object v4, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineSpec:Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->hasUsePointCompression()Z

    move-result v4

    .line 333
    .local v4, "usePointCompression":Z
    new-instance v6, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v7, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$1;

    invoke-direct {v7, v0, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$1;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;Z)V

    invoke-direct {v6, v2, v7}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/bouncycastle/crypto/KeyEncoder;)V

    .line 341
    .local v6, "kGen":Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/bouncycastle/crypto/EphemeralKeyPair;

    move-result-object v7

    .line 343
    .local v7, "kp":Lorg/bouncycastle/crypto/EphemeralKeyPair;
    iget-object v8, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->agreement:Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 345
    sget-object v8, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v9, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->agreement:Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    iget-object v10, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v9, v10}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v8

    .line 346
    .local v8, "secret":[B
    iget v9, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macKeyLength:I

    add-int/2addr v9, v3

    new-array v9, v9, [B

    .line 348
    .local v9, "out":[B
    iget-object v10, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->kdf:Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;

    new-instance v11, Lorg/bouncycastle/crypto/params/KDFParameters;

    iget-object v12, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineSpec:Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    invoke-virtual {v12}, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->getRecipientInfo()[B

    move-result-object v12

    invoke-direct {v11, v8, v12}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-virtual {v10, v11}, Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 350
    iget-object v10, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->kdf:Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;

    array-length v11, v9

    const/4 v15, 0x0

    invoke-virtual {v10, v9, v15, v11}, Lorg/bouncycastle/crypto/generators/KDF2BytesGenerator;->generateBytes([BII)I

    .line 352
    iget v10, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macLength:I

    add-int/2addr v10, v3

    new-array v10, v10, [B

    .line 353
    .local v10, "enc":[B
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-eq v11, v3, :cond_8

    .line 355
    add-int v12, p2, v11

    aget-byte v12, v1, v12

    aget-byte v13, v9, v11

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 353
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 358
    .end local v11    # "i":I
    :cond_8
    new-instance v11, Lorg/bouncycastle/crypto/params/KeyParameter;

    array-length v12, v9

    sub-int/2addr v12, v3

    invoke-direct {v11, v9, v3, v12}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 359
    .local v11, "macKey":Lorg/bouncycastle/crypto/params/KeyParameter;
    iget-object v12, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v12, v11}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 361
    iget-object v12, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->hMac:Lorg/bouncycastle/crypto/Mac;

    const/4 v15, 0x0

    invoke-interface {v12, v10, v15, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 363
    iget-object v12, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v12}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v12

    new-array v12, v12, [B

    .line 365
    .local v12, "mac":[B
    iget-object v13, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v13, v12, v15}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 367
    invoke-virtual {v11}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v13

    invoke-static {v13}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 368
    invoke-static {v9}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 370
    iget v13, v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->macLength:I

    invoke-static {v12, v15, v10, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    invoke-virtual {v7}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v13

    invoke-static {v13, v10}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v13

    return-object v13
.end method

.method public engineGetBlockSize()I
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 90
    instance-of v0, p1, Lorg/bouncycastle/jce/interfaces/ECKey;

    if-eqz v0, :cond_0

    .line 92
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jce/interfaces/ECKey;

    invoke-interface {v0}, Lorg/bouncycastle/jce/interfaces/ECKey;->getParameters()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    return v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not an EC key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetOutputSize(I)I
    .locals 10
    .param p1, "inputLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLen"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const-string v1, "cipher not initialised"

    if-eqz v0, :cond_a

    .line 141
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/IESEngine;->getMac()Lorg/bouncycastle/crypto/Mac;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    .line 143
    .local v0, "len1":I
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v2, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 146
    .local v2, "c":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    .line 147
    .local v4, "feSize":I
    mul-int/lit8 v4, v4, 0x2

    .line 148
    .end local v2    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .local v4, "len2":I
    goto :goto_0

    .line 151
    .end local v4    # "len2":I
    :cond_0
    const/4 v4, 0x0

    .line 154
    .restart local v4    # "len2":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/2addr v2, p1

    .line 155
    .local v2, "inLen":I
    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/engines/IESEngine;->getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-nez v5, :cond_1

    .line 157
    move v5, v2

    .local v5, "len3":I
    goto :goto_3

    .line 159
    .end local v5    # "len3":I
    :cond_1
    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-eq v5, v8, :cond_5

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-ne v5, v7, :cond_2

    goto :goto_2

    .line 163
    :cond_2
    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-eq v5, v3, :cond_4

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-ne v5, v6, :cond_3

    goto :goto_1

    .line 169
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_4
    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/engines/IESEngine;->getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object v5

    sub-int v9, v2, v0

    sub-int/2addr v9, v4

    invoke-virtual {v5, v9}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v5

    .restart local v5    # "len3":I
    goto :goto_3

    .line 161
    .end local v5    # "len3":I
    :cond_5
    :goto_2
    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/engines/IESEngine;->getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v5

    .line 172
    .restart local v5    # "len3":I
    :goto_3
    iget v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-eq v9, v8, :cond_9

    iget v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-ne v8, v7, :cond_6

    goto :goto_5

    .line 176
    :cond_6
    iget v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-eq v7, v3, :cond_8

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    if-ne v3, v6, :cond_7

    goto :goto_4

    .line 182
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_8
    :goto_4
    return v5

    .line 174
    :cond_9
    :goto_5
    add-int v1, v0, v4

    add-int/2addr v1, v5

    return v1

    .line 138
    .end local v0    # "len1":I
    .end local v2    # "inLen":I
    .end local v4    # "len2":I
    .end local v5    # "len3":I
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineParam:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineSpec:Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "IES"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineSpec:Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineParam:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "opmode",
            "key",
            "params",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_0

    .line 208
    :try_start_0
    const-class v1, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {p3, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 213
    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot recognise parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 217
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 219
    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "opmode",
            "key",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    nop

    .line 281
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot handle supplied parameter spec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "engineSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "opmode",
            "key",
            "engineSpec",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 229
    move-object v0, p3

    check-cast v0, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->engineSpec:Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    .line 231
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "must be passed EC key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    :goto_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_3

    .line 246
    move-object v0, p2

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_2

    .line 250
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "must be passed recipient\'s private EC key for decryption"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_4
    :goto_1
    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_5

    .line 235
    move-object v0, p2

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 259
    :goto_2
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->random:Ljava/security/SecureRandom;

    .line 260
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->state:I

    .line 261
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 263
    return-void

    .line 239
    :cond_5
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "must be passed recipient\'s public EC key for encryption"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 2
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 189
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "padding not available with IESCipher"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputOffset",
            "inputLen",
            "output",
            "outputOffset"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public engineUpdate([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputOffset",
            "inputLen"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

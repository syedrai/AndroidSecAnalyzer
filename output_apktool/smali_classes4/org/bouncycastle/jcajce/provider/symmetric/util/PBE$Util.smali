.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .locals 1
    .param p0, "type"    # I
    .param p1, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "keySpec"
        }
    .end annotation

    .line 419
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 421
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    .local v0, "key":[B
    goto :goto_1

    .line 423
    .end local v0    # "key":[B
    :cond_0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_1

    .line 425
    .end local v0    # "key":[B
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    .line 431
    .restart local v0    # "key":[B
    :goto_1
    return-object v0
.end method

.method private static makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;
    .locals 3
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

    .line 66
    if-eqz p0, :cond_4

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto/16 :goto_1

    .line 83
    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    goto/16 :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown digest scheme for PBE encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA512PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 169
    .local v0, "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 165
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA384PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 166
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 162
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_2
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA224PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 163
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 159
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_3
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 160
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 141
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_4
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD2Digest;

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 142
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 156
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_5
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA256PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 157
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 153
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_6
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/TigerDigest;

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/TigerDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 154
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 150
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_7
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 151
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 147
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_8
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 148
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 144
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_9
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createMD5PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 145
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 176
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 85
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_3
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_a
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SM3Digest;

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 131
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 127
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_b
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA3_512PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 128
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 124
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_c
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA3_384PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 125
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 121
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_d
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA3_256PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 122
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 118
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_e
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA3_224PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 119
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 115
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_f
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA512PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 116
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 112
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_10
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA384PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 113
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 109
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_11
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA224PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 110
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 106
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_12
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 107
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 88
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_13
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD2Digest;

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 89
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 103
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_14
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA256PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 104
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 100
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_15
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/TigerDigest;

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/TigerDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 101
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 97
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_16
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 98
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 94
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_17
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 95
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 91
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_18
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createMD5PRF()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 92
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 68
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_4
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :sswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 72
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 77
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :sswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 78
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 74
    .end local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :sswitch_2
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createMD5()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 75
    .restart local v0    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    nop

    .line 179
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public static makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "pbeSpec"    # Ljavax/crypto/spec/PBEParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "type",
            "hash",
            "keySize",
            "pbeSpec"
        }
    .end annotation

    .line 398
    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 401
    .local v0, "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 403
    .local v1, "keyBytes":[B
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 405
    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 407
    .local v2, "param":Lorg/bouncycastle/crypto/CipherParameters;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_0

    .line 409
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySpec",
            "type",
            "hash",
            "keySize"
        }
    .end annotation

    .line 332
    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 336
    .local v0, "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v1

    .line 338
    .local v1, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 340
    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 342
    .local v2, "param":Lorg/bouncycastle/crypto/CipherParameters;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_0

    .line 344
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public static makePBEMacParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p0, "pbeKey"    # Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pbeKey",
            "spec"
        }
    .end annotation

    .line 304
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    .line 309
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 310
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 311
    .local v1, "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 314
    .local v2, "key":[B
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 316
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 318
    .local v3, "param":Lorg/bouncycastle/crypto/CipherParameters;
    return-object v3

    .line 306
    .end local v0    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    .end local v2    # "key":[B
    .end local v3    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySpec",
            "type",
            "hash",
            "keySize",
            "ivSize"
        }
    .end annotation

    .line 361
    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 365
    .local v0, "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v1

    .line 367
    .local v1, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 369
    if-eqz p4, :cond_0

    .line 371
    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .local v2, "param":Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 375
    .end local v2    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 378
    .restart local v2    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-eq v3, v4, :cond_1

    .line 380
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 383
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static makePBEParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "pbeKey"    # Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "targetAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pbeKey",
            "spec",
            "targetAlgorithm"
        }
    .end annotation

    .line 250
    if-eqz p1, :cond_4

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_4

    .line 255
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 256
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 257
    .local v1, "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 260
    .local v2, "key":[B
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    const/4 v3, 0x2

    new-array v2, v3, [B

    .line 265
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 267
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .local v3, "param":Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 273
    .end local v3    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 276
    .restart local v3    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    const-string v4, "DES"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    instance-of v4, v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_2

    .line 280
    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 282
    .local v4, "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 283
    .end local v4    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    goto :goto_1

    .line 286
    :cond_2
    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 288
    .restart local v4    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 292
    .end local v4    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_3
    :goto_1
    return-object v3

    .line 252
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

.method public static makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "pbeKey"    # [B
    .param p1, "scheme"    # I
    .param p2, "digest"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "targetAlgorithm"    # Ljava/lang/String;
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
            "scheme",
            "digest",
            "keySize",
            "ivSize",
            "spec",
            "targetAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 196
    if-eqz p5, :cond_3

    instance-of v0, p5, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_3

    .line 201
    move-object v0, p5

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 202
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 203
    .local v1, "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    move-object v2, p0

    .line 211
    .local v2, "key":[B
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 213
    if-eqz p4, :cond_0

    .line 215
    invoke-virtual {v1, p3, p4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .local v3, "param":Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 219
    .end local v3    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {v1, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 222
    .restart local v3    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    const-string v4, "DES"

    invoke-virtual {p6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    instance-of v4, v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_1

    .line 226
    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 228
    .local v4, "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 229
    .end local v4    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    goto :goto_1

    .line 232
    :cond_1
    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 234
    .restart local v4    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 238
    .end local v4    # "kParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_2
    :goto_1
    return-object v3

    .line 198
    .end local v0    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "generator":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    .end local v2    # "key":[B
    .end local v3    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

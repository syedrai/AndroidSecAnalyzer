.class public Lorg/bouncycastle/crypto/hpke/HPKE;
.super Ljava/lang/Object;
.source "HPKE.java"


# static fields
.field public static final aead_AES_GCM128:S = 0x1s

.field public static final aead_AES_GCM256:S = 0x2s

.field public static final aead_CHACHA20_POLY1305:S = 0x3s

.field public static final aead_EXPORT_ONLY:S = -0x1s

.field public static final kdf_HKDF_SHA256:S = 0x1s

.field public static final kdf_HKDF_SHA384:S = 0x2s

.field public static final kdf_HKDF_SHA512:S = 0x3s

.field public static final kem_P256_SHA256:S = 0x10s

.field public static final kem_P384_SHA348:S = 0x11s

.field public static final kem_P521_SHA512:S = 0x12s

.field public static final kem_X25519_SHA256:S = 0x20s

.field public static final kem_X448_SHA512:S = 0x21s

.field public static final mode_auth:B = 0x2t

.field public static final mode_auth_psk:B = 0x3t

.field public static final mode_base:B = 0x0t

.field public static final mode_psk:B = 0x1t


# instance fields
.field Nk:S

.field private final aeadId:S

.field private final default_psk:[B

.field private final default_psk_id:[B

.field private final dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

.field private final hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

.field private final kdfId:S

.field private final kemId:S

.field private final mode:B


# direct methods
.method public constructor <init>(BSSS)V
    .locals 1
    .param p1, "mode"    # B
    .param p2, "kemId"    # S
    .param p3, "kdfId"    # S
    .param p4, "aeadId"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "kemId",
            "kdfId",
            "aeadId"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    .line 37
    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    .line 56
    iput-byte p1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    .line 57
    iput-short p2, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kemId:S

    .line 58
    iput-short p3, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kdfId:S

    .line 59
    iput-short p4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    .line 60
    new-instance v0, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {v0, p3}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    .line 61
    new-instance v0, Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;-><init>(S)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    .line 62
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 64
    const/16 v0, 0x10

    iput-short v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->Nk:S

    goto :goto_0

    .line 68
    :cond_0
    const/16 v0, 0x20

    iput-short v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->Nk:S

    .line 70
    :goto_0
    return-void
.end method

.method private VerifyPSKInputs(B[B[B)V
    .locals 4
    .param p1, "mode"    # B
    .param p2, "psk"    # [B
    .param p3, "pskid"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "psk",
            "pskid"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 98
    .local v0, "got_psk":Z
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    invoke-static {p3, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    xor-int/2addr v2, v1

    .line 99
    .local v2, "got_psk_id":Z
    if-ne v0, v2, :cond_4

    .line 104
    if-eqz v0, :cond_1

    rem-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "PSK input provided when not needed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    rem-int/lit8 v3, p1, 0x2

    if-eq v3, v1, :cond_2

    goto :goto_1

    .line 110
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing required PSK input"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_3
    :goto_1
    return-void

    .line 101
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Inconsistent PSK inputs"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 17
    .param p1, "mode"    # B
    .param p2, "sharedSecret"    # [B
    .param p3, "info"    # [B
    .param p4, "psk"    # [B
    .param p5, "pskid"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "sharedSecret",
            "info",
            "psk",
            "pskid"
        }
    .end annotation

    .line 116
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/hpke/HPKE;->VerifyPSKInputs(B[B[B)V

    .line 117
    nop

    .line 118
    const-string v4, "HPKE"

    invoke-static {v4}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iget-short v5, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->kemId:S

    .line 119
    invoke-static {v5}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v5

    iget-short v6, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->kdfId:S

    .line 120
    invoke-static {v6}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v6

    iget-short v7, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    .line 121
    invoke-static {v7}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v7

    .line 117
    invoke-static {v4, v5, v6, v7}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v10

    .line 123
    .local v10, "suiteId":[B
    iget-object v4, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v5, "psk_id_hash"

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v10, v5, v3}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v4

    .line 125
    .local v4, "pskidHash":[B
    iget-object v5, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v7, "info_hash"

    move-object/from16 v14, p3

    invoke-virtual {v5, v6, v10, v7, v14}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v5

    .line 127
    .local v5, "infoHash":[B
    const/4 v6, 0x1

    new-array v6, v6, [B

    .line 128
    .local v6, "modeArray":[B
    const/4 v7, 0x0

    aput-byte v1, v6, v7

    .line 129
    invoke-static {v6, v4, v5}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v12

    .line 131
    .local v12, "keyScheduleContext":[B
    iget-object v7, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v8, "secret"

    move-object/from16 v15, p2

    invoke-virtual {v7, v15, v10, v8, v2}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v9

    .line 133
    .local v9, "secret":[B
    iget-object v8, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v11, "key"

    iget-short v13, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->Nk:S

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v7

    .line 134
    .local v7, "key":[B
    iget-object v8, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v11, "base_nonce"

    const/16 v13, 0xc

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v8

    .line 135
    .local v8, "base_nonce":[B
    move-object v11, v8

    .end local v8    # "base_nonce":[B
    .local v11, "base_nonce":[B
    iget-object v8, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    iget-object v13, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v13}, Lorg/bouncycastle/crypto/hpke/HKDF;->getHashSize()I

    move-result v13

    move-object/from16 v16, v11

    .end local v11    # "base_nonce":[B
    .local v16, "base_nonce":[B
    const-string v11, "exp"

    move-object/from16 v1, v16

    .end local v16    # "base_nonce":[B
    .local v1, "base_nonce":[B
    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v8

    .line 137
    .local v8, "exporter_secret":[B
    new-instance v11, Lorg/bouncycastle/crypto/hpke/HPKEContext;

    new-instance v13, Lorg/bouncycastle/crypto/hpke/AEAD;

    iget-short v2, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    invoke-direct {v13, v2, v7, v1}, Lorg/bouncycastle/crypto/hpke/AEAD;-><init>(S[B[B)V

    iget-object v2, v0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {v11, v13, v2, v8, v10}, Lorg/bouncycastle/crypto/hpke/HPKEContext;-><init>(Lorg/bouncycastle/crypto/hpke/AEAD;Lorg/bouncycastle/crypto/hpke/HKDF;[B[B)V

    return-object v11
.end method


# virtual methods
.method public SetupPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 8
    .param p1, "pkR"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "info"    # [B
    .param p3, "psk"    # [B
    .param p4, "psk_id"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkR",
            "info",
            "psk",
            "psk_id"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[[B

    move-result-object v0

    .line 302
    .local v0, "output":[[B
    const/4 v1, 0x0

    aget-object v4, v0, v1

    const/4 v3, 0x1

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "info":[B
    .end local p3    # "psk":[B
    .end local p4    # "psk_id":[B
    .local v5, "info":[B
    .local v6, "psk":[B
    .local v7, "psk_id":[B
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    .line 304
    .local p2, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    new-instance p3, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 p4, 0x1

    aget-object p4, v0, p4

    invoke-direct {p3, p2, p4}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object p3
.end method

.method public deriveKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1
    .param p1, "ikm"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ikm"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeriveKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public deserializePrivateKey([B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1
    .param p1, "skEncoded"    # [B
    .param p2, "pkEncoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "skEncoded",
            "pkEncoded"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeserializePrivateKey([B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public deserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p1, "pkEncoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkEncoded"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public generatePrivateKey()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/hpke/DHKEM;->GeneratePrivateKey()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public getAeadId()S
    .locals 1

    .line 92
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    return v0
.end method

.method public getEncSize()I
    .locals 2

    .line 74
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kemId:S

    sparse-switch v0, :sswitch_data_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid kem id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :sswitch_0
    const/16 v0, 0x38

    return v0

    .line 83
    :sswitch_1
    const/16 v0, 0x20

    return v0

    .line 81
    :sswitch_2
    const/16 v0, 0x85

    return v0

    .line 79
    :sswitch_3
    const/16 v0, 0x61

    return v0

    .line 77
    :sswitch_4
    const/16 v0, 0x41

    return v0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public open([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 8
    .param p1, "enc"    # [B
    .param p2, "skR"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .param p3, "info"    # [B
    .param p4, "aad"    # [B
    .param p5, "ct"    # [B
    .param p6, "psk"    # [B
    .param p7, "pskId"    # [B
    .param p8, "pkS"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
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
            "enc",
            "skR",
            "info",
            "aad",
            "ct",
            "psk",
            "pskId",
            "pkS"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 254
    iget-byte v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    packed-switch v0, :pswitch_data_0

    .line 269
    move-object/from16 v7, p8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :pswitch_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    .line 267
    .local v0, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    goto :goto_0

    .line 260
    .end local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    :pswitch_1
    move-object/from16 v7, p8

    invoke-virtual {p0, p1, p2, p3, v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    .line 261
    .restart local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    goto :goto_0

    .line 263
    .end local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    :pswitch_2
    move-object/from16 v7, p8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    .line 264
    .restart local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    goto :goto_0

    .line 257
    .end local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    :pswitch_3
    move-object/from16 v7, p8

    invoke-virtual/range {p0 .. p3}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    .line 258
    .restart local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    nop

    .line 271
    :goto_0
    invoke-virtual {v0, p4, p5}, Lorg/bouncycastle/crypto/hpke/HPKEContext;->open([B[B)[B

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public receiveExport([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[BI[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 8
    .param p1, "enc"    # [B
    .param p2, "skR"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .param p3, "info"    # [B
    .param p4, "exporterContext"    # [B
    .param p5, "L"    # I
    .param p6, "psk"    # [B
    .param p7, "pskId"    # [B
    .param p8, "pkS"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
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
            "enc",
            "skR",
            "info",
            "exporterContext",
            "L",
            "psk",
            "pskId",
            "pkS"
        }
    .end annotation

    .line 201
    iget-byte v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    packed-switch v0, :pswitch_data_0

    .line 216
    move-object/from16 v7, p8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :pswitch_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    .line 214
    .local v0, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    goto :goto_0

    .line 207
    .end local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    :pswitch_1
    move-object/from16 v7, p8

    invoke-virtual {p0, p1, p2, p3, v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    .line 208
    .restart local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    goto :goto_0

    .line 210
    .end local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    :pswitch_2
    move-object/from16 v7, p8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    .line 211
    .restart local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    goto :goto_0

    .line 204
    .end local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    :pswitch_3
    move-object/from16 v7, p8

    invoke-virtual/range {p0 .. p3}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    .line 205
    .restart local v0    # "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    nop

    .line 218
    :goto_0
    invoke-virtual {v0, p4, p5}, Lorg/bouncycastle/crypto/hpke/HPKEContext;->export([BI)[B

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public seal(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
    .locals 8
    .param p1, "pkR"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "info"    # [B
    .param p3, "aad"    # [B
    .param p4, "pt"    # [B
    .param p5, "psk"    # [B
    .param p6, "pskId"    # [B
    .param p7, "skS"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
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
            "pkR",
            "info",
            "aad",
            "pt",
            "psk",
            "pskId",
            "skS"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 227
    .local v0, "output":[[B
    iget-byte v1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    packed-switch v1, :pswitch_data_0

    .line 242
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local p2    # "info":[B
    .local v3, "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .local v4, "info":[B
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    .end local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local v4    # "info":[B
    .restart local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local p2    # "info":[B
    :pswitch_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local p2    # "info":[B
    .end local p5    # "psk":[B
    .end local p6    # "pskId":[B
    .end local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local v4    # "info":[B
    .local v5, "psk":[B
    .local v6, "pskId":[B
    .local v7, "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object p1

    .line 240
    .local p1, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    goto :goto_0

    .line 233
    .end local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local v4    # "info":[B
    .end local v5    # "psk":[B
    .end local v6    # "pskId":[B
    .end local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .local p1, "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local p2    # "info":[B
    .restart local p5    # "psk":[B
    .restart local p6    # "pskId":[B
    .restart local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    :pswitch_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local p2    # "info":[B
    .end local p5    # "psk":[B
    .end local p6    # "pskId":[B
    .end local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local v4    # "info":[B
    .restart local v5    # "psk":[B
    .restart local v6    # "pskId":[B
    .restart local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {p0, v3, v4, v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object p1

    .line 234
    .local p1, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    goto :goto_0

    .line 236
    .end local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local v4    # "info":[B
    .end local v5    # "psk":[B
    .end local v6    # "pskId":[B
    .end local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .local p1, "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local p2    # "info":[B
    .restart local p5    # "psk":[B
    .restart local p6    # "pskId":[B
    .restart local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    :pswitch_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local p2    # "info":[B
    .end local p5    # "psk":[B
    .end local p6    # "pskId":[B
    .end local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local v4    # "info":[B
    .restart local v5    # "psk":[B
    .restart local v6    # "pskId":[B
    .restart local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->SetupPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object p1

    .line 237
    .local p1, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    goto :goto_0

    .line 230
    .end local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local v4    # "info":[B
    .end local v5    # "psk":[B
    .end local v6    # "pskId":[B
    .end local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .local p1, "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local p2    # "info":[B
    .restart local p5    # "psk":[B
    .restart local p6    # "pskId":[B
    .restart local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    :pswitch_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local p2    # "info":[B
    .end local p5    # "psk":[B
    .end local p6    # "pskId":[B
    .end local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local v4    # "info":[B
    .restart local v5    # "psk":[B
    .restart local v6    # "pskId":[B
    .restart local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object p1

    .line 231
    .local p1, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    nop

    .line 244
    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1, p3, p4}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->seal([B[B)[B

    move-result-object p5

    aput-object p5, v0, p2

    .line 245
    const/4 p2, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->getEncapsulation()[B

    move-result-object p5

    aput-object p5, v0, p2

    .line 246
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendExport(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[BI[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
    .locals 8
    .param p1, "pkR"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "info"    # [B
    .param p3, "exporterContext"    # [B
    .param p4, "L"    # I
    .param p5, "psk"    # [B
    .param p6, "pskId"    # [B
    .param p7, "skS"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
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
            "pkR",
            "info",
            "exporterContext",
            "L",
            "psk",
            "pskId",
            "skS"
        }
    .end annotation

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 175
    .local v0, "output":[[B
    iget-byte v1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    packed-switch v1, :pswitch_data_0

    .line 190
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local p2    # "info":[B
    .local v3, "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .local v4, "info":[B
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    .end local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local v4    # "info":[B
    .restart local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local p2    # "info":[B
    :pswitch_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local p2    # "info":[B
    .end local p5    # "psk":[B
    .end local p6    # "pskId":[B
    .end local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local v4    # "info":[B
    .local v5, "psk":[B
    .local v6, "pskId":[B
    .local v7, "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object p1

    .line 188
    .local p1, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    goto :goto_0

    .line 181
    .end local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local v4    # "info":[B
    .end local v5    # "psk":[B
    .end local v6    # "pskId":[B
    .end local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .local p1, "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local p2    # "info":[B
    .restart local p5    # "psk":[B
    .restart local p6    # "pskId":[B
    .restart local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    :pswitch_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local p2    # "info":[B
    .end local p5    # "psk":[B
    .end local p6    # "pskId":[B
    .end local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local v4    # "info":[B
    .restart local v5    # "psk":[B
    .restart local v6    # "pskId":[B
    .restart local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {p0, v3, v4, v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object p1

    .line 182
    .local p1, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    goto :goto_0

    .line 184
    .end local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local v4    # "info":[B
    .end local v5    # "psk":[B
    .end local v6    # "pskId":[B
    .end local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .local p1, "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local p2    # "info":[B
    .restart local p5    # "psk":[B
    .restart local p6    # "pskId":[B
    .restart local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    :pswitch_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local p2    # "info":[B
    .end local p5    # "psk":[B
    .end local p6    # "pskId":[B
    .end local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local v4    # "info":[B
    .restart local v5    # "psk":[B
    .restart local v6    # "pskId":[B
    .restart local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->SetupPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object p1

    .line 185
    .local p1, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    goto :goto_0

    .line 178
    .end local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local v4    # "info":[B
    .end local v5    # "psk":[B
    .end local v6    # "pskId":[B
    .end local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .local p1, "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local p2    # "info":[B
    .restart local p5    # "psk":[B
    .restart local p6    # "pskId":[B
    .restart local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    :pswitch_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .end local p2    # "info":[B
    .end local p5    # "psk":[B
    .end local p6    # "pskId":[B
    .end local p7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v3    # "pkR":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .restart local v4    # "info":[B
    .restart local v5    # "psk":[B
    .restart local v6    # "pskId":[B
    .restart local v7    # "skS":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object p1

    .line 179
    .local p1, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    nop

    .line 192
    :goto_0
    const/4 p2, 0x0

    iget-object p5, p1, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->encapsulation:[B

    aput-object p5, v0, p2

    .line 193
    const/4 p2, 0x1

    invoke-virtual {p1, p3, p4}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->export([BI)[B

    move-result-object p5

    aput-object p5, v0, p2

    .line 194
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public serializePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1
    .param p1, "sk"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sk"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0
.end method

.method public serializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1
    .param p1, "pk"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pk"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0
.end method

.method public setupAuthPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 7
    .param p1, "enc"    # [B
    .param p2, "skR"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .param p3, "info"    # [B
    .param p4, "psk"    # [B
    .param p5, "psk_id"    # [B
    .param p6, "pkS"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
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
            "enc",
            "skR",
            "info",
            "psk",
            "psk_id",
            "pkS"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p2, p6}, Lorg/bouncycastle/crypto/hpke/DHKEM;->AuthDecap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v3

    .line 338
    .local v3, "sharedSecret":[B
    const/4 v2, 0x3

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p3    # "info":[B
    .end local p4    # "psk":[B
    .end local p5    # "psk_id":[B
    .local v4, "info":[B
    .local v5, "psk":[B
    .local v6, "psk_id":[B
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p3

    return-object p3
.end method

.method public setupAuthPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 8
    .param p1, "pkR"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "info"    # [B
    .param p3, "psk"    # [B
    .param p4, "psk_id"    # [B
    .param p5, "skS"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkR",
            "info",
            "psk",
            "psk_id",
            "skS"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p5}, Lorg/bouncycastle/crypto/hpke/DHKEM;->AuthEncap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object v0

    .line 330
    .local v0, "output":[[B
    const/4 v1, 0x0

    aget-object v4, v0, v1

    const/4 v3, 0x3

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "info":[B
    .end local p3    # "psk":[B
    .end local p4    # "psk_id":[B
    .local v5, "info":[B
    .local v6, "psk":[B
    .local v7, "psk_id":[B
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    .line 332
    .local p2, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    new-instance p3, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 p4, 0x1

    aget-object p4, v0, p4

    invoke-direct {p3, p2, p4}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object p3
.end method

.method public setupAuthR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 7
    .param p1, "enc"    # [B
    .param p2, "skR"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .param p3, "info"    # [B
    .param p4, "pkS"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enc",
            "skR",
            "info",
            "pkS"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p2, p4}, Lorg/bouncycastle/crypto/hpke/DHKEM;->AuthDecap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v3

    .line 324
    .local v3, "sharedSecret":[B
    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    const/4 v2, 0x2

    move-object v1, p0

    move-object v4, p3

    .end local p3    # "info":[B
    .local v4, "info":[B
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p3

    return-object p3
.end method

.method public setupAuthS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 8
    .param p1, "pkR"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "info"    # [B
    .param p3, "skS"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkR",
            "info",
            "skS"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/crypto/hpke/DHKEM;->AuthEncap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object v0

    .line 316
    .local v0, "output":[[B
    const/4 v1, 0x0

    aget-object v4, v0, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    const/4 v3, 0x2

    move-object v2, p0

    move-object v5, p2

    .end local p2    # "info":[B
    .local v5, "info":[B
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    .line 318
    .local p2, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    new-instance v1, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object v1
.end method

.method public setupBaseR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 7
    .param p1, "enc"    # [B
    .param p2, "skR"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .param p3, "info"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enc",
            "skR",
            "info"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Decap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[B

    move-result-object v3

    .line 295
    .local v3, "sharedSecret":[B
    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p3

    .end local p3    # "info":[B
    .local v4, "info":[B
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p3

    return-object p3
.end method

.method public setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 8
    .param p1, "pkR"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "info"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkR",
            "info"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[[B

    move-result-object v0

    .line 277
    .local v0, "output":[[B
    const/4 v1, 0x0

    aget-object v4, v0, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p2

    .end local p2    # "info":[B
    .local v5, "info":[B
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    .line 279
    .local p2, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    new-instance v1, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object v1
.end method

.method public setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 8
    .param p1, "pkR"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "info"    # [B
    .param p3, "kpE"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkR",
            "info",
            "kpE"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object v0

    .line 287
    .local v0, "output":[[B
    const/4 v1, 0x0

    aget-object v4, v0, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p2

    .end local p2    # "info":[B
    .local v5, "info":[B
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p2

    .line 289
    .local p2, "ctx":Lorg/bouncycastle/crypto/hpke/HPKEContext;
    new-instance v1, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object v1
.end method

.method public setupPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 7
    .param p1, "enc"    # [B
    .param p2, "skR"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .param p3, "info"    # [B
    .param p4, "psk"    # [B
    .param p5, "psk_id"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enc",
            "skR",
            "info",
            "psk",
            "psk_id"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Decap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[B

    move-result-object v3

    .line 310
    .local v3, "sharedSecret":[B
    const/4 v2, 0x1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p3    # "info":[B
    .end local p4    # "psk":[B
    .end local p5    # "psk_id":[B
    .local v4, "info":[B
    .local v5, "psk":[B
    .local v6, "psk_id":[B
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object p3

    return-object p3
.end method

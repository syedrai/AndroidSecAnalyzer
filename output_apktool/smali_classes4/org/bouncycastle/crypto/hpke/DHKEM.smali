.class Lorg/bouncycastle/crypto/hpke/DHKEM;
.super Ljava/lang/Object;
.source "DHKEM.java"


# instance fields
.field private Nsecret:I

.field private Nsk:I

.field private agreement:Lorg/bouncycastle/crypto/BasicAgreement;

.field private bitmask:B

.field domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

.field private hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

.field private final kemId:S

.field private kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# direct methods
.method protected constructor <init>(S)V
    .locals 11
    .param p1, "kemid"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kemid"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-short p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    .line 58
    const/16 v0, 0x40

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/16 v3, 0x20

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid kem id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :sswitch_0
    new-instance v2, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    .line 138
    new-instance v1, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 139
    iput v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    .line 140
    const/16 v0, 0x38

    iput v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    .line 142
    new-instance v0, Lorg/bouncycastle/crypto/generators/X448KeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/X448KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/params/X448KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/X448KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 145
    goto/16 :goto_0

    .line 128
    :sswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    .line 129
    new-instance v0, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/XDHBasicAgreement;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 130
    iput v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    .line 131
    iput v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    .line 132
    new-instance v0, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 135
    goto/16 :goto_0

    .line 105
    :sswitch_2
    new-instance v2, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    .line 107
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Curve;

    invoke-direct {v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Curve;-><init>()V

    move-object v6, v1

    .line 108
    .local v6, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    new-instance v5, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v7, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    invoke-direct {v2, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {v6, v1, v2}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 114
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v8

    .line 115
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v9

    .line 116
    const-string v1, "d09e8800291cb85396cc6717393284aaa0da64ba"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v5, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 118
    new-instance v1, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 119
    iput-byte v4, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->bitmask:B

    .line 120
    const/16 v1, 0x42

    iput v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    .line 121
    iput v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    .line 123
    new-instance v0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 126
    goto/16 :goto_0

    .line 83
    .end local v6    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    :sswitch_3
    new-instance v0, Lorg/bouncycastle/crypto/hpke/HKDF;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    .line 84
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;-><init>()V

    move-object v6, v0

    .line 85
    .restart local v6    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    new-instance v5, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance v0, Ljava/math/BigInteger;

    .line 88
    const-string v1, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    .line 89
    const-string v3, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 87
    invoke-virtual {v6, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 91
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v8

    .line 92
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v9

    .line 93
    const-string v0, "a335926aa319a27a1d00896a6773a4827acdac73"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v5, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 95
    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 96
    iput-byte v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->bitmask:B

    .line 97
    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    .line 98
    iput v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    .line 100
    new-instance v0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    .line 101
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 103
    goto :goto_0

    .line 61
    .end local v6    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    :sswitch_4
    new-instance v0, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    .line 62
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Curve;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Curve;-><init>()V

    move-object v6, v0

    .line 63
    .restart local v6    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    new-instance v5, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance v0, Ljava/math/BigInteger;

    .line 66
    const-string v1, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    .line 67
    const-string v7, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v1, v4, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 65
    invoke-virtual {v6, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 69
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v8

    .line 70
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v9

    .line 71
    const-string v0, "c49d360886e704936a6678e1139d26b7819f7e90"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v5, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 73
    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    .line 74
    iput-byte v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->bitmask:B

    .line 75
    iput v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    .line 76
    iput v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    .line 78
    new-instance v0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 81
    nop

    .line 149
    .end local v6    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method private ExtractAndExpand([B[B)[B
    .locals 8
    .param p1, "dh"    # [B
    .param p2, "kemContext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dh",
            "kemContext"
        }
    .end annotation

    .line 425
    const-string v0, "KEM"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-short v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    .line 427
    .local v4, "suiteID":[B
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const/4 v1, 0x0

    const-string v2, "eae_prk"

    invoke-virtual {v0, v1, v4, v2, p1}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v3

    .line 429
    .local v3, "eae_prk":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string/jumbo v5, "shared_secret"

    iget v7, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    move-object v6, p2

    .end local p2    # "kemContext":[B
    .local v6, "kemContext":[B
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object p2

    .line 430
    .local p2, "sharedSecret":[B
    return-object p2
.end method

.method private ValidateSk(Ljava/math/BigInteger;)Z
    .locals 5
    .param p1, "d"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 248
    .local v0, "n":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 249
    .local v1, "nBitLength":I
    ushr-int/lit8 v2, v1, 0x2

    .line 251
    .local v2, "minWeight":I
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x0

    if-ltz v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 258
    return v4

    .line 261
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 253
    :cond_2
    :goto_0
    return v4
.end method

.method private formatBigIntegerBytes([BI)[B
    .locals 4
    .param p1, "bigIntBytes"    # [B
    .param p2, "outputSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bigIntBytes",
            "outputSize"
        }
    .end annotation

    .line 435
    new-array v0, p2, [B

    .line 436
    .local v0, "output":[B
    array-length v1, p1

    const/4 v2, 0x0

    if-gt v1, p2, :cond_0

    .line 438
    array-length v1, p1

    sub-int v1, p2, v1

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 442
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected AuthDecap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 9
    .param p1, "enc"    # [B
    .param p2, "kpR"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .param p3, "pkS"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enc",
            "kpR",
            "pkS"
        }
    .end annotation

    .line 400
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 403
    .local v0, "pkE":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 405
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 406
    .local v1, "temp":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->formatBigIntegerBytes([BI)[B

    move-result-object v2

    .line 409
    .local v2, "secret1":[B
    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 410
    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v3, p3}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 411
    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/hpke/DHKEM;->formatBigIntegerBytes([BI)[B

    move-result-object v3

    .line 413
    .local v3, "secret2":[B
    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    .line 415
    .local v4, "secret":[B
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v5

    .line 416
    .local v5, "pkRm":[B
    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v6

    .line 417
    .local v6, "pkSm":[B
    invoke-static {p1, v5, v6}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v7

    .line 419
    .local v7, "KEMContext":[B
    invoke-direct {p0, v4, v7}, Lorg/bouncycastle/crypto/hpke/DHKEM;->ExtractAndExpand([B[B)[B

    move-result-object v8

    .line 420
    .local v8, "sharedSecret":[B
    return-object v8
.end method

.method protected AuthEncap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
    .locals 12
    .param p1, "pkR"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "kpS"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkR",
            "kpS"
        }
    .end annotation

    .line 369
    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 371
    .local v0, "output":[[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 375
    .local v1, "kpE":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 376
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v2, p1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 377
    .local v2, "temp":[B
    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/hpke/DHKEM;->formatBigIntegerBytes([BI)[B

    move-result-object v3

    .line 380
    .local v3, "secret1":[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 381
    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v4, p1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 382
    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/hpke/DHKEM;->formatBigIntegerBytes([BI)[B

    move-result-object v4

    .line 384
    .local v4, "secret2":[B
    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v5

    .line 385
    .local v5, "secret":[B
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v6

    .line 387
    .local v6, "enc":[B
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v7

    .line 388
    .local v7, "pkRm":[B
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v8

    .line 389
    .local v8, "pkSm":[B
    invoke-static {v6, v7, v8}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v9

    .line 391
    .local v9, "KEMContext":[B
    invoke-direct {p0, v5, v9}, Lorg/bouncycastle/crypto/hpke/DHKEM;->ExtractAndExpand([B[B)[B

    move-result-object v10

    .line 393
    .local v10, "sharedSecret":[B
    const/4 v11, 0x0

    aput-object v10, v0, v11

    .line 394
    const/4 v11, 0x1

    aput-object v6, v0, v11

    .line 395
    return-object v0
.end method

.method protected Decap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[B
    .locals 6
    .param p1, "enc"    # [B
    .param p2, "kpR"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enc",
            "kpR"
        }
    .end annotation

    .line 352
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 355
    .local v0, "pkE":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 357
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 358
    .local v1, "temp":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->formatBigIntegerBytes([BI)[B

    move-result-object v2

    .line 360
    .local v2, "secret":[B
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v3

    .line 361
    .local v3, "pkRm":[B
    invoke-static {p1, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    .line 363
    .local v4, "KEMContext":[B
    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/hpke/DHKEM;->ExtractAndExpand([B[B)[B

    move-result-object v5

    .line 364
    .local v5, "sharedSecret":[B
    return-object v5
.end method

.method public DeriveKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 10
    .param p1, "ikm"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ikm"
        }
    .end annotation

    .line 275
    const-string v0, "KEM"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-short v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    .line 276
    .local v4, "suiteID":[B
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    const-string v1, "dkp_prk"

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid kem id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :sswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v0, v2, v4, v1, p1}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v3

    .line 309
    .local v3, "dkp_prk":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    const-string/jumbo v5, "sk"

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v0

    .line 310
    .local v0, "x448sk":[B
    new-instance v1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;-><init>([B)V

    .line 311
    .local v1, "x448params":Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2

    .line 314
    .end local v0    # "x448sk":[B
    .end local v1    # "x448params":Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;
    .end local v3    # "dkp_prk":[B
    :sswitch_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v0, v2, v4, v1, p1}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v3

    .line 315
    .restart local v3    # "dkp_prk":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    const-string/jumbo v5, "sk"

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v0

    .line 316
    .local v0, "skBytes":[B
    new-instance v1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([B)V

    .line 318
    .local v1, "sk":Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2

    .line 281
    .end local v0    # "skBytes":[B
    .end local v1    # "sk":Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;
    .end local v3    # "dkp_prk":[B
    :sswitch_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v0, v2, v4, v1, p1}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v3

    .line 282
    .restart local v3    # "dkp_prk":[B
    const/4 v0, 0x0

    .line 283
    .local v0, "counter":I
    const/4 v1, 0x1

    new-array v6, v1, [B

    .line 286
    .local v6, "counterArray":[B
    :goto_0
    const/16 v2, 0xff

    if-gt v0, v2, :cond_1

    .line 290
    int-to-byte v2, v0

    const/4 v8, 0x0

    aput-byte v2, v6, v8

    .line 291
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v5, "candidate"

    iget v7, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v2

    .line 292
    .local v2, "bytes":[B
    aget-byte v5, v2, v8

    iget-byte v7, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->bitmask:B

    and-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 296
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 297
    .local v5, "d":Ljava/math/BigInteger;
    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/hpke/DHKEM;->ValidateSk(Ljava/math/BigInteger;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 299
    new-instance v1, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v1}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    iget-object v7, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v1, v7, v5}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 300
    .local v1, "Q":Lorg/bouncycastle/math/ec/ECPoint;
    new-instance v7, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v8, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v7, v5, v8}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 301
    .local v7, "sk":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    new-instance v8, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v9, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v8, v1, v9}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 302
    .local v8, "pk":Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    new-instance v9, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v9, v8, v7}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v9

    .line 305
    .end local v1    # "Q":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v7    # "sk":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .end local v8    # "pk":Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    :cond_0
    nop

    .end local v2    # "bytes":[B
    .end local v5    # "d":Ljava/math/BigInteger;
    add-int/lit8 v0, v0, 0x1

    .line 306
    goto :goto_0

    .line 288
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DeriveKeyPairError"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public DeserializePrivateKey([B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6
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

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "pubParam":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 212
    :cond_0
    iget-short v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    sparse-switch v1, :sswitch_data_0

    .line 241
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "invalid kem id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :sswitch_0
    new-instance v1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;-><init>([B)V

    .line 228
    .local v1, "x448":Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;
    if-nez v0, :cond_1

    .line 230
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    move-result-object v0

    .line 232
    :cond_1
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2

    .line 234
    .end local v1    # "x448":Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;
    :sswitch_1
    new-instance v1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([B)V

    .line 235
    .local v1, "x25519":Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;
    if-nez v0, :cond_2

    .line 237
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v0

    .line 239
    :cond_2
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2

    .line 217
    .end local v1    # "x25519":Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;
    :sswitch_2
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 218
    .local v1, "d":Ljava/math/BigInteger;
    new-instance v2, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 220
    .local v2, "ec":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    if-nez v0, :cond_3

    .line 222
    new-instance v3, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v3}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 223
    .local v3, "Q":Lorg/bouncycastle/math/ec/ECPoint;
    new-instance v4, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v4

    .line 225
    .end local v3    # "Q":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_3
    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 3
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoded"
        }
    .end annotation

    .line 187
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    sparse-switch v0, :sswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid kem id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :sswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;-><init>([B)V

    return-object v0

    .line 197
    :sswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([B)V

    return-object v0

    .line 192
    :sswitch_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 193
    .local v0, "G":Lorg/bouncycastle/math/ec/ECPoint;
    new-instance v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method protected Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[[B
    .locals 1
    .param p1, "pkR"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkR"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object v0

    return-object v0
.end method

.method protected Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
    .locals 8
    .param p1, "pkR"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "kpE"    # Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkR",
            "kpE"
        }
    .end annotation

    .line 331
    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 334
    .local v0, "output":[[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 336
    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 337
    .local v1, "temp":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->agreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->formatBigIntegerBytes([BI)[B

    move-result-object v2

    .line 339
    .local v2, "secret":[B
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v3

    .line 340
    .local v3, "enc":[B
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v4

    .line 341
    .local v4, "pkRm":[B
    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v5

    .line 343
    .local v5, "KEMContext":[B
    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/crypto/hpke/DHKEM;->ExtractAndExpand([B[B)[B

    move-result-object v6

    .line 345
    .local v6, "sharedSecret":[B
    const/4 v7, 0x0

    aput-object v6, v0, v7

    .line 346
    const/4 v7, 0x1

    aput-object v3, v0, v7

    .line 347
    return-object v0
.end method

.method public GeneratePrivateKey()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public SerializePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 2
    .param p1, "key"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 170
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    sparse-switch v0, :sswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid kem id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :sswitch_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 179
    :sswitch_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 175
    :sswitch_2
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->formatBigIntegerBytes([BI)[B

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 2
    .param p1, "key"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 154
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    sparse-switch v0, :sswitch_data_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid kem id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :sswitch_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 163
    :sswitch_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 159
    :sswitch_2
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

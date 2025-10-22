.class public Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;
.super Ljava/lang/Object;
.source "OpenSSHPrivateKeyUtil.java"


# static fields
.field static final AUTH_MAGIC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "openssh-key-v1\u0000"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->AUTH_MAGIC:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static allIntegers(Lorg/bouncycastle/asn1/ASN1Sequence;)Z
    .locals 2
    .param p0, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 338
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-nez v1, :cond_0

    .line 340
    const/4 v1, 0x0

    return v1

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "t":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static encodePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 9
    .param p0, "params"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    if-eqz p0, :cond_4

    .line 62
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p0}, Lorg/bouncycastle/crypto/util/PrivateKeyInfoFactory;->createPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 66
    .local v0, "pInfo":Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    return-object v1

    .line 68
    .end local v0    # "pInfo":Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p0}, Lorg/bouncycastle/crypto/util/PrivateKeyInfoFactory;->createPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 72
    .restart local v0    # "pInfo":Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    return-object v1

    .line 74
    .end local v0    # "pInfo":Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    if-eqz v0, :cond_2

    .line 76
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .line 77
    .local v0, "dsaPrivKey":Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 79
    .local v1, "dsaParams":Lorg/bouncycastle/crypto/params/DSAParameters;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 80
    .local v2, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 82
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 83
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 87
    .local v3, "pubKey":Ljava/math/BigInteger;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    :try_start_0
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 94
    :catch_0
    move-exception v4

    .line 96
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to encode DSAPrivateKeyParameters "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 99
    .end local v0    # "dsaPrivKey":Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;
    .end local v1    # "dsaParams":Lorg/bouncycastle/crypto/params/DSAParameters;
    .end local v2    # "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "pubKey":Ljava/math/BigInteger;
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    if-eqz v0, :cond_3

    .line 101
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    move-result-object v0

    .line 103
    .local v0, "publicKeyParameters":Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/crypto/util/SSHBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/util/SSHBuilder;-><init>()V

    .line 104
    .local v1, "builder":Lorg/bouncycastle/crypto/util/SSHBuilder;
    sget-object v2, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->AUTH_MAGIC:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeBytes([B)V

    .line 105
    const-string v2, "none"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeString(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeString(Ljava/lang/String;)V

    .line 107
    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeString(Ljava/lang/String;)V

    .line 109
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/util/SSHBuilder;->u32(I)V

    .line 112
    invoke-static {v0}, Lorg/bouncycastle/crypto/util/OpenSSHPublicKeyUtil;->encodePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v3

    .line 113
    .local v3, "pkEncoded":[B
    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeBlock([B)V

    .line 117
    .end local v3    # "pkEncoded":[B
    new-instance v3, Lorg/bouncycastle/crypto/util/SSHBuilder;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/util/SSHBuilder;-><init>()V

    .line 119
    .local v3, "pkBuild":Lorg/bouncycastle/crypto/util/SSHBuilder;
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    .line 120
    .local v4, "checkint":I
    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/util/SSHBuilder;->u32(I)V

    .line 121
    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/util/SSHBuilder;->u32(I)V

    .line 123
    const-string/jumbo v5, "ssh-ed25519"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeString(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->getEncoded()[B

    move-result-object v5

    .line 127
    .local v5, "pubKeyEncoded":[B
    invoke-virtual {v3, v5}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeBlock([B)V

    .line 130
    move-object v6, p0

    check-cast v6, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->getEncoded()[B

    move-result-object v6

    invoke-static {v6, v5}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeBlock([B)V

    .line 132
    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeString(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/SSHBuilder;->getPaddedBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/SSHBuilder;->writeBlock([B)V

    .line 137
    .end local v3    # "pkBuild":Lorg/bouncycastle/crypto/util/SSHBuilder;
    .end local v4    # "checkint":I
    .end local v5    # "pubKeyEncoded":[B
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/SSHBuilder;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 140
    .end local v0    # "publicKeyParameters":Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    .end local v1    # "builder":Lorg/bouncycastle/crypto/util/SSHBuilder;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to openssh private key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parsePrivateKeyBlob([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 22
    .param p0, "blob"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blob"
        }
    .end annotation

    .line 158
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 160
    .local v1, "result":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    const/4 v2, 0x0

    aget-byte v3, v0, v2

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    .line 162
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 164
    .local v3, "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-ne v4, v6, :cond_0

    .line 166
    invoke-static {v3}, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->allIntegers(Lorg/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Lorg/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    new-instance v2, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .line 170
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v6, Lorg/bouncycastle/crypto/params/DSAParameters;

    .line 172
    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 173
    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v7

    .line 174
    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v4, v6}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 178
    :cond_0
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 180
    invoke-static {v3}, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->allIntegers(Lorg/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Lorg/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v2

    .line 185
    .local v2, "rsaPrivateKey":Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;
    new-instance v4, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 186
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    .line 187
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    .line 188
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v7

    .line 189
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v8

    .line 190
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v9

    .line 191
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v10

    .line 192
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v11

    .line 193
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct/range {v4 .. v12}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v1, v4

    .line 194
    .end local v2    # "rsaPrivateKey":Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;
    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 198
    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_2

    .line 199
    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_2

    .line 201
    invoke-static {v3}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object v2

    .line 202
    .local v2, "ecPrivateKey":Lorg/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getParametersObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 203
    .local v4, "curveOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v4}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v5

    .line 204
    .local v5, "x9Params":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v6, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 205
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v8, v4, v5}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v1, v6

    .line 211
    .end local v2    # "ecPrivateKey":Lorg/bouncycastle/asn1/sec/ECPrivateKey;
    .end local v3    # "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "curveOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "x9Params":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    :cond_2
    :goto_0
    goto/16 :goto_2

    .line 214
    :cond_3
    new-instance v3, Lorg/bouncycastle/crypto/util/SSHBuffer;

    sget-object v4, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->AUTH_MAGIC:[B

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/crypto/util/SSHBuffer;-><init>([B[B)V

    .line 216
    .local v3, "kIn":Lorg/bouncycastle/crypto/util/SSHBuffer;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "cipherName":Ljava/lang/String;
    const-string v6, "none"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 223
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/SSHBuffer;->skipBlock()V

    .line 226
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/SSHBuffer;->skipBlock()V

    .line 228
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readU32()I

    move-result v6

    .line 229
    .local v6, "publicKeyCount":I
    if-ne v6, v5, :cond_e

    .line 235
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/crypto/util/OpenSSHPublicKeyUtil;->parsePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 237
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readPaddedBlock()[B

    move-result-object v7

    .line 239
    .local v7, "privateKeyBlock":[B
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/SSHBuffer;->hasRemaining()Z

    move-result v8

    if-nez v8, :cond_d

    .line 244
    new-instance v8, Lorg/bouncycastle/crypto/util/SSHBuffer;

    invoke-direct {v8, v7}, Lorg/bouncycastle/crypto/util/SSHBuffer;-><init>([B)V

    .line 245
    .local v8, "pkIn":Lorg/bouncycastle/crypto/util/SSHBuffer;
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readU32()I

    move-result v9

    .line 246
    .local v9, "check1":I
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readU32()I

    move-result v10

    .line 248
    .local v10, "check2":I
    if-ne v9, v10, :cond_c

    .line 253
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readString()Ljava/lang/String;

    move-result-object v11

    .line 255
    .local v11, "keyType":Ljava/lang/String;
    const-string/jumbo v12, "ssh-ed25519"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 258
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    .line 260
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v5

    .line 261
    .local v5, "edPrivateKey":[B
    array-length v12, v5

    const/16 v13, 0x40

    if-ne v12, v13, :cond_4

    .line 266
    new-instance v12, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    invoke-direct {v12, v5, v2}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;-><init>([BI)V

    move-object v1, v12

    .line 267
    .end local v5    # "edPrivateKey":[B
    goto/16 :goto_1

    .line 263
    .restart local v5    # "edPrivateKey":[B
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v12, "private key value of wrong length"

    invoke-direct {v2, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    .end local v5    # "edPrivateKey":[B
    :cond_5
    const-string v2, "ecdsa"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 270
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/util/SSHNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 271
    .local v2, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v2, :cond_7

    .line 276
    invoke-static {v2}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v12

    .line 277
    .local v12, "curveParams":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    if-eqz v12, :cond_6

    .line 283
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    .line 284
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v13

    .line 286
    .local v13, "privKey":[B
    new-instance v14, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    new-instance v15, Ljava/math/BigInteger;

    invoke-direct {v15, v5, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v5, v2, v12}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    invoke-direct {v14, v15, v5}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v1, v14

    .line 288
    .end local v2    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v12    # "curveParams":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .end local v13    # "privKey":[B
    goto/16 :goto_1

    .line 279
    .restart local v2    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v12    # "curveParams":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Curve not found for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 273
    .end local v12    # "curveParams":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OID not found for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 289
    .end local v2    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_8
    const-string/jumbo v2, "ssh-rsa"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 291
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v12

    invoke-direct {v2, v5, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v14, v2

    .line 292
    .local v14, "modulus":Ljava/math/BigInteger;
    new-instance v15, Ljava/math/BigInteger;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v2

    invoke-direct {v15, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 293
    .local v15, "pubExp":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v12

    invoke-direct {v2, v5, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 294
    .local v2, "privExp":Ljava/math/BigInteger;
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v13

    invoke-direct {v12, v5, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v21, v12

    .line 295
    .local v21, "coef":Ljava/math/BigInteger;
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v13

    invoke-direct {v12, v5, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 296
    .local v12, "p":Ljava/math/BigInteger;
    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->readBlock()[B

    move-result-object v0

    invoke-direct {v13, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 298
    .local v13, "q":Ljava/math/BigInteger;
    sget-object v0, Lorg/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 299
    .local v0, "pSub1":Ljava/math/BigInteger;
    sget-object v5, Lorg/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 300
    .local v5, "qSub1":Ljava/math/BigInteger;
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 301
    .local v19, "dP":Ljava/math/BigInteger;
    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 303
    .local v20, "dQ":Ljava/math/BigInteger;
    move-object/from16 v18, v13

    .end local v13    # "q":Ljava/math/BigInteger;
    .local v18, "q":Ljava/math/BigInteger;
    new-instance v13, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    move-object/from16 v16, v2

    move-object/from16 v17, v12

    .end local v2    # "privExp":Ljava/math/BigInteger;
    .end local v12    # "p":Ljava/math/BigInteger;
    .local v16, "privExp":Ljava/math/BigInteger;
    .local v17, "p":Ljava/math/BigInteger;
    invoke-direct/range {v13 .. v21}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v1, v13

    .line 315
    .end local v0    # "pSub1":Ljava/math/BigInteger;
    .end local v5    # "qSub1":Ljava/math/BigInteger;
    .end local v14    # "modulus":Ljava/math/BigInteger;
    .end local v15    # "pubExp":Ljava/math/BigInteger;
    .end local v16    # "privExp":Ljava/math/BigInteger;
    .end local v17    # "p":Ljava/math/BigInteger;
    .end local v18    # "q":Ljava/math/BigInteger;
    .end local v19    # "dP":Ljava/math/BigInteger;
    .end local v20    # "dQ":Ljava/math/BigInteger;
    .end local v21    # "coef":Ljava/math/BigInteger;
    :cond_9
    :goto_1
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->skipBlock()V

    .line 317
    invoke-virtual {v8}, Lorg/bouncycastle/crypto/util/SSHBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    .line 323
    .end local v3    # "kIn":Lorg/bouncycastle/crypto/util/SSHBuffer;
    .end local v4    # "cipherName":Ljava/lang/String;
    .end local v6    # "publicKeyCount":I
    .end local v7    # "privateKeyBlock":[B
    .end local v8    # "pkIn":Lorg/bouncycastle/crypto/util/SSHBuffer;
    .end local v9    # "check1":I
    .end local v10    # "check2":I
    .end local v11    # "keyType":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_a

    .line 328
    return-object v1

    .line 325
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unable to parse key"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    .restart local v3    # "kIn":Lorg/bouncycastle/crypto/util/SSHBuffer;
    .restart local v4    # "cipherName":Ljava/lang/String;
    .restart local v6    # "publicKeyCount":I
    .restart local v7    # "privateKeyBlock":[B
    .restart local v8    # "pkIn":Lorg/bouncycastle/crypto/util/SSHBuffer;
    .restart local v9    # "check1":I
    .restart local v10    # "check2":I
    .restart local v11    # "keyType":Ljava/lang/String;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "private key block has trailing data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    .end local v11    # "keyType":Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "private key check values are not the same"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    .end local v8    # "pkIn":Lorg/bouncycastle/crypto/util/SSHBuffer;
    .end local v9    # "check1":I
    .end local v10    # "check2":I
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "decoded key has trailing data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    .end local v7    # "privateKeyBlock":[B
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "multiple keys not supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    .end local v6    # "publicKeyCount":I
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "encrypted keys not supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;
.super Ljava/lang/Object;
.source "JceETSIKeyWrapper.java"

# interfaces
.implements Lorg/bouncycastle/its/ETSIKeyWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper$Builder;
    }
.end annotation


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final recipientHash:[B

.field private final recipientKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method private constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0
    .param p1, "key"    # Ljava/security/interfaces/ECPublicKey;
    .param p2, "recipientHash"    # [B
    .param p3, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "recipientHash",
            "helper"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientKey:Ljava/security/interfaces/ECPublicKey;

    .line 34
    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientHash:[B

    .line 35
    iput-object p3, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;-><init>(Ljava/security/interfaces/ECPublicKey;[BLorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method


# virtual methods
.method public wrap([B)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;
    .locals 8
    .param p1, "secretKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secretKey"
        }
    .end annotation

    .line 43
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "ETSIKEMwithSHA256"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 44
    .local v0, "etsiKem":Ljavax/crypto/Cipher;
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientKey:Ljava/security/interfaces/ECPublicKey;

    new-instance v2, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    iget-object v3, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientHash:[B

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;-><init>([BZ)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 45
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v1

    .line 47
    .local v1, "wrappedKey":[B
    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 49
    .local v2, "size":I
    const/4 v3, 0x0

    aget-byte v5, v1, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 51
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v4

    .end local v2    # "size":I
    .local v5, "size":I
    goto :goto_0

    .line 55
    .end local v5    # "size":I
    .restart local v2    # "size":I
    :cond_0
    add-int/lit8 v5, v2, 0x1

    .line 58
    .end local v2    # "size":I
    .restart local v5    # "size":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JceETSIKeyWrapper;->recipientKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 59
    .local v2, "pkInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 61
    .local v4, "curveID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;

    move-result-object v6

    .line 62
    invoke-static {v1, v3, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;->createEncodedPoint([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->setV(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;

    move-result-object v3

    array-length v6, p1

    add-int/2addr v6, v5

    .line 63
    invoke-static {v1, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->setC([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;

    move-result-object v3

    array-length v6, p1

    add-int/2addr v6, v5

    array-length v7, v1

    .line 64
    invoke-static {v1, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->setT([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->createEciesP256EncryptedKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;

    move-result-object v3

    .line 67
    .local v3, "key":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;
    sget-object v6, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    invoke-static {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;->eciesNistP256(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

    move-result-object v6

    return-object v6

    .line 71
    :cond_1
    sget-object v6, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    invoke-static {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;->eciesBrainpoolP256r1(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

    move-result-object v6

    return-object v6

    .line 77
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "recipient key curve is not P-256 or Brainpool P256r1"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "secretKey":[B
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "etsiKem":Ljavax/crypto/Cipher;
    .end local v1    # "wrappedKey":[B
    .end local v2    # "pkInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v3    # "key":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;
    .end local v4    # "curveID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "size":I
    .restart local p1    # "secretKey":[B
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.class public abstract Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "PasswordRecipientInfoGenerator.java"

# interfaces
.implements Lorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private blockSize:I

.field private iterationCount:I

.field private kekAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private keyDerivationAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private keySize:I

.field protected password:[C

.field private prf:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

.field private random:Ljava/security/SecureRandom;

.field private salt:[B

.field private schemeID:I


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[C)V
    .locals 2
    .param p1, "kekAlgorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kekAlgorithm",
            "password"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/cms/PasswordRecipientInformation;->BLOCKSIZES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[CII)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[CII)V
    .locals 1
    .param p1, "kekAlgorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "password"    # [C
    .param p3, "keySize"    # I
    .param p4, "blockSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kekAlgorithm",
            "password",
            "keySize",
            "blockSize"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->password:[C

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->schemeID:I

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->kekAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 43
    iput p3, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->keySize:I

    .line 44
    iput p4, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->blockSize:I

    .line 45
    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA1:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    iput-object v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->prf:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    .line 46
    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->iterationCount:I

    .line 47
    return-void
.end method

.method private static getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I
    .locals 5
    .param p0, "kekAlgorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kekAlgorithm"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 53
    .local v0, "size":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find key size for algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected abstract calculateDerivedKey(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "schemeID",
            "derivationAlgorithm",
            "keySize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

.method public generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 10
    .param p1, "contentEncryptionKey"    # Lorg/bouncycastle/operator/GenericKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentEncryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 93
    iget v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->blockSize:I

    new-array v0, v0, [B

    .line 95
    .local v0, "iv":[B
    iget-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 102
    iget-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->salt:[B

    if-nez v1, :cond_1

    .line 104
    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->salt:[B

    .line 106
    iget-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->salt:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 109
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    iget-object v4, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->salt:[B

    iget v5, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->iterationCount:I

    iget-object v6, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->prf:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    iget-object v6, v6, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->prfAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->keyDerivationAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 111
    iget v1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->schemeID:I

    iget-object v2, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->keyDerivationAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget v3, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->keySize:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->calculateDerivedKey(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B

    move-result-object v1

    .line 113
    .local v1, "derivedKey":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->kekAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    .local v2, "kekAlgorithmId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {p0, v2, v1, p1}, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->generateEncryptedBytes(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/operator/GenericKey;)[B

    move-result-object v3

    .line 117
    .local v3, "encryptedKeyBytes":[B
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 119
    .local v4, "encryptedKey":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 120
    .local v5, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v6, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->kekAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 121
    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 123
    new-instance v6, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_PWRI_KEK:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    .local v6, "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v7, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v8, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    iget-object v9, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->keyDerivationAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v8, v9, v6, v4}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;)V

    return-object v7
.end method

.method protected abstract generateEncryptedBytes(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/operator/GenericKey;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "derivedKey",
            "contentEncryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

.method public setPRF(Lorg/bouncycastle/cms/PasswordRecipient$PRF;)Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
    .locals 0
    .param p1, "prf"    # Lorg/bouncycastle/cms/PasswordRecipient$PRF;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prf"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->prf:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    .line 72
    return-object p0
.end method

.method public setPasswordConversionScheme(I)Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
    .locals 0
    .param p1, "schemeID"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "schemeID"
        }
    .end annotation

    .line 63
    iput p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->schemeID:I

    .line 65
    return-object p0
.end method

.method public setSaltAndIterationCount([BI)Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "salt",
            "iterationCount"
        }
    .end annotation

    .line 77
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->salt:[B

    .line 78
    iput p2, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->iterationCount:I

    .line 80
    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
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

    .line 85
    iput-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    .line 87
    return-object p0
.end method

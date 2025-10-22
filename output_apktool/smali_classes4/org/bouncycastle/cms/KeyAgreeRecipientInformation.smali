.class public Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;
.source "KeyAgreeRecipientInformation.java"


# instance fields
.field private encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/cms/RecipientId;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V
    .locals 1
    .param p1, "info"    # Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
    .param p2, "rid"    # Lorg/bouncycastle/cms/RecipientId;
    .param p3, "encryptedKey"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p4, "messageAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "secureReadable"    # Lorg/bouncycastle/cms/CMSSecureReadable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "info",
            "rid",
            "encryptedKey",
            "messageAlgorithm",
            "secureReadable"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    .line 72
    iput-object p1, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    .line 73
    iput-object p2, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    .line 74
    iput-object p3, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 75
    return-void
.end method

.method private getPublicKeyInfoFromOriginatorId(Lorg/bouncycastle/cms/OriginatorId;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 2
    .param p1, "origID"    # Lorg/bouncycastle/cms/OriginatorId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "No support for \'originator\' as IssuerAndSerialNumber or SubjectKeyIdentifier"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPublicKeyInfoFromOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 2
    .param p1, "recKeyAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "originatorPublicKey"    # Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recKeyAlgId",
            "originatorPublicKey"
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object v0
.end method

.method private getSenderPublicKeyInfo(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 5
    .param p1, "recKeyAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "originator"    # Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recKeyAlgId",
            "originator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getOriginatorKey()Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    .line 108
    .local v0, "opk":Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getPublicKeyInfoFromOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    return-object v1

    .line 115
    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getIssuerAndSerialNumber()Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    .line 116
    .local v1, "iAndSN":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    if-eqz v1, :cond_1

    .line 118
    new-instance v2, Lorg/bouncycastle/cms/OriginatorId;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/cms/OriginatorId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    .local v2, "origID":Lorg/bouncycastle/cms/OriginatorId;
    goto :goto_0

    .line 122
    .end local v2    # "origID":Lorg/bouncycastle/cms/OriginatorId;
    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getSubjectKeyIdentifier()Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v2

    .line 124
    .local v2, "ski":Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    new-instance v3, Lorg/bouncycastle/cms/OriginatorId;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cms/OriginatorId;-><init>([B)V

    move-object v2, v3

    .line 127
    .local v2, "origID":Lorg/bouncycastle/cms/OriginatorId;
    :goto_0
    invoke-direct {p0, v2}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getPublicKeyInfoFromOriginatorId(Lorg/bouncycastle/cms/OriginatorId;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    return-object v3
.end method

.method static readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V
    .locals 13
    .param p0, "infos"    # Ljava/util/List;
    .param p1, "info"    # Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
    .param p2, "messageAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "secureReadable"    # Lorg/bouncycastle/cms/CMSSecureReadable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "infos",
            "info",
            "messageAlgorithm",
            "secureReadable"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getRecipientEncryptedKeys()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 35
    .local v0, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 37
    nop

    .line 38
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 37
    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    move-result-object v2

    .line 42
    .local v2, "id":Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getIdentifier()Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    move-result-object v3

    .line 43
    .local v3, "karid":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->getIssuerAndSerialNumber()Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v4

    .line 45
    .local v4, "iAndSN":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    if-eqz v4, :cond_0

    .line 47
    new-instance v5, Lorg/bouncycastle/cms/KeyAgreeRecipientId;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/cms/KeyAgreeRecipientId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    move-object v9, v5

    .local v5, "rid":Lorg/bouncycastle/cms/RecipientId;
    goto :goto_1

    .line 51
    .end local v5    # "rid":Lorg/bouncycastle/cms/RecipientId;
    :cond_0
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->getRKeyID()Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v5

    .line 55
    .local v5, "rKeyID":Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
    new-instance v6, Lorg/bouncycastle/cms/KeyAgreeRecipientId;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->getSubjectKeyIdentifier()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/cms/KeyAgreeRecipientId;-><init>([B)V

    move-object v9, v6

    .line 58
    .end local v5    # "rKeyID":Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
    .local v9, "rid":Lorg/bouncycastle/cms/RecipientId;
    :goto_1
    new-instance v7, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v10

    move-object v8, p1

    move-object v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/cms/RecipientId;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v2    # "id":Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;
    .end local v3    # "karid":Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .end local v4    # "iAndSN":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .end local v9    # "rid":Lorg/bouncycastle/cms/RecipientId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getOriginator()Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getOriginator()Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v0

    return-object v0
.end method

.method protected getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 8
    .param p1, "recipient"    # Lorg/bouncycastle/cms/Recipient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipient"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KeyAgreeRecipient;

    .line 148
    .local v0, "agreeRecipient":Lorg/bouncycastle/cms/KeyAgreeRecipient;
    invoke-interface {v0}, Lorg/bouncycastle/cms/KeyAgreeRecipient;->getPrivateKeyAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 150
    .local v1, "recKeyAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/cms/KeyAgreeRecipient;

    iget-object v3, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v5, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    .line 151
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getOriginator()Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v5

    .line 150
    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getSenderPublicKeyInfo(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    .line 151
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getUserKeyingMaterial()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 150
    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/cms/KeyAgreeRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object v2

    return-object v2
.end method

.method public getUserKeyingMaterial()[B
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getUserKeyingMaterial()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 95
    .local v0, "ukm":Lorg/bouncycastle/asn1/ASN1OctetString;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

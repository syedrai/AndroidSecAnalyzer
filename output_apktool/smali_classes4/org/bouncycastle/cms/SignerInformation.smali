.class public Lorg/bouncycastle/cms/SignerInformation;
.super Ljava/lang/Object;
.source "SignerInformation.java"


# instance fields
.field private final content:Lorg/bouncycastle/cms/CMSProcessable;

.field private final contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected final digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final info:Lorg/bouncycastle/asn1/cms/SignerInfo;

.field private final isCounterSignature:Z

.field private resultDigest:[B

.field private final sid:Lorg/bouncycastle/cms/SignerId;

.field private final signature:[B

.field protected final signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

.field protected final unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V
    .locals 5
    .param p1, "info"    # Lorg/bouncycastle/asn1/cms/SignerInfo;
    .param p2, "contentType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "content"    # Lorg/bouncycastle/cms/CMSProcessable;
    .param p4, "resultDigest"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "info",
            "contentType",
            "content",
            "resultDigest"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    .line 67
    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    .line 70
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v0

    .line 72
    .local v0, "s":Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    .line 76
    .local v1, "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Lorg/bouncycastle/cms/SignerId;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/SignerId;-><init>([B)V

    iput-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    .line 77
    .end local v1    # "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    .line 82
    .local v1, "iAnds":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    new-instance v2, Lorg/bouncycastle/cms/SignerId;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/cms/SignerId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    .line 85
    .end local v1    # "iAnds":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 86
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    .line 87
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    .line 88
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 89
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signature:[B

    .line 91
    iput-object p3, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    .line 92
    iput-object p4, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 93
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/cms/SignerInformation;)V
    .locals 1
    .param p1, "baseInfo"    # Lorg/bouncycastle/cms/SignerInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseInfo"
        }
    .end annotation

    .line 104
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/cms/SignerInfo;)V

    .line 105
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/cms/SignerInfo;)V
    .locals 1
    .param p1, "baseInfo"    # Lorg/bouncycastle/cms/SignerInformation;
    .param p2, "info"    # Lorg/bouncycastle/asn1/cms/SignerInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseInfo",
            "info"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    .line 118
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 119
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    .line 120
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    .line 121
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 122
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    .line 123
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    .line 124
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 125
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signature:[B

    .line 126
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    .line 127
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 128
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    .line 129
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    .line 130
    return-void
.end method

.method public static addCounterSigners(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationStore;)Lorg/bouncycastle/cms/SignerInformation;
    .locals 12
    .param p0, "signerInformation"    # Lorg/bouncycastle/cms/SignerInformation;
    .param p1, "counterSigners"    # Lorg/bouncycastle/cms/SignerInformationStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signerInformation",
            "counterSigners"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    .line 763
    .local v0, "sInfo":Lorg/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    .line 766
    .local v1, "unsignedAttr":Lorg/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .local v2, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_0

    .line 772
    .end local v2    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 775
    .restart local v2    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 777
    .local v3, "sigs":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 779
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v5}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 782
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_1
    new-instance v4, Lorg/bouncycastle/asn1/cms/Attribute;

    sget-object v5, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 784
    new-instance v4, Lorg/bouncycastle/cms/SignerInformation;

    new-instance v5, Lorg/bouncycastle/asn1/cms/SignerInfo;

    .line 785
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    .line 786
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v8

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v10

    new-instance v11, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v11, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v7, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    .line 784
    return-object v4
.end method

.method private doVerify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z
    .locals 10
    .param p1, "verifier"    # Lorg/bouncycastle/cms/SignerInformationVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 344
    const-string v0, "can\'t process mime object to create signature."

    sget-object v1, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "encName":Ljava/lang/String;
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/cms/SignerInformation;->translateBrokenRSAPkcs7(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 351
    .local v2, "realDigestAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1, v3, v2}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getContentVerifier(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v3
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 356
    .local v3, "contentVerifier":Lorg/bouncycastle/operator/ContentVerifier;
    nop

    .line 360
    :try_start_1
    invoke-interface {v3}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 362
    .local v4, "sigOut":Ljava/io/OutputStream;
    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-nez v5, :cond_5

    .line 364
    invoke-virtual {p1, v2}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v5

    .line 365
    .local v5, "calc":Lorg/bouncycastle/operator/DigestCalculator;
    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    if-eqz v6, :cond_3

    .line 367
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 369
    .local v6, "digOut":Ljava/io/OutputStream;
    iget-object v7, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v7, :cond_2

    .line 371
    instance-of v7, v3, Lorg/bouncycastle/operator/RawContentVerifier;

    if-eqz v7, :cond_1

    .line 373
    iget-object v7, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v7, v6}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 377
    :cond_1
    new-instance v7, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v7, v6, v4}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 379
    .local v7, "cOut":Ljava/io/OutputStream;
    iget-object v8, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v8, v7}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 381
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 382
    .end local v7    # "cOut":Ljava/io/OutputStream;
    goto :goto_1

    .line 386
    :cond_2
    iget-object v7, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v7, v6}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 387
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 390
    :goto_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 391
    .end local v6    # "digOut":Ljava/io/OutputStream;
    goto :goto_2

    .line 392
    :cond_3
    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v6, :cond_4

    .line 394
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 402
    :goto_2
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 403
    .end local v5    # "calc":Lorg/bouncycastle/operator/DigestCalculator;
    goto :goto_3

    .line 399
    .restart local v5    # "calc":Lorg/bouncycastle/operator/DigestCalculator;
    :cond_4
    new-instance v6, Lorg/bouncycastle/cms/CMSException;

    const-string v7, "data not encapsulated in signature - use detached constructor."

    invoke-direct {v6, v7}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .end local v1    # "encName":Ljava/lang/String;
    .end local v2    # "realDigestAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v3    # "contentVerifier":Lorg/bouncycastle/operator/ContentVerifier;
    .end local p1    # "verifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    throw v6

    .line 406
    .end local v5    # "calc":Lorg/bouncycastle/operator/DigestCalculator;
    .restart local v1    # "encName":Ljava/lang/String;
    .restart local v2    # "realDigestAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v3    # "contentVerifier":Lorg/bouncycastle/operator/ContentVerifier;
    .restart local p1    # "verifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    :cond_5
    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v5, :cond_6

    .line 408
    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    if-eqz v5, :cond_7

    .line 410
    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v5, v4}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_3

    .line 415
    :cond_6
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 419
    :cond_7
    :goto_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    .end local v4    # "sigOut":Ljava/io/OutputStream;
    nop

    .line 431
    invoke-direct {p0}, Lorg/bouncycastle/cms/SignerInformation;->verifyContentTypeAttributeValue()V

    .line 433
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v4

    .line 436
    .local v4, "signedAttrTable":Lorg/bouncycastle/asn1/cms/AttributeTable;
    invoke-direct {p0, v4}, Lorg/bouncycastle/cms/SignerInformation;->verifyAlgorithmIdentifierProtectionAttribute(Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    .line 439
    invoke-direct {p0}, Lorg/bouncycastle/cms/SignerInformation;->verifyMessageDigestAttribute()V

    .line 442
    invoke-direct {p0, v4}, Lorg/bouncycastle/cms/SignerInformation;->verifyCounterSignatureAttribute(Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    .line 446
    :try_start_2
    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v5, :cond_9

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz v5, :cond_9

    .line 448
    instance-of v5, v3, Lorg/bouncycastle/operator/RawContentVerifier;

    if-eqz v5, :cond_9

    .line 450
    move-object v5, v3

    check-cast v5, Lorg/bouncycastle/operator/RawContentVerifier;

    .line 452
    .local v5, "rawVerifier":Lorg/bouncycastle/operator/RawContentVerifier;
    const-string v6, "RSA"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 454
    new-instance v6, Lorg/bouncycastle/asn1/x509/DigestInfo;

    new-instance v7, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v8, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 456
    .local v6, "digInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    const-string v7, "DER"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result v0

    return v0

    .line 459
    .end local v6    # "digInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    :cond_8
    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result v0

    return v0

    .line 463
    .end local v5    # "rawVerifier":Lorg/bouncycastle/operator/RawContentVerifier;
    :cond_9
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    .line 465
    :catch_0
    move-exception v5

    .line 467
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v6, v0, v5}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 425
    .end local v4    # "signedAttrTable":Lorg/bouncycastle/asn1/cms/AttributeTable;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 427
    .local v0, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v4, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t create digest calculator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 421
    .end local v0    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    :catch_2
    move-exception v4

    .line 423
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v5, v0, v4}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 353
    .end local v3    # "contentVerifier":Lorg/bouncycastle/operator/ContentVerifier;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 355
    .restart local v0    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t create content verifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private getSigningTime()Lorg/bouncycastle/asn1/cms/Time;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 703
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "signing-time"

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 706
    .local v0, "validSigningTime":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_0

    .line 708
    const/4 v1, 0x0

    return-object v1

    .line 713
    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Time;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 715
    :catch_0
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v3, "signing-time attribute value not a valid \'Time\' structure"

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 8
    .param p1, "attrOID"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "printableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attrOID",
            "printableName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 664
    .local v0, "unsignedAttrTable":Lorg/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v0, :cond_1

    .line 665
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attribute MUST NOT be an unsigned attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    .line 672
    .local v1, "signedAttrTable":Lorg/bouncycastle/asn1/cms/AttributeTable;
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 674
    return-object v2

    .line 677
    :cond_2
    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    .line 678
    .local v3, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 695
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The SignedAttributes in a signerInfo MUST NOT include multiple instances of the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/cms/Attribute;

    .line 685
    .local v4, "t":Lorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 686
    .local v5, "attrValues":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 692
    invoke-virtual {v5, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    .line 688
    :cond_3
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attribute MUST have a single attribute value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 681
    .end local v4    # "t":Lorg/bouncycastle/asn1/cms/Attribute;
    .end local v5    # "attrValues":Lorg/bouncycastle/asn1/ASN1Set;
    :pswitch_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static replaceUnsignedAttributes(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/cms/SignerInformation;
    .locals 9
    .param p0, "signerInformation"    # Lorg/bouncycastle/cms/SignerInformation;
    .param p1, "unsignedAttributes"    # Lorg/bouncycastle/asn1/cms/AttributeTable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signerInformation",
            "unsignedAttributes"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    .line 735
    .local v0, "sInfo":Lorg/bouncycastle/asn1/cms/SignerInfo;
    const/4 v1, 0x0

    .line 737
    .local v1, "unsignedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    if-eqz p1, :cond_0

    .line 739
    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v1, v2

    move-object v8, v1

    goto :goto_0

    .line 737
    :cond_0
    move-object v8, v1

    .line 742
    .end local v1    # "unsignedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    .local v8, "unsignedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    :goto_0
    new-instance v1, Lorg/bouncycastle/cms/SignerInformation;

    new-instance v2, Lorg/bouncycastle/asn1/cms/SignerInfo;

    .line 743
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 744
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    .line 742
    return-object v1
.end method

.method private static translateBrokenRSAPkcs7(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3
    .param p0, "encryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p1, "digestAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encryptionAlgorithm",
            "digestAlgorithm"
        }
    .end annotation

    .line 792
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 796
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 802
    :cond_1
    return-object p1
.end method

.method private verifyAlgorithmIdentifierProtectionAttribute(Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 6
    .param p1, "signedAttrTable"    # Lorg/bouncycastle/asn1/cms/AttributeTable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signedAttrTable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 551
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 552
    .local v0, "unsignedAttrTable":Lorg/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "A cmsAlgorithmProtect attribute MUST be a signed attribute"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    .line 558
    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 559
    .local v1, "protectionAttributes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_5

    .line 564
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 566
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    .line 567
    .local v4, "attr":Lorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 572
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    move-result-object v2

    .line 574
    .local v2, "algorithmProtection":Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/bouncycastle/cms/CMSUtils;->isEquivalent(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 579
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/bouncycastle/cms/CMSUtils;->isEquivalent(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 581
    :cond_2
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    const-string v5, "CMS Algorithm Identifier Protection check failed for signatureAlgorithm"

    invoke-direct {v3, v5}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 576
    :cond_3
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    const-string v5, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {v3, v5}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 569
    .end local v2    # "algorithmProtection":Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;
    :cond_4
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    const-string v3, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 561
    .end local v4    # "attr":Lorg/bouncycastle/asn1/cms/Attribute;
    :cond_5
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    const-string v3, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    .end local v1    # "protectionAttributes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_6
    :goto_1
    return-void
.end method

.method private verifyContentTypeAttributeValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 479
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "content-type"

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 481
    .local v0, "validContentType":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_1

    .line 483
    iget-boolean v1, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v1, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "The content-type attribute type MUST be present whenever signed attributes are present in signed-data"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :cond_1
    iget-boolean v1, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v1, :cond_5

    .line 495
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_4

    .line 500
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 502
    .local v1, "signedContentType":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 507
    .end local v1    # "signedContentType":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    :goto_0
    return-void

    .line 504
    .restart local v1    # "signedContentType":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    const-string v3, "content-type attribute value does not match eContentType"

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    .end local v1    # "signedContentType":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_4
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "content-type attribute value not of ASN.1 type \'OBJECT IDENTIFIER\'"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_5
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private verifyCounterSignatureAttribute(Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 6
    .param p1, "signedAttrTable"    # Lorg/bouncycastle/asn1/cms/AttributeTable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signedAttrTable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 596
    if-eqz p1, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 597
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "A countersignature attribute MUST NOT be a signed attribute"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 603
    .local v0, "unsignedAttrTable":Lorg/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v0, :cond_3

    .line 605
    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 606
    .local v1, "csAttrs":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 608
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v3

    .line 609
    .local v3, "csAttr":Lorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 606
    .end local v3    # "csAttr":Lorg/bouncycastle/asn1/cms/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 611
    .restart local v3    # "csAttr":Lorg/bouncycastle/asn1/cms/Attribute;
    :cond_2
    new-instance v4, Lorg/bouncycastle/cms/CMSException;

    const-string v5, "A countersignature attribute MUST contain at least one AttributeValue"

    invoke-direct {v4, v5}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 617
    .end local v1    # "csAttrs":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2    # "i":I
    .end local v3    # "csAttr":Lorg/bouncycastle/asn1/cms/Attribute;
    :cond_3
    return-void
.end method

.method private verifyMessageDigestAttribute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 517
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "message-digest"

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 519
    .local v0, "validMessageDigest":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_1

    .line 521
    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "the message-digest signed attribute type MUST be present when there are any signed attributes present"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_3

    .line 533
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 535
    .local v1, "signedMessageDigest":Lorg/bouncycastle/asn1/ASN1OctetString;
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    .end local v1    # "signedMessageDigest":Lorg/bouncycastle/asn1/ASN1OctetString;
    :goto_0
    return-void

    .line 537
    .restart local v1    # "signedMessageDigest":Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_2
    new-instance v2, Lorg/bouncycastle/cms/CMSSignerDigestMismatchException;

    const-string v3, "message-digest attribute value does not match calculated value"

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/CMSSignerDigestMismatchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 530
    .end local v1    # "signedMessageDigest":Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_3
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "message-digest attribute value not of ASN.1 type \'OCTET STRING\'"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getContentDigest()[B
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "method can only be called after verify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getCounterSignatures()Lorg/bouncycastle/cms/SignerInformationStore;
    .locals 11

    .line 269
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 270
    .local v0, "unsignedAttributeTable":Lorg/bouncycastle/asn1/cms/AttributeTable;
    if-nez v0, :cond_0

    .line 272
    new-instance v1, Lorg/bouncycastle/cms/SignerInformationStore;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 275
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v1, "counterSignatures":Ljava/util/List;
    sget-object v2, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 284
    .local v2, "allCSAttrs":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 286
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/cms/Attribute;

    .line 293
    .local v4, "counterSignatureAttribute":Lorg/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 294
    .local v5, "values":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    .line 299
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .local v6, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 315
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v7

    .line 317
    .local v7, "si":Lorg/bouncycastle/asn1/cms/SignerInfo;
    new-instance v8, Lorg/bouncycastle/cms/SignerInformation;

    new-instance v9, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    const/4 v10, 0x0

    invoke-direct {v8, v7, v10, v9, v10}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v7    # "si":Lorg/bouncycastle/asn1/cms/SignerInfo;
    goto :goto_1

    .line 284
    .end local v4    # "counterSignatureAttribute":Lorg/bouncycastle/asn1/cms/Attribute;
    .end local v5    # "values":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v6    # "en":Ljava/util/Enumeration;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Lorg/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v3, v1}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public getDigestAlgOID()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgParams()[B
    .locals 5

    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception getting digest parameters "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncodedSignedAttributes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgParams()[B
    .locals 5

    .line 212
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception getting encryption parameters "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSID()Lorg/bouncycastle/cms/SignerId;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signature:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public isCounterSignature()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 1

    .line 656
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    return-object v0
.end method

.method public verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z
    .locals 4
    .param p1, "verifier"    # Lorg/bouncycastle/cms/SignerInformationVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 631
    invoke-direct {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSigningTime()Lorg/bouncycastle/asn1/cms/Time;

    move-result-object v0

    .line 633
    .local v0, "signingTime":Lorg/bouncycastle/asn1/cms/Time;
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    .line 639
    .local v1, "dcv":Lorg/bouncycastle/cert/X509CertificateHolder;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Time;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    new-instance v2, Lorg/bouncycastle/cms/CMSVerifierCertificateNotValidException;

    const-string/jumbo v3, "verifier not valid at signingTime"

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/CMSVerifierCertificateNotValidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 646
    .end local v1    # "dcv":Lorg/bouncycastle/cert/X509CertificateHolder;
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/SignerInformation;->doVerify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v1

    return v1
.end method

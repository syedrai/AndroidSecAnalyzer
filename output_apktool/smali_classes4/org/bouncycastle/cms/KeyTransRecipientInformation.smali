.class public Lorg/bouncycastle/cms/KeyTransRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;
.source "KeyTransRecipientInformation.java"


# instance fields
.field private info:Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V
    .locals 5
    .param p1, "info"    # Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
    .param p2, "messageAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "secureReadable"    # Lorg/bouncycastle/cms/CMSSecureReadable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "info",
            "messageAlgorithm",
            "secureReadable"
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    .line 26
    iput-object p1, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    .line 28
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getRecipientIdentifier()Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-result-object v0

    .line 30
    .local v0, "r":Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    .line 34
    .local v1, "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>([B)V

    iput-object v2, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    .line 35
    .end local v1    # "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    .line 40
    .local v1, "iAnds":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    new-instance v2, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    .line 42
    .end local v1    # "iAnds":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    :goto_0
    return-void
.end method


# virtual methods
.method protected getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 4
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
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 47
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KeyTransRecipient;

    iget-object v1, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/cms/KeyTransRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object v0

    return-object v0
.end method

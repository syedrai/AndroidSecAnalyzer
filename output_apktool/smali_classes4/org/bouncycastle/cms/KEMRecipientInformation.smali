.class public Lorg/bouncycastle/cms/KEMRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;
.source "KEMRecipientInformation.java"


# instance fields
.field private info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V
    .locals 5
    .param p1, "info"    # Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;
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

    .line 19
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    .line 23
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getRecipientIdentifier()Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-result-object v0

    .line 25
    .local v0, "r":Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    .line 29
    .local v1, "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>([B)V

    iput-object v2, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    .line 30
    .end local v1    # "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    .line 35
    .local v1, "iAnds":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    new-instance v2, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    .line 37
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

    .line 42
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KEMRecipient;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v2, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/cms/KEMRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object v0

    return-object v0
.end method

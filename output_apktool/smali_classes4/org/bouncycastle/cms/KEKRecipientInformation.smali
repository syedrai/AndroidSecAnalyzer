.class public Lorg/bouncycastle/cms/KEKRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;
.source "KEKRecipientInformation.java"


# instance fields
.field private info:Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V
    .locals 3
    .param p1, "info"    # Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;
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

    .line 23
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getKekid()Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    move-result-object v0

    .line 29
    .local v0, "kekId":Lorg/bouncycastle/asn1/cms/KEKIdentifier;
    new-instance v1, Lorg/bouncycastle/cms/KEKRecipientId;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->getKeyIdentifier()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/KEKRecipientId;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    .line 30
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
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KEKRecipient;

    iget-object v1, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cms/KEKRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/cms/KEKRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object v0

    return-object v0
.end method

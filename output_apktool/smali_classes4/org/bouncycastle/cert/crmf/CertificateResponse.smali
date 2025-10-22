.class public Lorg/bouncycastle/cert/crmf/CertificateResponse;
.super Ljava/lang/Object;
.source "CertificateResponse.java"


# instance fields
.field private final certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertResponse;)V
    .locals 0
    .param p1, "certResponse"    # Lorg/bouncycastle/asn1/cmp/CertResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certResponse"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateResponse;->certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;

    .line 27
    return-void
.end method


# virtual methods
.method public getCertificate()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateResponse;->hasEncryptedCertificate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateResponse;->certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertResponse;->getCertifiedKeyPair()Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->getCertOrEncCert()Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->getCertificate()Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "plaintext certificate asked for, none found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertificate(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 5
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

    .line 75
    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateResponse;->getEncryptedCertificate()Lorg/bouncycastle/cms/CMSEnvelopedData;

    move-result-object v0

    .line 77
    .local v0, "encryptedCert":Lorg/bouncycastle/cms/CMSEnvelopedData;
    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v1

    .line 79
    .local v1, "recipients":Lorg/bouncycastle/cms/RecipientInformationStore;
    invoke-virtual {v1}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients()Ljava/util/Collection;

    move-result-object v2

    .line 81
    .local v2, "c":Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/RecipientInformation;

    .line 83
    .local v3, "recInfo":Lorg/bouncycastle/cms/RecipientInformation;
    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getContent(Lorg/bouncycastle/cms/Recipient;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v4

    return-object v4
.end method

.method public getEncryptedCertificate()Lorg/bouncycastle/cms/CMSEnvelopedData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateResponse;->hasEncryptedCertificate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateResponse;->certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertResponse;->getCertifiedKeyPair()Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    move-result-object v0

    .line 55
    .local v0, "receivedKeyPair":Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;
    new-instance v1, Lorg/bouncycastle/cms/CMSEnvelopedData;

    new-instance v2, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->getCertOrEncCert()Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->getEncryptedCert()Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 58
    .local v1, "envelopedData":Lorg/bouncycastle/cms/CMSEnvelopedData;
    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/cms/RecipientInformationStore;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 63
    return-object v1

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "data encrypted for more than one recipient"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    .end local v0    # "receivedKeyPair":Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;
    .end local v1    # "envelopedData":Lorg/bouncycastle/cms/CMSEnvelopedData;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypted certificate asked for, none found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasEncryptedCertificate()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateResponse;->certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertResponse;->getCertifiedKeyPair()Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->getCertOrEncCert()Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->hasEncryptedCertificate()Z

    move-result v0

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/CertResponse;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateResponse;->certResponse:Lorg/bouncycastle/asn1/cmp/CertResponse;

    return-object v0
.end method

.class public Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;
.super Ljava/lang/Object;
.source "PKIArchiveControlBuilder.java"


# instance fields
.field private envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

.field private keyContent:Lorg/bouncycastle/cms/CMSProcessableByteArray;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 4
    .param p1, "privateKeyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .param p2, "generalName"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKeyInfo",
            "generalName"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 39
    .local v0, "encKeyWithID":Lorg/bouncycastle/asn1/crmf/EncKeyWithID;
    :try_start_0
    new-instance v1, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    sget-object v2, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_ct_encKeyWithID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    iput-object v1, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;->keyContent:Lorg/bouncycastle/cms/CMSProcessableByteArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    nop

    .line 46
    new-instance v1, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

    .line 47
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "unable to encode key and general name info"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addRecipientGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;
    .locals 1
    .param p1, "recipientGen"    # Lorg/bouncycastle/cms/RecipientInfoGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientGen"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->addRecipientInfoGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)V

    .line 59
    return-object p0
.end method

.method public build(Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cert/crmf/PKIArchiveControl;
    .locals 5
    .param p1, "contentEncryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentEncryptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControlBuilder;->keyContent:Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;

    move-result-object v0

    .line 74
    .local v0, "envContent":Lorg/bouncycastle/cms/CMSEnvelopedData;
    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object v1

    .line 76
    .local v1, "envD":Lorg/bouncycastle/asn1/cms/EnvelopedData;
    new-instance v2, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;

    new-instance v3, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    new-instance v4, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/cms/EnvelopedData;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;-><init>(Lorg/bouncycastle/asn1/crmf/EncryptedKey;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;-><init>(Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;)V

    return-object v2
.end method

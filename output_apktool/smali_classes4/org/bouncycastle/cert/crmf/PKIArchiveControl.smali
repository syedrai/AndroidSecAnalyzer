.class public Lorg/bouncycastle/cert/crmf/PKIArchiveControl;
.super Ljava/lang/Object;
.source "PKIArchiveControl.java"

# interfaces
.implements Lorg/bouncycastle/cert/crmf/Control;


# static fields
.field public static final archiveRemGenPrivKey:I = 0x2

.field public static final encryptedPrivKey:I = 0x0

.field public static final keyGenParameters:I = 0x1

.field private static final type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private final pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;)V
    .locals 0
    .param p1, "pkiArchiveOptions"    # Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkiArchiveOptions"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    .line 36
    return-void
.end method


# virtual methods
.method public getArchiveType()I
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->getType()I

    move-result v0

    return v0
.end method

.method public getEnvelopedData()Lorg/bouncycastle/cms/CMSEnvelopedData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v0

    .line 91
    .local v0, "encKey":Lorg/bouncycastle/asn1/crmf/EncryptedKey;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object v1

    .line 93
    .local v1, "data":Lorg/bouncycastle/asn1/cms/EnvelopedData;
    new-instance v2, Lorg/bouncycastle/cms/CMSEnvelopedData;

    new-instance v3, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v4, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 99
    .end local v0    # "encKey":Lorg/bouncycastle/asn1/crmf/EncryptedKey;
    .end local v1    # "data":Lorg/bouncycastle/asn1/cms/EnvelopedData;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/cert/crmf/CRMFException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CRMF parsing error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Lorg/bouncycastle/cms/CMSException;
    new-instance v1, Lorg/bouncycastle/cert/crmf/CRMFException;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS parsing error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 45
    sget-object v0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    return-object v0
.end method

.method public isEnvelopedData()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;->pkiArchiveOptions:Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v0

    .line 77
    .local v0, "encKey":Lorg/bouncycastle/asn1/crmf/EncryptedKey;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->isEncryptedValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.class public abstract Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "KEMRecipientInfoGenerator.java"

# interfaces
.implements Lorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

.field private subjectKeyIdentifier:[B

.field protected final wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/cms/KEMKeyWrapper;)V
    .locals 0
    .param p1, "issuerAndSerial"    # Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .param p2, "wrapper"    # Lorg/bouncycastle/cms/KEMKeyWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuerAndSerial",
            "wrapper"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 25
    iput-object p2, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    .line 26
    return-void
.end method

.method protected constructor <init>([BLorg/bouncycastle/cms/KEMKeyWrapper;)V
    .locals 0
    .param p1, "subjectKeyIdentifier"    # [B
    .param p2, "wrapper"    # Lorg/bouncycastle/cms/KEMKeyWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subjectKeyIdentifier",
            "wrapper"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->subjectKeyIdentifier:[B

    .line 31
    iput-object p2, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    .line 32
    return-void
.end method


# virtual methods
.method public final generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 13
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

    .line 40
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/KEMKeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v0, "encryptedKeyBytes":[B
    nop

    .line 48
    iget-object v1, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    move-object v3, v1

    .local v1, "recipId":Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    goto :goto_0

    .line 54
    .end local v1    # "recipId":Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v3, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->subjectKeyIdentifier:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    move-object v3, v1

    .line 57
    .local v3, "recipId":Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v11, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;

    sget-object v12, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ori_kem:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    iget-object v4, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    .line 58
    invoke-virtual {v4}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v6, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v6}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getEncapsulation()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iget-object v6, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v6}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getKdfAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v8, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v8}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getKekLength()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iget-object v8, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v8}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getWrapAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v10, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {v11, v12, v2}, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v11}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;)V

    .line 57
    return-object v1

    .line 42
    .end local v0    # "encryptedKeyBytes":[B
    .end local v3    # "recipId":Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/bouncycastle/operator/OperatorException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception wrapping content key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

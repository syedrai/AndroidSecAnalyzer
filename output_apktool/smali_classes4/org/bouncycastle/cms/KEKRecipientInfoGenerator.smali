.class public abstract Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "KEKRecipientInfoGenerator.java"

# interfaces
.implements Lorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private final kekIdentifier:Lorg/bouncycastle/asn1/cms/KEKIdentifier;

.field protected final wrapper:Lorg/bouncycastle/operator/SymmetricKeyWrapper;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Lorg/bouncycastle/operator/SymmetricKeyWrapper;)V
    .locals 0
    .param p1, "kekIdentifier"    # Lorg/bouncycastle/asn1/cms/KEKIdentifier;
    .param p2, "wrapper"    # Lorg/bouncycastle/operator/SymmetricKeyWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kekIdentifier",
            "wrapper"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;->kekIdentifier:Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    .line 22
    iput-object p2, p0, Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/SymmetricKeyWrapper;

    .line 23
    return-void
.end method


# virtual methods
.method public final generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 5
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

    .line 30
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/SymmetricKeyWrapper;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/operator/SymmetricKeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 32
    .local v0, "encryptedKey":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v1, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v2, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    iget-object v3, p0, Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;->kekIdentifier:Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/cms/KEKRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/SymmetricKeyWrapper;

    invoke-virtual {v4}, Lorg/bouncycastle/operator/SymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/KEKIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;)V
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 34
    .end local v0    # "encryptedKey":Lorg/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v0

    .line 36
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

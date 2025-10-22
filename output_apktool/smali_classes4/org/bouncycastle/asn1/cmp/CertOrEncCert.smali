.class public Lorg/bouncycastle/asn1/cmp/CertOrEncCert;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CertOrEncCert.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedKey;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "tagged"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagged"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V
    .locals 2
    .param p1, "certificate"    # Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificate"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 50
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certificate\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedKey;)V
    .locals 2
    .param p1, "encryptedKey"    # Lorg/bouncycastle/asn1/crmf/EncryptedKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptedKey"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    if-eqz p1, :cond_0

    .line 69
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    .line 70
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'encryptedCert\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V
    .locals 2
    .param p1, "encryptedValue"    # Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptedValue"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    .line 60
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'encryptedCert\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertOrEncCert;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 74
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    return-object v0

    .line 79
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 84
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertificate()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getEncryptedCert()Lorg/bouncycastle/asn1/crmf/EncryptedKey;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    return-object v0
.end method

.method public hasEncryptedCertificate()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-direct {v0, v1, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

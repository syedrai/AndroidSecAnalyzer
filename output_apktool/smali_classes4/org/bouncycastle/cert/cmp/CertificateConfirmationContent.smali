.class public Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;
.super Ljava/lang/Object;
.source "CertificateConfirmationContent.java"


# instance fields
.field private content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

.field private digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;)V
    .locals 1
    .param p1, "content"    # Lorg/bouncycastle/asn1/cmp/CertConfirmContent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;-><init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 0
    .param p1, "content"    # Lorg/bouncycastle/asn1/cmp/CertConfirmContent;
    .param p2, "digestAlgFinder"    # Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "digestAlgFinder"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    .line 26
    return-void
.end method

.method public static fromPKIBody(Lorg/bouncycastle/asn1/cmp/PKIBody;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;
    .locals 1
    .param p0, "pkiBody"    # Lorg/bouncycastle/asn1/cmp/PKIBody;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkiBody"
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-static {p0, v0}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->fromPKIBody(Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;

    move-result-object v0

    return-object v0
.end method

.method public static fromPKIBody(Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;
    .locals 4
    .param p0, "pkiBody"    # Lorg/bouncycastle/asn1/cmp/PKIBody;
    .param p1, "digestAlgFinder"    # Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkiBody",
            "digestAlgFinder"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->isCertificateConfirmationContent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;-><init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content of PKIBody wrong type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isCertificateConfirmationContent(I)Z
    .locals 1
    .param p0, "bodyType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bodyType"
        }
    .end annotation

    .line 45
    packed-switch p0, :pswitch_data_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 48
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getStatusMessages()[Lorg/bouncycastle/cert/cmp/CertificateStatus;
    .locals 6

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->toCertStatusArray()[Lorg/bouncycastle/asn1/cmp/CertStatus;

    move-result-object v0

    .line 62
    .local v0, "statusArray":[Lorg/bouncycastle/asn1/cmp/CertStatus;
    array-length v1, v0

    new-array v1, v1, [Lorg/bouncycastle/cert/cmp/CertificateStatus;

    .line 64
    .local v1, "ret":[Lorg/bouncycastle/cert/cmp/CertificateStatus;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 66
    new-instance v3, Lorg/bouncycastle/cert/cmp/CertificateStatus;

    iget-object v4, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    aget-object v5, v0, v2

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/cert/cmp/CertificateStatus;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/bouncycastle/asn1/cmp/CertStatus;)V

    aput-object v3, v1, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/CertConfirmContent;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    return-object v0
.end method

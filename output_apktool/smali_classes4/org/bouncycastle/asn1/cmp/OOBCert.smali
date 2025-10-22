.class public Lorg/bouncycastle/asn1/cmp/OOBCert;
.super Lorg/bouncycastle/asn1/cmp/CMPCertificate;
.source "OOBCert.java"


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "otherCert"    # Lorg/bouncycastle/asn1/ASN1Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "otherCert"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(ILorg/bouncycastle/asn1/ASN1Object;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V
    .locals 1
    .param p1, "x509v2AttrCert"    # Lorg/bouncycastle/asn1/x509/AttributeCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x509v2AttrCert"
        }
    .end annotation

    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(ILorg/bouncycastle/asn1/ASN1Object;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Certificate;)V
    .locals 0
    .param p1, "x509v3PKCert"    # Lorg/bouncycastle/asn1/x509/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x509v3PKCert"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    .line 33
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/OOBCert;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 54
    if-eqz p0, :cond_5

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCert;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 59
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    if-eqz v0, :cond_1

    .line 63
    :try_start_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/OOBCert;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/OOBCert;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 75
    :try_start_1
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v0

    .line 80
    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid encoding in OOBCert"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_3

    .line 85
    new-instance v0, Lorg/bouncycastle/asn1/cmp/OOBCert;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/OOBCert;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v0

    .line 88
    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_4

    .line 90
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 92
    .local v0, "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    new-instance v1, Lorg/bouncycastle/asn1/cmp/OOBCert;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/cmp/OOBCert;-><init>(ILorg/bouncycastle/asn1/ASN1Object;)V

    return-object v1

    .line 95
    .end local v0    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_5
    :goto_1
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/OOBCert;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/OOBCert;
    .locals 2
    .param p0, "ato"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ato",
            "isExplicit"
        }
    .end annotation

    .line 37
    if-eqz p0, :cond_1

    .line 39
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/OOBCert;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/OOBCert;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag must be explicit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

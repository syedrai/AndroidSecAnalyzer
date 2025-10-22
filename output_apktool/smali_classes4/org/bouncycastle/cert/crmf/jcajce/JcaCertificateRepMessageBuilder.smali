.class public Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRepMessageBuilder;
.super Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;
.source "JcaCertificateRepMessageBuilder.java"


# direct methods
.method public varargs constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "caCertificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "caCertificates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRepMessageBuilder;->convert([Ljava/security/cert/X509Certificate;)[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;-><init>([Lorg/bouncycastle/cert/X509CertificateHolder;)V

    .line 26
    return-void
.end method

.method private static varargs convert([Ljava/security/cert/X509Certificate;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 4
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 31
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 32
    .local v0, "certs":[Lorg/bouncycastle/cert/X509CertificateHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 34
    new-instance v2, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    aput-object v2, v0, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.class public Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
.super Ljava/lang/Object;
.source "JcaX509CertificateConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;,
        Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateException;
    }
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/cert/jcajce/CertHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/bouncycastle/cert/jcajce/DefaultCertHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cert/jcajce/DefaultCertHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->helper:Lorg/bouncycastle/cert/jcajce/CertHelper;

    .line 26
    new-instance v0, Lorg/bouncycastle/cert/jcajce/DefaultCertHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cert/jcajce/DefaultCertHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->helper:Lorg/bouncycastle/cert/jcajce/CertHelper;

    .line 27
    return-void
.end method


# virtual methods
.method public getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "certHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->helper:Lorg/bouncycastle/cert/jcajce/CertHelper;

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cert/jcajce/CertHelper;->getCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 69
    .local v0, "cFact":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 75
    .end local v0    # "cFact":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateException;

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find required provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception parsing certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerName"
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/bouncycastle/cert/jcajce/NamedCertHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/NamedCertHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->helper:Lorg/bouncycastle/cert/jcajce/CertHelper;

    .line 52
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/bouncycastle/cert/jcajce/ProviderCertHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/ProviderCertHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->helper:Lorg/bouncycastle/cert/jcajce/CertHelper;

    .line 39
    return-object p0
.end method

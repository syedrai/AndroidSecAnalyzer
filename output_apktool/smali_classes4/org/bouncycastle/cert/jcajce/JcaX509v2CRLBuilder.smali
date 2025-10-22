.class public Lorg/bouncycastle/cert/jcajce/JcaX509v2CRLBuilder;
.super Lorg/bouncycastle/cert/X509v2CRLBuilder;
.source "JcaX509v2CRLBuilder.java"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509CRL;)V
    .locals 1
    .param p1, "templateCRL"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "templateCRL"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLHolder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLHolder;-><init>(Ljava/security/cert/X509CRL;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/X509v2CRLBuilder;-><init>(Lorg/bouncycastle/cert/X509CRLHolder;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/util/Date;)V
    .locals 1
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "now"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuerCert",
            "now"
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cert/jcajce/JcaX509v2CRLBuilder;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;)V
    .locals 1
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "now"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuer",
            "now"
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cert/X509v2CRLBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/util/Date;)V

    .line 19
    return-void
.end method

.class public Lorg/bouncycastle/cert/jcajce/JcaAttributeCertificateIssuer;
.super Lorg/bouncycastle/cert/AttributeCertificateIssuer;
.source "JcaAttributeCertificateIssuer.java"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuerCert"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/jcajce/JcaAttributeCertificateIssuer;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "issuerDN"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuerDN"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    .line 31
    return-void
.end method

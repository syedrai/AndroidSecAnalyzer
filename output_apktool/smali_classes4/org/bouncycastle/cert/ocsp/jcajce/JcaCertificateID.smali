.class public Lorg/bouncycastle/cert/ocsp/jcajce/JcaCertificateID;
.super Lorg/bouncycastle/cert/ocsp/CertificateID;
.source "JcaCertificateID.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "digestCalculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "number"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestCalculator",
            "issuerCert",
            "number"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 18
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v0, p2}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V

    .line 19
    return-void
.end method

.class public Lorg/bouncycastle/cert/jcajce/JcaX509v1CertificateBuilder;
.super Lorg/bouncycastle/cert/X509v1CertificateBuilder;
.source "JcaX509v1CertificateBuilder.java"


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;)V
    .locals 8
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p6, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "issuer",
            "serial",
            "notBefore",
            "notAfter",
            "subject",
            "publicKey"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {p5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-interface {p6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p3    # "notBefore":Ljava/util/Date;
    .end local p4    # "notAfter":Ljava/util/Date;
    .local v3, "serial":Ljava/math/BigInteger;
    .local v4, "notBefore":Ljava/util/Date;
    .local v5, "notAfter":Ljava/util/Date;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cert/X509v1CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V
    .locals 8
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p6, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "issuer",
            "serial",
            "notBefore",
            "notAfter",
            "subject",
            "publicKey"
        }
    .end annotation

    .line 31
    invoke-interface {p6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p3    # "notBefore":Ljava/util/Date;
    .end local p4    # "notAfter":Ljava/util/Date;
    .end local p5    # "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v2, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v3, "serial":Ljava/math/BigInteger;
    .local v4, "notBefore":Ljava/util/Date;
    .local v5, "notAfter":Ljava/util/Date;
    .local v6, "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cert/X509v1CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 32
    return-void
.end method

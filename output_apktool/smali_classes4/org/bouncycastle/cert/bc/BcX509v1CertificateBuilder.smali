.class public Lorg/bouncycastle/cert/bc/BcX509v1CertificateBuilder;
.super Lorg/bouncycastle/cert/X509v1CertificateBuilder;
.source "BcX509v1CertificateBuilder.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 7
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p6, "publicKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-static {p6}, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->createSubjectPublicKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local p2    # "serial":Ljava/math/BigInteger;
    .end local p3    # "notBefore":Ljava/util/Date;
    .end local p4    # "notAfter":Ljava/util/Date;
    .end local p5    # "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v1, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v2, "serial":Ljava/math/BigInteger;
    .local v3, "notBefore":Ljava/util/Date;
    .local v4, "notAfter":Ljava/util/Date;
    .local v5, "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cert/X509v1CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 32
    return-void
.end method

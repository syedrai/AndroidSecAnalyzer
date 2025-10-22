.class public Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;
.super Ljava/lang/Object;
.source "X509TrustedCertificateBlock.java"


# instance fields
.field private final certificateHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

.field private final trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/openssl/CertificateTrustBlock;)V
    .locals 0
    .param p1, "certificateHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .param p2, "trustBlock"    # Lorg/bouncycastle/openssl/CertificateTrustBlock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certificateHolder",
            "trustBlock"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 21
    iput-object p2, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;

    .line 22
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 29
    .local v0, "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v1, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 31
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 33
    .local v1, "tBlock":Lorg/bouncycastle/asn1/ASN1Object;
    if-eqz v1, :cond_0

    .line 35
    new-instance v2, Lorg/bouncycastle/openssl/CertificateTrustBlock;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/openssl/CertificateTrustBlock;-><init>([B)V

    iput-object v2, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;

    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;

    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method public getCertificateHolder()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;

    invoke-virtual {v1}, Lorg/bouncycastle/openssl/CertificateTrustBlock;->toASN1Sequence()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getTrustBlock()Lorg/bouncycastle/openssl/CertificateTrustBlock;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;

    return-object v0
.end method

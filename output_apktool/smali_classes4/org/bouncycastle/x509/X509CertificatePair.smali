.class public Lorg/bouncycastle/x509/X509CertificatePair;
.super Ljava/lang/Object;
.source "X509CertificatePair.java"


# instance fields
.field private final bcHelper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private forward:Ljava/security/cert/X509Certificate;

.field private reverse:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "forward"    # Ljava/security/cert/X509Certificate;
    .param p2, "reverse"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forward",
            "reverse"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->bcHelper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 40
    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 41
    iput-object p2, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/CertificatePair;)V
    .locals 2
    .param p1, "pair"    # Lorg/bouncycastle/asn1/x509/CertificatePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pair"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->bcHelper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 53
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getForward()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getForward()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 57
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getReverse()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getReverse()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    .line 61
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 124
    return v0

    .line 126
    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/x509/X509CertificatePair;

    if-nez v1, :cond_1

    .line 128
    return v0

    .line 130
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/x509/X509CertificatePair;

    .line 131
    .local v1, "pair":Lorg/bouncycastle/x509/X509CertificatePair;
    const/4 v2, 0x1

    .line 132
    .local v2, "equalReverse":Z
    const/4 v3, 0x1

    .line 133
    .local v3, "equalForward":Z
    iget-object v4, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_2

    .line 135
    iget-object v4, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    iget-object v5, v1, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 139
    :cond_2
    iget-object v4, v1, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_3

    .line 141
    const/4 v3, 0x0

    .line 144
    :cond_3
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_4

    .line 146
    iget-object v4, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    iget-object v5, v1, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 150
    :cond_4
    iget-object v4, v1, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_5

    .line 152
    const/4 v2, 0x0

    .line 155
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public getEncoded()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "f":Lorg/bouncycastle/asn1/x509/Certificate;
    const/4 v1, 0x0

    .line 70
    .local v1, "r":Lorg/bouncycastle/asn1/x509/Certificate;
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_1

    .line 72
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    iget-object v3, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 73
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    move-object v0, v2

    .line 74
    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v3, "unable to get encoding for forward"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "f":Lorg/bouncycastle/asn1/x509/Certificate;
    .end local v1    # "r":Lorg/bouncycastle/asn1/x509/Certificate;
    throw v2

    .line 79
    .restart local v0    # "f":Lorg/bouncycastle/asn1/x509/Certificate;
    .restart local v1    # "r":Lorg/bouncycastle/asn1/x509/Certificate;
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_3

    .line 81
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    iget-object v3, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    .line 82
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 81
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    move-object v1, v2

    .line 83
    if-eqz v1, :cond_2

    goto :goto_1

    .line 85
    :cond_2
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v3, "unable to get encoding for reverse"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "f":Lorg/bouncycastle/asn1/x509/Certificate;
    .end local v1    # "r":Lorg/bouncycastle/asn1/x509/Certificate;
    throw v2

    .line 88
    .restart local v0    # "f":Lorg/bouncycastle/asn1/x509/Certificate;
    .restart local v1    # "r":Lorg/bouncycastle/asn1/x509/Certificate;
    :cond_3
    :goto_1
    new-instance v2, Lorg/bouncycastle/asn1/x509/CertificatePair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/asn1/x509/CertificatePair;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/x509/Certificate;)V

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 94
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 90
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getForward()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getReverse()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 160
    const/4 v0, -0x1

    .line 161
    .local v0, "hash":I
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 165
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    .line 167
    mul-int/lit8 v0, v0, 0x11

    .line 168
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 170
    :cond_1
    return v0
.end method

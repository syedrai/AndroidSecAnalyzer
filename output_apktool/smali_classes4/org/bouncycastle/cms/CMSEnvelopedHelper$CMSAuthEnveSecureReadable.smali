.class Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;
.super Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;
.source "CMSEnvelopedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSEnvelopedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMSAuthEnveSecureReadable"
.end annotation


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V
    .locals 0
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "contentType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "readable"    # Lorg/bouncycastle/cms/CMSReadable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "contentType",
            "readable"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    .line 169
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 170
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;->readable:Lorg/bouncycastle/cms/CMSReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public hasAdditionalData()Z
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

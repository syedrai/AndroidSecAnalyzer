.class public Lorg/bouncycastle/cert/cmp/CMSProcessableCMPCertificate;
.super Ljava/lang/Object;
.source "CMSProcessableCMPCertificate.java"

# interfaces
.implements Lorg/bouncycastle/cms/CMSTypedData;


# instance fields
.field private final cmpCert:Lorg/bouncycastle/asn1/cmp/CMPCertificate;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V
    .locals 0
    .param p1, "cmpCertificate"    # Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmpCertificate"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/CMSProcessableCMPCertificate;->cmpCert:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 2
    .param p1, "certificateHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificateHolder"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/cmp/CMSProcessableCMPCertificate;-><init>(Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CMSProcessableCMPCertificate;->cmpCert:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 47
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CMSProcessableCMPCertificate;->cmpCert:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 36
    return-void
.end method

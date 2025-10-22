.class public abstract Lorg/bouncycastle/cms/bc/BcKeyTransRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;
.source "BcKeyTransRecipientInfoGenerator.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;)V
    .locals 2
    .param p1, "recipientCert"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .param p2, "wrapper"    # Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recipientCert",
            "wrapper"
        }
    .end annotation

    .line 13
    new-instance v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    .line 14
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;)V
    .locals 0
    .param p1, "subjectKeyIdentifier"    # [B
    .param p2, "wrapper"    # Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subjectKeyIdentifier",
            "wrapper"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>([BLorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    .line 19
    return-void
.end method

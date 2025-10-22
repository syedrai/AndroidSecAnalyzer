.class public Lorg/bouncycastle/cms/jcajce/JcaX509CertSelectorConverter;
.super Lorg/bouncycastle/cert/selector/jcajce/JcaX509CertSelectorConverter;
.source "JcaX509CertSelectorConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/bouncycastle/cert/selector/jcajce/JcaX509CertSelectorConverter;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getCertSelector(Lorg/bouncycastle/cms/KeyTransRecipientId;)Ljava/security/cert/X509CertSelector;
    .locals 3
    .param p1, "recipientId"    # Lorg/bouncycastle/cms/KeyTransRecipientId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientId"
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getSubjectKeyIdentifier()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/cms/jcajce/JcaX509CertSelectorConverter;->doConversion(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)Ljava/security/cert/X509CertSelector;

    move-result-object v0

    return-object v0
.end method

.method public getCertSelector(Lorg/bouncycastle/cms/SignerId;)Ljava/security/cert/X509CertSelector;
    .locals 3
    .param p1, "signerId"    # Lorg/bouncycastle/cms/SignerId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signerId"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerId;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerId;->getSubjectKeyIdentifier()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/cms/jcajce/JcaX509CertSelectorConverter;->doConversion(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)Ljava/security/cert/X509CertSelector;

    move-result-object v0

    return-object v0
.end method

.class Lorg/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;
.super Lorg/bouncycastle/cms/SignerInformation;
.source "CMSPatchKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSPatchKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModEncAlgSignerInformation"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 1
    .param p1, "baseInfo"    # Lorg/bouncycastle/cms/SignerInformation;
    .param p2, "signatureAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseInfo",
            "signatureAlgorithm"
        }
    .end annotation

    .line 62
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-static {v0, p2}, Lorg/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;->editEncAlg(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/cms/SignerInfo;)V

    .line 63
    return-void
.end method

.method private static editEncAlg(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 7
    .param p0, "info"    # Lorg/bouncycastle/asn1/cms/SignerInfo;
    .param p1, "signatureAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "signatureAlgorithm"
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    .line 68
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    move-object v4, p1

    .end local p1    # "signatureAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v4, "signatureAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 67
    return-object v0
.end method

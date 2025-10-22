.class public Lorg/bouncycastle/cms/CMSPatchKit;
.super Ljava/lang/Object;
.source "CMSPatchKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSPatchKit$DLSignerInformation;,
        Lorg/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNonDERSignerInfo(Lorg/bouncycastle/cms/SignerInformation;)Lorg/bouncycastle/cms/SignerInformation;
    .locals 1
    .param p0, "original"    # Lorg/bouncycastle/cms/SignerInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "original"
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/bouncycastle/cms/CMSPatchKit$DLSignerInformation;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/CMSPatchKit$DLSignerInformation;-><init>(Lorg/bouncycastle/cms/SignerInformation;)V

    return-object v0
.end method

.method public static createWithSignatureAlgorithm(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/SignerInformation;
    .locals 1
    .param p0, "original"    # Lorg/bouncycastle/cms/SignerInformation;
    .param p1, "signatureAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "signatureAlgorithm"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/CMSPatchKit$ModEncAlgSignerInformation;-><init>(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-object v0
.end method

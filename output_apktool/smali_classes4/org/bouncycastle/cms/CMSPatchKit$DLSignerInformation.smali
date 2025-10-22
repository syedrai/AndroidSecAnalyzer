.class Lorg/bouncycastle/cms/CMSPatchKit$DLSignerInformation;
.super Lorg/bouncycastle/cms/SignerInformation;
.source "CMSPatchKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSPatchKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DLSignerInformation"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/cms/SignerInformation;)V
    .locals 0
    .param p1, "baseInfo"    # Lorg/bouncycastle/cms/SignerInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseInfo"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/cms/SignerInformation;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getEncodedSignedAttributes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSPatchKit$DLSignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    const-string v1, "DL"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

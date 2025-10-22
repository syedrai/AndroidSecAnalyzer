.class public Lorg/bouncycastle/asn1/DERPrintableString;
.super Lorg/bouncycastle/asn1/ASN1PrintableString;
.source "DERPrintableString.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "validate"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1PrintableString;-><init>(Ljava/lang/String;Z)V

    .line 54
    return-void
.end method

.method constructor <init>([BZ)V
    .locals 0
    .param p1, "contents"    # [B
    .param p2, "clone"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contents",
            "clone"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1PrintableString;-><init>([BZ)V

    .line 59
    return-void
.end method

.class public Lorg/bouncycastle/asn1/DERVisibleString;
.super Lorg/bouncycastle/asn1/ASN1VisibleString;
.source "DERVisibleString.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1VisibleString;-><init>(Ljava/lang/String;)V

    .line 20
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

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1VisibleString;-><init>([BZ)V

    .line 25
    return-void
.end method

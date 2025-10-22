.class public Lorg/bouncycastle/asn1/DERVideotexString;
.super Lorg/bouncycastle/asn1/ASN1VideotexString;
.source "DERVideotexString.java"


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "octets"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "octets"
        }
    .end annotation

    .line 8
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERVideotexString;-><init>([BZ)V

    .line 9
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

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1VideotexString;-><init>([BZ)V

    .line 14
    return-void
.end method

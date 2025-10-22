.class public Lorg/bouncycastle/asn1/DERUniversalString;
.super Lorg/bouncycastle/asn1/ASN1UniversalString;
.source "DERUniversalString.java"


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "string"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERUniversalString;-><init>([BZ)V

    .line 18
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

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1UniversalString;-><init>([BZ)V

    .line 23
    return-void
.end method

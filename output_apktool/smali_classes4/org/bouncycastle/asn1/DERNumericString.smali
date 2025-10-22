.class public Lorg/bouncycastle/asn1/DERNumericString;
.super Lorg/bouncycastle/asn1/ASN1NumericString;
.source "DERNumericString.java"


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

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERNumericString;-><init>(Ljava/lang/String;Z)V

    .line 22
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

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1NumericString;-><init>(Ljava/lang/String;Z)V

    .line 35
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

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1NumericString;-><init>([BZ)V

    .line 40
    return-void
.end method

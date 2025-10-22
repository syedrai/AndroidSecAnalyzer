.class public Lorg/bouncycastle/asn1/DERIA5String;
.super Lorg/bouncycastle/asn1/ASN1IA5String;
.source "DERIA5String.java"


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

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    .line 19
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

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1IA5String;-><init>(Ljava/lang/String;Z)V

    .line 32
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

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1IA5String;-><init>([BZ)V

    .line 37
    return-void
.end method

.class public Lorg/bouncycastle/asn1/DERT61String;
.super Lorg/bouncycastle/asn1/ASN1T61String;
.source "DERT61String.java"


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

    .line 17
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1T61String;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

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

    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERT61String;-><init>([BZ)V

    .line 28
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

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1T61String;-><init>([BZ)V

    .line 33
    return-void
.end method

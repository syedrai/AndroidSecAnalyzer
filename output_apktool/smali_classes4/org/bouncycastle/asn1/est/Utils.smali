.class Lorg/bouncycastle/asn1/est/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Lorg/bouncycastle/asn1/est/AttrOrOID;)[Lorg/bouncycastle/asn1/est/AttrOrOID;
    .locals 3
    .param p0, "ids"    # [Lorg/bouncycastle/asn1/est/AttrOrOID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .line 7
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/asn1/est/AttrOrOID;

    .line 9
    .local v0, "tmp":[Lorg/bouncycastle/asn1/est/AttrOrOID;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-object v0
.end method

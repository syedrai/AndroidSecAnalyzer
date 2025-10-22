.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Psid.java"


# instance fields
.field private final psid:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "psid"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "psid"
        }
    .end annotation

    .line 19
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;-><init>(Ljava/math/BigInteger;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "psid"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "psid"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;->psid:Ljava/math/BigInteger;

    .line 30
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "psid must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 44
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    return-object v0

    .line 49
    :cond_0
    if-eqz p0, :cond_1

    .line 51
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 54
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPsid()Ljava/math/BigInteger;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;->psid:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;->psid:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

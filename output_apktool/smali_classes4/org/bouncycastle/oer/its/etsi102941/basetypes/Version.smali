.class public Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Version.java"


# instance fields
.field private final version:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;-><init>(Ljava/math/BigInteger;)V

    .line 23
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;-><init>(Ljava/math/BigInteger;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;->version:Ljava/math/BigInteger;

    .line 18
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 1
    .param p1, "integer"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "integer"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;->version:Ljava/math/BigInteger;

    .line 33
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
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

    .line 42
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    return-object v0

    .line 47
    :cond_0
    if-eqz p0, :cond_1

    .line 49
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 58
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;->version:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "NinetyDegreeInt.java"


# static fields
.field private static final loweBound:Ljava/math/BigInteger;

.field private static final unknown:Ljava/math/BigInteger;

.field private static final upperBound:Ljava/math/BigInteger;


# instance fields
.field private final value:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "-900000000"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;->loweBound:Ljava/math/BigInteger;

    .line 20
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "900000000"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;->upperBound:Ljava/math/BigInteger;

    .line 21
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "900000001"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;->unknown:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "degree"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degree"
        }
    .end annotation

    .line 27
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;-><init>(Ljava/math/BigInteger;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "degree"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degree"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    sget-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;->unknown:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 34
    sget-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;->loweBound:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 39
    sget-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;->upperBound:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ninety degree int cannot be greater than 900000000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ninety degree int cannot be less than -900000000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;->value:Ljava/math/BigInteger;

    .line 45
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 1
    .param p1, "i"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;-><init>(Ljava/math/BigInteger;)V

    .line 51
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;
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

    .line 60
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;

    return-object v0

    .line 64
    :cond_0
    if-eqz p0, :cond_1

    .line 66
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/NinetyDegreeInt;->value:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.class public Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EndEntityType.java"


# static fields
.field public static final app:I = 0x80

.field public static final enrol:I = 0x40


# instance fields
.field private final type:Lorg/bouncycastle/asn1/ASN1BitString;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "eeType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eeType"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;-><init>(Lorg/bouncycastle/asn1/ASN1BitString;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 0
    .param p1, "str"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;->type:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;
    .locals 2
    .param p0, "src"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 33
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    return-object v0

    .line 37
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;-><init>(Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getType()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;->type:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;->type:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

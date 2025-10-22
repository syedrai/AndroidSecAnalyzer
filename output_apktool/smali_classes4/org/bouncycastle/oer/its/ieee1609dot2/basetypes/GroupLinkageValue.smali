.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "GroupLinkageValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
    }
.end annotation


# instance fields
.field private final jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final value:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "jValue"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p2, "value"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jValue",
            "value"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->assertValues()V

    .line 42
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 34
    invoke-direct {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->assertValues()V

    .line 35
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertValues()V
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 56
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value is null or not nine bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jValue is null or not four bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
    .locals 1

    .line 89
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;
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

    .line 60
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;

    return-object v0

    .line 64
    :cond_0
    if-eqz p0, :cond_1

    .line 66
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getJValue()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ItsUtils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method

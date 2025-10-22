.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SspRange.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final all:I = 0x1

.field public static final bitmapSspRange:I = 0x2

.field public static final opaque:I


# instance fields
.field private final choice:I

.field private final sspRange:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "choice"    # I
    .param p2, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "choice",
            "value"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    packed-switch p1, :pswitch_data_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid choice value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_0
    nop

    .line 65
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;->choice:I

    .line 66
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;->sspRange:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 67
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .param p1, "ato"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ato"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 73
    return-void
.end method

.method public static all()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;
    .locals 3

    .line 41
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;

    const/4 v1, 0x1

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static bitmapSspRange(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;
    .locals 2
    .param p0, "ext"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;
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

    .line 78
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;

    if-eqz v0, :cond_0

    .line 80
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;

    return-object v0

    .line 83
    :cond_0
    if-eqz p0, :cond_1

    .line 85
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static opaque(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfOctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;
    .locals 2
    .param p0, "bytes"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfOctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;->choice:I

    return v0
.end method

.method public getSspRange()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;->sspRange:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 104
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;->sspRange:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

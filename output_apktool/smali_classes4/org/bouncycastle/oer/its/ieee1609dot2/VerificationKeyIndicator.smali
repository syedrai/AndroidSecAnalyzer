.class public Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "VerificationKeyIndicator.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final reconstructionValue:I = 0x1

.field public static final verificationKey:I


# instance fields
.field private final choice:I

.field private final verificationKeyIndicator:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
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

    .line 34
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->choice:I

    .line 36
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->verificationKeyIndicator:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 37
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "ato"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ato"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->choice:I

    .line 42
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->choice:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid choice value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->verificationKeyIndicator:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 49
    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->verificationKeyIndicator:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 46
    nop

    .line 56
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
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

    .line 70
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    return-object v0

    .line 75
    :cond_0
    if-eqz p0, :cond_1

    .line 77
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static reconstructionValue(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    .locals 2
    .param p0, "value"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static verificationKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    .locals 2
    .param p0, "value"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->choice:I

    return v0
.end method

.method public getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->verificationKeyIndicator:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 97
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->verificationKeyIndicator:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

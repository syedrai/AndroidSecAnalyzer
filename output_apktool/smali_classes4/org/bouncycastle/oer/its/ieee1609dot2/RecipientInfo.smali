.class public Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RecipientInfo.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final certRecipInfo:I = 0x2

.field public static final pskRecipInfo:I = 0x0

.field public static final rekRecipInfo:I = 0x4

.field public static final signedDataRecipInfo:I = 0x3

.field public static final symmRecipInfo:I = 0x1


# instance fields
.field private final choice:I

.field private final recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;


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

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->choice:I

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 41
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "instance"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->choice:I

    .line 46
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->choice:I

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

    .line 57
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 58
    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 53
    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 50
    nop

    .line 62
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static certRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2
    .param p0, "info"    # Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 103
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 66
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    if-eqz v0, :cond_0

    .line 68
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    return-object v0

    .line 71
    :cond_0
    if-eqz p0, :cond_1

    .line 73
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static pskRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2
    .param p0, "info"    # Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static rekRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2
    .param p0, "info"    # Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static signedDataRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2
    .param p0, "info"    # Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static symmRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 2
    .param p0, "info"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SymmRecipientInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 98
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->choice:I

    return v0
.end method

.method public getRecipientInfo()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 120
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->recipientInfo:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

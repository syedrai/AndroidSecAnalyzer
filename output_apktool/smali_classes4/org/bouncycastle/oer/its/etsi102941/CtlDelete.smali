.class public Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CtlDelete.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final cert:I = 0x0

.field public static final dc:I = 0x1


# instance fields
.field private final choice:I

.field private final ctlDelete:Lorg/bouncycastle/asn1/ASN1Encodable;


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

    .line 42
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->choice:I

    .line 44
    packed-switch p1, :pswitch_data_0

    .line 53
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

    .line 50
    :pswitch_0
    invoke-static {p2}, Lorg/bouncycastle/oer/its/etsi102941/DcDelete;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/DcDelete;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->ctlDelete:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 51
    return-void

    .line 47
    :pswitch_1
    invoke-static {p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->ctlDelete:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 48
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .param p1, "value"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 59
    return-void
.end method

.method public static cert(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;
    .locals 2
    .param p0, "value"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static dc(Lorg/bouncycastle/oer/its/etsi102941/DcDelete;)Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;
    .locals 2
    .param p0, "value"    # Lorg/bouncycastle/oer/its/etsi102941/DcDelete;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;
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

    .line 63
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    return-object v0

    .line 68
    :cond_0
    if-eqz p0, :cond_1

    .line 70
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->choice:I

    return v0
.end method

.method public getCtlDelete()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->ctlDelete:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 87
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->ctlDelete:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

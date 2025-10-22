.class public Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CtlCommand.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final add:I = 0x0

.field public static final delete:I = 0x1


# instance fields
.field private final choice:I

.field private final ctlCommand:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "choice"    # I
    .param p2, "ctlCommand"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "choice",
            "ctlCommand"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->choice:I

    .line 32
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->ctlCommand:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 33
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

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->choice:I

    .line 38
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->choice:I

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

    .line 44
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->ctlCommand:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 45
    return-void

    .line 41
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->ctlCommand:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 42
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static add(Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;
    .locals 2
    .param p0, "add"    # Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "add"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static delete(Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;)Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;
    .locals 2
    .param p0, "delete"    # Lorg/bouncycastle/oer/its/etsi102941/CtlDelete;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delete"
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;
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

    .line 53
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;

    return-object v0

    .line 58
    :cond_0
    if-eqz p0, :cond_1

    .line 60
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->choice:I

    return v0
.end method

.method public getCtlCommand()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->ctlCommand:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 89
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlCommand;->ctlCommand:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

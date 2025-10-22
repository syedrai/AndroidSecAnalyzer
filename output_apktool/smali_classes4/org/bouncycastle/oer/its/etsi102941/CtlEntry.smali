.class public Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CtlEntry.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final aa:I = 0x2

.field public static final dc:I = 0x3

.field public static final ea:I = 0x1

.field public static final rca:I = 0x0

.field public static final tlm:I = 0x4


# instance fields
.field private final choice:I

.field private final ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "choice"    # I
    .param p2, "ctlEntry"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "choice",
            "ctlEntry"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 38
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

    .line 42
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    .line 44
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

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

    .line 59
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 60
    return-void

    .line 56
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/DcEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/DcEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 57
    return-void

    .line 53
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/AaEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/AaEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 54
    return-void

    .line 50
    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/EaEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/EaEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 51
    return-void

    .line 47
    :pswitch_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 48
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static aa(Lorg/bouncycastle/oer/its/etsi102941/AaEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2
    .param p0, "aa"    # Lorg/bouncycastle/oer/its/etsi102941/AaEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aa"
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static dc(Lorg/bouncycastle/oer/its/etsi102941/DcEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2
    .param p0, "dc"    # Lorg/bouncycastle/oer/its/etsi102941/DcEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dc"
        }
    .end annotation

    .line 99
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static ea(Lorg/bouncycastle/oer/its/etsi102941/EaEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2
    .param p0, "ea"    # Lorg/bouncycastle/oer/its/etsi102941/EaEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ea"
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
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

    .line 70
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    return-object v0

    .line 75
    :cond_0
    if-eqz p0, :cond_1

    .line 77
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 79
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static rca(Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2
    .param p0, "rca"    # Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rca"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static tlm(Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;)Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;
    .locals 2
    .param p0, "tlm"    # Lorg/bouncycastle/oer/its/etsi102941/TlmEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tlm"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    return v0
.end method

.method public getCtlEntry()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 119
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlEntry;->ctlEntry:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

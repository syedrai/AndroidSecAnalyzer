.class public Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RecipientKeyIdentifier.java"


# instance fields
.field private date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

.field private subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;)V
    .locals 0
    .param p1, "subjectKeyIdentifier"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p2, "date"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p3, "other"    # Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subjectKeyIdentifier",
            "date",
            "other"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 41
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    .line 42
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    nop

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 66
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid RecipientKeyIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 82
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    .line 83
    goto :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    .line 79
    goto :goto_0

    .line 69
    :pswitch_2
    nop

    .line 87
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "subjectKeyIdentifier"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subjectKeyIdentifier"
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;-><init>([BLorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;)V

    .line 58
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;)V
    .locals 1
    .param p1, "subjectKeyIdentifier"    # [B
    .param p2, "date"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p3, "other"    # Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subjectKeyIdentifier",
            "date",
            "other"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 50
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 51
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    .line 52
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 118
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    if-eqz v0, :cond_0

    .line 120
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    return-object v0

    .line 123
    :cond_0
    if-eqz p0, :cond_1

    .line 125
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 128
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
    .locals 1
    .param p0, "ato"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ato",
            "isExplicit"
        }
    .end annotation

    .line 100
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getOtherKeyAttribute()Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    return-object v0
.end method

.method public getSubjectKeyIdentifier()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 152
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 154
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 156
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 166
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

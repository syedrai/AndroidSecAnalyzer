.class public Lorg/bouncycastle/asn1/tsp/Accuracy;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Accuracy.java"


# static fields
.field protected static final MAX_MICROS:I = 0x3e7

.field protected static final MAX_MILLIS:I = 0x3e7

.field protected static final MIN_MICROS:I = 0x1

.field protected static final MIN_MILLIS:I = 0x1


# instance fields
.field micros:Lorg/bouncycastle/asn1/ASN1Integer;

.field millis:Lorg/bouncycastle/asn1/ASN1Integer;

.field seconds:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 3
    .param p1, "seconds"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "millis"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p3, "micros"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seconds",
            "millis",
            "micros"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    const/16 v0, 0x3e7

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 42
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    .line 43
    .local v2, "millisValue":I
    if-lt v2, v1, :cond_0

    if-gt v2, v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid millis field : not in (1..999)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    .end local v2    # "millisValue":I
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 50
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    .line 51
    .local v2, "microsValue":I
    if-lt v2, v1, :cond_2

    if-gt v2, v0, :cond_2

    goto :goto_1

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid micros field : not in (1..999)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    .end local v2    # "microsValue":I
    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 58
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 59
    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 60
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 65
    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 66
    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 71
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 79
    .local v1, "extra":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid tag number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :pswitch_0
    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 91
    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    .line 92
    .local v2, "microsValue":I
    if-lt v2, v5, :cond_1

    if-gt v2, v3, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid micros field : not in (1..999)"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    .end local v2    # "microsValue":I
    :pswitch_1
    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 83
    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    .line 84
    .local v2, "millisValue":I
    if-lt v2, v5, :cond_2

    if-gt v2, v3, :cond_2

    goto :goto_1

    .line 86
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid millis field : not in (1..999)"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    .end local v1    # "extra":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v2    # "millisValue":I
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/Accuracy;
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

    .line 106
    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;

    if-eqz v0, :cond_0

    .line 108
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/tsp/Accuracy;

    return-object v0

    .line 111
    :cond_0
    if-eqz p0, :cond_1

    .line 113
    new-instance v0, Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/tsp/Accuracy;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getMicros()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getMillis()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSeconds()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 145
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 147
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 154
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2

    .line 159
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

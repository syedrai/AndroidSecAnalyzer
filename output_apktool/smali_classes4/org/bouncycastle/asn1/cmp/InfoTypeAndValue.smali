.class public Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "InfoTypeAndValue.java"


# instance fields
.field private final infoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final infoValue:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "infoType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "infoType"
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "infoType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "infoValue"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "infoType",
            "infoValue"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    if-eqz p1, :cond_0

    .line 86
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 87
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 88
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'infoType\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 66
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 72
    :goto_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
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

    .line 92
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    return-object v0

    .line 97
    :cond_0
    if-eqz p0, :cond_1

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getInfoType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getInfoValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 127
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 129
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 131
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 136
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.class public Lorg/bouncycastle/asn1/cmp/PKIMessages;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIMessages.java"


# instance fields
.field private final content:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessages;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V
    .locals 1
    .param p1, "msg"    # Lorg/bouncycastle/asn1/cmp/PKIMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 23
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessages;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 24
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/cmp/PKIMessage;)V
    .locals 1
    .param p1, "msgs"    # [Lorg/bouncycastle/asn1/cmp/PKIMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msgs"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessages;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIMessages;
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

    .line 33
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessages;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PKIMessages;

    return-object v0

    .line 38
    :cond_0
    if-eqz p0, :cond_1

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIMessages;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIMessages;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessages;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toPKIMessageArray()[Lorg/bouncycastle/asn1/cmp/PKIMessage;
    .locals 3

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessages;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/PKIMessage;

    .line 50
    .local v0, "result":[Lorg/bouncycastle/asn1/cmp/PKIMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 52
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIMessages;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIMessage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

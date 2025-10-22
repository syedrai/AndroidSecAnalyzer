.class public Lorg/bouncycastle/asn1/cmp/PollReqContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PollReqContent.java"


# instance fields
.field private final content:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "certReqId"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certReqId"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmp/PollReqContent;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 2
    .param p1, "certReqId"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certReqId"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmp/PollReqContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 33
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
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

    .line 21
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PollReqContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 23
    return-void
.end method

.method public constructor <init>([Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "certReqIds"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certReqIds"
        }
    .end annotation

    .line 62
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PollReqContent;->intsToASN1([Ljava/math/BigInteger;)[Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmp/PollReqContent;-><init>([Lorg/bouncycastle/asn1/ASN1Integer;)V

    .line 63
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 2
    .param p1, "certReqIds"    # [Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certReqIds"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PollReqContent;->intsToSequence([Lorg/bouncycastle/asn1/ASN1Integer;)[Lorg/bouncycastle/asn1/DERSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmp/PollReqContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 43
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PollReqContent;
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

    .line 67
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PollReqContent;

    if-eqz v0, :cond_0

    .line 69
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PollReqContent;

    return-object v0

    .line 72
    :cond_0
    if-eqz p0, :cond_1

    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PollReqContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PollReqContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static intsToASN1([Ljava/math/BigInteger;)[Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 4
    .param p0, "ids"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .line 106
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    .line 108
    .local v0, "result":[Lorg/bouncycastle/asn1/ASN1Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 110
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static intsToSequence([Lorg/bouncycastle/asn1/ASN1Integer;)[Lorg/bouncycastle/asn1/DERSequence;
    .locals 4
    .param p0, "ids"    # [Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .line 94
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/asn1/DERSequence;

    .line 96
    .local v0, "result":[Lorg/bouncycastle/asn1/DERSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 98
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v2, v0, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static sequenceToASN1IntegerArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 3
    .param p0, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    .line 84
    .local v0, "result":[Lorg/bouncycastle/asn1/ASN1Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 86
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCertReqIdValues()[Ljava/math/BigInteger;
    .locals 4

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollReqContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 132
    .local v0, "result":[Ljava/math/BigInteger;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PollReqContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 135
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 134
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getCertReqIds()[[Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollReqContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [[Lorg/bouncycastle/asn1/ASN1Integer;

    .line 120
    .local v0, "result":[[Lorg/bouncycastle/asn1/ASN1Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 122
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PollReqContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/PollReqContent;->sequenceToASN1IntegerArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollReqContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

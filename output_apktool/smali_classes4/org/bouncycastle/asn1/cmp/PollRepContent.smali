.class public Lorg/bouncycastle/asn1/cmp/PollRepContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PollRepContent.java"


# instance fields
.field private final certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

.field private final checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

.field private final reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 1
    .param p1, "certReqId"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "checkAfter"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certReqId",
            "checkAfter"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/cmp/PollRepContent;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIFreeText;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIFreeText;)V
    .locals 2
    .param p1, "certReqId"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "checkAfter"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p3, "reason"    # Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certReqId",
            "checkAfter",
            "reason"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    .line 51
    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    .line 52
    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    aput-object p2, v0, v1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    aput-object p3, v0, v1

    .line 57
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    .line 26
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 31
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 33
    .local v1, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 34
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 36
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 38
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v3

    aput-object v3, v2, v0

    .line 29
    .end local v1    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PollRepContent;
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

    .line 61
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PollRepContent;

    return-object v0

    .line 66
    :cond_0
    if-eqz p0, :cond_1

    .line 68
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PollRepContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PollRepContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertReqId(I)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCheckAfter(I)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getReason(I)Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    array-length v0, v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 107
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 109
    .local v0, "outer":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 111
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 113
    .local v2, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 121
    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    .end local v2    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

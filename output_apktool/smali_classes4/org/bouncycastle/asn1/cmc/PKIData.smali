.class public Lorg/bouncycastle/asn1/cmc/PKIData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIData.java"


# instance fields
.field private final cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

.field private final controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

.field private final otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

.field private final reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;


# direct methods
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

    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 48
    .local v0, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    .line 49
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 51
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    move-result-object v3

    aput-object v3, v2, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "t":I
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 55
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    .line 56
    const/4 v1, 0x0

    .restart local v1    # "t":I
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 58
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    move-result-object v3

    aput-object v3, v2, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    .end local v1    # "t":I
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 62
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    .line 63
    const/4 v1, 0x0

    .restart local v1    # "t":I
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 65
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    move-result-object v3

    aput-object v3, v2, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 68
    .end local v1    # "t":I
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 69
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/cmc/OtherMsg;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    .line 70
    const/4 v1, 0x0

    .restart local v1    # "t":I
    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 72
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cmc/OtherMsg;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/OtherMsg;

    move-result-object v3

    aput-object v3, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 74
    .end local v1    # "t":I
    :cond_3
    return-void

    .line 44
    .end local v0    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence not 4 elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/cmc/TaggedAttribute;[Lorg/bouncycastle/asn1/cmc/TaggedRequest;[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;[Lorg/bouncycastle/asn1/cmc/OtherMsg;)V
    .locals 1
    .param p1, "controlSequence"    # [Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
    .param p2, "reqSequence"    # [Lorg/bouncycastle/asn1/cmc/TaggedRequest;
    .param p3, "cmsSequence"    # [Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;
    .param p4, "otherMsgSequence"    # [Lorg/bouncycastle/asn1/cmc/OtherMsg;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlSequence",
            "reqSequence",
            "cmsSequence",
            "otherMsgSequence"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedAttribute;)[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    .line 35
    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedRequest;)[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    .line 36
    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;)[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    .line 37
    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/OtherMsg;)[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    .line 38
    return-void
.end method

.method private copy([Lorg/bouncycastle/asn1/cmc/OtherMsg;)[Lorg/bouncycastle/asn1/cmc/OtherMsg;
    .locals 3
    .param p1, "otherMsgs"    # [Lorg/bouncycastle/asn1/cmc/OtherMsg;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherMsgs"
        }
    .end annotation

    .line 149
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmc/OtherMsg;

    .line 151
    .local v0, "tmp":[Lorg/bouncycastle/asn1/cmc/OtherMsg;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-object v0
.end method

.method private copy([Lorg/bouncycastle/asn1/cmc/TaggedAttribute;)[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
    .locals 3
    .param p1, "taggedAtts"    # [Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedAtts"
        }
    .end annotation

    .line 107
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    .line 109
    .local v0, "tmp":[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    return-object v0
.end method

.method private copy([Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;)[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;
    .locals 3
    .param p1, "taggedConts"    # [Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedConts"
        }
    .end annotation

    .line 135
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    .line 137
    .local v0, "tmp":[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    return-object v0
.end method

.method private copy([Lorg/bouncycastle/asn1/cmc/TaggedRequest;)[Lorg/bouncycastle/asn1/cmc/TaggedRequest;
    .locals 3
    .param p1, "taggedReqs"    # [Lorg/bouncycastle/asn1/cmc/TaggedRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedReqs"
        }
    .end annotation

    .line 121
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    .line 123
    .local v0, "tmp":[Lorg/bouncycastle/asn1/cmc/TaggedRequest;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/PKIData;
    .locals 2
    .param p0, "src"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 78
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;

    if-eqz v0, :cond_0

    .line 80
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/PKIData;

    return-object v0

    .line 82
    :cond_0
    if-eqz p0, :cond_1

    .line 84
    new-instance v0, Lorg/bouncycastle/asn1/cmc/PKIData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/PKIData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 86
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCmsSequence()[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;)[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public getControlSequence()[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedAttribute;)[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getOtherMsgSequence()[Lorg/bouncycastle/asn1/cmc/OtherMsg;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/OtherMsg;)[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    move-result-object v0

    return-object v0
.end method

.method public getReqSequence()[Lorg/bouncycastle/asn1/cmc/TaggedRequest;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedRequest;)[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 91
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

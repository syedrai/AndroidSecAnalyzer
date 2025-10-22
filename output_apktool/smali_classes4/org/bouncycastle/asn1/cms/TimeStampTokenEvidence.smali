.class public Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "TimeStampTokenEvidence.java"


# instance fields
.field private timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "count":I
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "count":I
    .local v3, "count":I
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    move-result-object v4

    aput-object v4, v2, v0

    move v0, v3

    goto :goto_0

    .line 47
    .end local v1    # "en":Ljava/util/Enumeration;
    .end local v3    # "count":I
    .restart local v0    # "count":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)V
    .locals 2
    .param p1, "timeStampAndCRL"    # Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStampAndCRL"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 35
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)V
    .locals 1
    .param p1, "timeStampAndCRLs"    # [Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStampAndCRLs"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->copy([Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    .line 28
    return-void
.end method

.method private copy([Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    .locals 3
    .param p1, "tsAndCrls"    # [Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tsAndCrls"
        }
    .end annotation

    .line 88
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    .line 90
    .local v0, "tmp":[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;
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

    .line 69
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    return-object v0

    .line 73
    :cond_0
    if-eqz p0, :cond_1

    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;
    .locals 1
    .param p0, "tagged"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagged",
            "explicit"
        }
    .end annotation

    .line 51
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 97
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 99
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toTimeStampAndCRLArray()[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->copy([Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    move-result-object v0

    return-object v0
.end method

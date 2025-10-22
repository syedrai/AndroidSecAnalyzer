.class public Lorg/bouncycastle/asn1/cms/Evidence;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Evidence.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

.field private otherEvidence:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3
    .param p1, "tagged"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagged"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 50
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 54
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->otherEvidence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown tag in Evidence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;)V
    .locals 0
    .param p1, "tstEvidence"    # Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tstEvidence"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;)V
    .locals 0
    .param p1, "ersEvidence"    # Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ersEvidence"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Evidence;->ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    .line 40
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Evidence;
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

    .line 76
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lorg/bouncycastle/asn1/cms/Evidence;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/Evidence;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/Evidence;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/Evidence;
    .locals 2
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 92
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Evidence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Evidence;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getErsEvidence()Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    return-object v0
.end method

.method public getTstEvidence()Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    invoke-direct {v0, v1, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/Evidence;->ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 121
    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/Evidence;->otherEvidence:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

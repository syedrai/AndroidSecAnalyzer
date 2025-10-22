.class public Lorg/bouncycastle/asn1/cmp/CRLStatus;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CRLStatus.java"


# instance fields
.field private final source:Lorg/bouncycastle/asn1/cmp/CRLSource;

.field private final thisUpdate:Lorg/bouncycastle/asn1/x509/Time;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected sequence size of 1 or 2, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CRLSource;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CRLSource;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->source:Lorg/bouncycastle/asn1/cmp/CRLSource;

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 29
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    goto :goto_1

    .line 33
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 40
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CRLSource;Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "source"    # Lorg/bouncycastle/asn1/cmp/CRLSource;
    .param p2, "thisUpdate"    # Lorg/bouncycastle/asn1/x509/Time;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "thisUpdate"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->source:Lorg/bouncycastle/asn1/cmp/CRLSource;

    .line 45
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 46
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CRLStatus;
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

    .line 50
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/CRLStatus;

    return-object v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CRLStatus;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CRLStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 58
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getSource()Lorg/bouncycastle/asn1/cmp/CRLSource;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->source:Lorg/bouncycastle/asn1/cmp/CRLSource;

    return-object v0
.end method

.method public getThisUpdate()Lorg/bouncycastle/asn1/x509/Time;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getTime()Lorg/bouncycastle/asn1/x509/Time;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 82
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->source:Lorg/bouncycastle/asn1/cmp/CRLSource;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 83
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CRLStatus;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.class public Lorg/bouncycastle/asn1/tsp/TimeStampReq;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "TimeStampReq.java"


# instance fields
.field certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

.field extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

.field nonce:Lorg/bouncycastle/asn1/ASN1Integer;

.field tsaPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field version:Lorg/bouncycastle/asn1/ASN1Integer;


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

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 48
    .local v0, "nbObjects":I
    const/4 v1, 0x0

    .line 51
    .local v1, "seqStart":I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 56
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 60
    move v2, v1

    .local v2, "opt":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 63
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v3, :cond_0

    .line 65
    iget-object v3, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v2, v4}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->checkOption(Ljava/lang/Object;II)V

    .line 66
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v4, 0x3

    invoke-direct {p0, v3, v2, v4}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->checkOption(Ljava/lang/Object;II)V

    .line 72
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v3, :cond_2

    .line 77
    iget-object v3, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v2, v4}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->checkOption(Ljava/lang/Object;II)V

    .line 78
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_4

    .line 83
    iget-object v3, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    const/4 v4, 0x5

    invoke-direct {p0, v3, v2, v4}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->checkOption(Ljava/lang/Object;II)V

    .line 84
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 85
    .local v3, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_3

    .line 87
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 89
    .end local v3    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_3
    nop

    .line 60
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "unidentified structure in sequence"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v2    # "opt":I
    :cond_5
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 3
    .param p1, "messageImprint"    # Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .param p2, "tsaPolicy"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "nonce"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p4, "certReq"    # Lorg/bouncycastle/asn1/ASN1Boolean;
    .param p5, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageImprint",
            "tsaPolicy",
            "nonce",
            "certReq",
            "extensions"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 113
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 115
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    .line 116
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 117
    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 118
    iput-object p4, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 119
    iput-object p5, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 120
    return-void
.end method

.method private checkOption(Ljava/lang/Object;II)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "maxOption"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "o",
            "index",
            "maxOption"
        }
    .end annotation

    .line 99
    if-nez p1, :cond_0

    if-gt p2, p3, :cond_0

    .line 103
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly placed optional in sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TimeStampReq;
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

    .line 32
    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    return-object v0

    .line 36
    :cond_0
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertReq()Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    return-object v0
.end method

.method public getNonce()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 172
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 174
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 175
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 187
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 192
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_3

    .line 194
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 197
    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.class public Lorg/bouncycastle/asn1/ocsp/ResponseData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ResponseData.java"


# static fields
.field private static final V1:Lorg/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private producedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private responderID:Lorg/bouncycastle/asn1/ocsp/ResponderID;

.field private responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private responses:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;

.field private versionPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0
    .param p1, "version"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "responderID"    # Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .param p3, "producedAt"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p4, "responses"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .param p5, "responseExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "responderID",
            "producedAt",
            "responses",
            "responseExtensions"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 47
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    .line 48
    iput-object p3, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 49
    iput-object p4, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responses:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 50
    iput-object p5, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 51
    return-void
.end method

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

    .line 80
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 87
    .local v2, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_0

    .line 89
    iput-boolean v3, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->versionPresent:Z

    .line 90
    nop

    .line 91
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 90
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 98
    .end local v2    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_0
    goto :goto_1

    .line 101
    :cond_1
    sget-object v1, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 104
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    .line 105
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 106
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responses:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 108
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 110
    nop

    .line 111
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 110
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 113
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 6
    .param p1, "responderID"    # Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .param p2, "producedAt"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p3, "responses"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .param p4, "responseExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "responderID",
            "producedAt",
            "responses",
            "responseExtensions"
        }
    .end annotation

    .line 75
    sget-object v1, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/ASN1Integer;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "responderID":Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .end local p2    # "producedAt":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local p3    # "responses":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local p4    # "responseExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    .local v2, "responderID":Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .local v3, "producedAt":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .local v4, "responses":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v5, "responseExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 6
    .param p1, "responderID"    # Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .param p2, "producedAt"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p3, "responses"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .param p4, "responseExtensions"    # Lorg/bouncycastle/asn1/x509/X509Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "responderID",
            "producedAt",
            "responses",
            "responseExtensions"
        }
    .end annotation

    .line 66
    sget-object v1, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {p2}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v3

    invoke-static {p4}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    .end local p1    # "responderID":Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .end local p3    # "responses":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v2, "responderID":Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .local v4, "responses":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ocsp/ResponderID;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 67
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseData;
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

    .line 125
    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    if-eqz v0, :cond_0

    .line 127
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    return-object v0

    .line 129
    :cond_0
    if-eqz p0, :cond_1

    .line 131
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .locals 1
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

    .line 119
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProducedAt()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getResponderID()Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    return-object v0
.end method

.method public getResponseExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getResponses()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responses:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 175
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 177
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->versionPresent:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v3, Lorg/bouncycastle/asn1/ocsp/ResponseData;->V1:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 183
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 184
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responses:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 185
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_2

    .line 187
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 190
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

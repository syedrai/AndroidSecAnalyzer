.class public Lorg/bouncycastle/asn1/cmc/PKIResponse;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIResponse.java"


# static fields
.field public static final EMPTY_CMS_SEQUENCE:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

.field public static final EMPTY_OTHER_MSG:[Lorg/bouncycastle/asn1/cmc/OtherMsg;


# instance fields
.field private final cmsSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final controlSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final otherMsgSequence:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    sput-object v1, Lorg/bouncycastle/asn1/cmc/PKIResponse;->EMPTY_CMS_SEQUENCE:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    .line 28
    new-array v0, v0, [Lorg/bouncycastle/asn1/cmc/OtherMsg;

    sput-object v0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->EMPTY_OTHER_MSG:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    return-void
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

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->controlSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->cmsSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->otherMsgSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 43
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/TaggedAttribute;)V
    .locals 1
    .param p1, "controlSequence"    # Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlSequence"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->controlSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 70
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->cmsSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 71
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->otherMsgSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 72
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/cmc/TaggedAttribute;[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;[Lorg/bouncycastle/asn1/cmc/OtherMsg;)V
    .locals 1
    .param p1, "controlSequence"    # [Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
    .param p2, "cmsSequence"    # [Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;
    .param p3, "otherMsgSequence"    # [Lorg/bouncycastle/asn1/cmc/OtherMsg;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlSequence",
            "cmsSequence",
            "otherMsgSequence"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->controlSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 77
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->cmsSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 78
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->otherMsgSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 79
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/PKIResponse;
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

    .line 47
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/PKIResponse;

    return-object v0

    .line 52
    :cond_0
    if-eqz p0, :cond_1

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/cmc/PKIResponse;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/PKIResponse;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmc/PKIResponse;
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

    .line 64
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/PKIResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/PKIResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCmsSequence()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->cmsSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getControlSequence()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->controlSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getOtherMsgSequence()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->otherMsgSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 83
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 85
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->controlSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->cmsSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIResponse;->otherMsgSequence:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

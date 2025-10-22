.class public Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CMCStatusInfoV2.java"


# instance fields
.field private final bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field private final otherStatusInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

.field private final statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;


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

    .line 59
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CMCStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 67
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v3, 0x0

    if-le v0, v1, :cond_2

    .line 69
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 71
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 77
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    goto :goto_0

    .line 81
    :cond_1
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 82
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    goto :goto_0

    .line 87
    :cond_2
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 88
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 90
    :goto_0
    return-void

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCStatus;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;)V
    .locals 0
    .param p1, "cMCStatus"    # Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .param p2, "bodyList"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .param p3, "statusString"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .param p4, "otherStatusInfo"    # Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cMCStatus",
            "bodyList",
            "statusString",
            "otherStatusInfo"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 53
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 54
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 55
    iput-object p4, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;
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

    .line 137
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;

    if-eqz v0, :cond_0

    .line 139
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;

    return-object v0

    .line 142
    :cond_0
    if-eqz p0, :cond_1

    .line 144
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 147
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBodyList()[Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/Utils;->toBodyPartIDArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    return-object v0
.end method

.method public getCMCStatus()Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    return-object v0
.end method

.method public getOtherStatusInfo()Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    return-object v0
.end method

.method public getStatusString()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    check-cast v0, Lorg/bouncycastle/asn1/DERUTF8String;

    .line 115
    :goto_1
    return-object v0
.end method

.method public getStatusStringUTF8()Lorg/bouncycastle/asn1/ASN1UTF8String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    return-object v0
.end method

.method public getcMCStatus()Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    return-object v0
.end method

.method public hasOtherInfo()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 152
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 154
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 167
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

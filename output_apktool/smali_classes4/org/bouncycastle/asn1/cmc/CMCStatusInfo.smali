.class public Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CMCStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    }
.end annotation


# instance fields
.field private final bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field private final otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

.field private final statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CMCStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 55
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 57
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 58
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->-$$Nest$smgetInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    .line 62
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 65
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    goto :goto_0

    .line 69
    :cond_1
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 70
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->-$$Nest$smgetInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    goto :goto_0

    .line 75
    :cond_2
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 76
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    .line 78
    :goto_0
    return-void

    .line 50
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCStatus;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;)V
    .locals 0
    .param p1, "cMCStatus"    # Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .param p2, "bodyList"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .param p3, "statusString"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .param p4, "otherInfo"    # Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
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
            "otherInfo"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 41
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 42
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 43
    iput-object p4, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    .line 44
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;
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

    .line 82
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;

    if-eqz v0, :cond_0

    .line 84
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;

    return-object v0

    .line 87
    :cond_0
    if-eqz p0, :cond_1

    .line 89
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 92
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBodyList()[Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/Utils;->toBodyPartIDArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    return-object v0
.end method

.method public getCMCStatus()Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    return-object v0
.end method

.method public getOtherInfo()Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    return-object v0
.end method

.method public getStatusString()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    check-cast v0, Lorg/bouncycastle/asn1/DERUTF8String;

    .line 126
    :goto_1
    return-object v0
.end method

.method public getStatusStringUTF8()Lorg/bouncycastle/asn1/ASN1UTF8String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    return-object v0
.end method

.method public hasOtherInfo()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

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

    .line 97
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 98
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 100
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 108
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

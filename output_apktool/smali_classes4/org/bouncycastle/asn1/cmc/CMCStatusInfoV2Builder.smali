.class public Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;
.super Ljava/lang/Object;
.source "CMCStatusInfoV2Builder.java"


# instance fields
.field private final bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field private otherInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

.field private statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCStatus;Lorg/bouncycastle/asn1/cmc/BodyPartID;)V
    .locals 1
    .param p1, "cMCStatus"    # Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .param p2, "bodyPartID"    # Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cMCStatus",
            "bodyPartID"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 19
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCStatus;[Lorg/bouncycastle/asn1/cmc/BodyPartID;)V
    .locals 1
    .param p1, "cMCStatus"    # Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .param p2, "bodyList"    # [Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cMCStatus",
            "bodyList"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 25
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 26
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;
    .locals 5

    .line 58
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->cMCStatus:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->bodyList:Lorg/bouncycastle/asn1/ASN1Sequence;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    iget-object v4, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->otherInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2;-><init>(Lorg/bouncycastle/asn1/cmc/CMCStatus;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;)V

    return-object v0
.end method

.method public setOtherInfo(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;
    .locals 1
    .param p1, "failInfo"    # Lorg/bouncycastle/asn1/cmc/CMCFailInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failInfo"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->otherInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 39
    return-object p0
.end method

.method public setOtherInfo(Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;
    .locals 1
    .param p1, "extendedFailInfo"    # Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extendedFailInfo"
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->otherInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 46
    return-object p0
.end method

.method public setOtherInfo(Lorg/bouncycastle/asn1/cmc/PendInfo;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;
    .locals 1
    .param p1, "pendInfo"    # Lorg/bouncycastle/asn1/cmc/PendInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pendInfo"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/PendInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->otherInfo:Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 53
    return-object p0
.end method

.method public setStatusString(Ljava/lang/String;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;
    .locals 1
    .param p1, "statusString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statusString"
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfoV2Builder;->statusString:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 32
    return-object p0
.end method

.class public Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CtlFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;
    }
.end annotation


# instance fields
.field private final ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

.field private final ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

.field private final isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private final nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

.field private final version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
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

    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 52
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 53
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 54
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

    .line 56
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;)V
    .locals 0
    .param p1, "version"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .param p2, "nextUpdate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .param p3, "isFullCtl"    # Lorg/bouncycastle/asn1/ASN1Boolean;
    .param p4, "ctlSequence"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .param p5, "ctlCommands"    # Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;
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
            "nextUpdate",
            "isFullCtl",
            "ctlSequence",
            "ctlCommands"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 38
    iput-object p3, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 39
    iput-object p4, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 40
    iput-object p5, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

    .line 41
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;
    .locals 1

    .line 104
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;
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

    .line 61
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;

    return-object v0

    .line 65
    :cond_0
    if-eqz p0, :cond_1

    .line 67
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCtlCommands()Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

    return-object v0
.end method

.method public getCtlSequence()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    return-object v0
.end method

.method public getIsFullCtl()Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public getNextUpdate()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;->ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

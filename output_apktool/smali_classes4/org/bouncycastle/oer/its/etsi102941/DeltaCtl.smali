.class public Lorg/bouncycastle/oer/its/etsi102941/DeltaCtl;
.super Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;
.source "DeltaCtl.java"


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;)V
    .locals 6
    .param p1, "version"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .param p2, "nextUpdate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .param p3, "ctlSequence"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .param p4, "ctlCommands"    # Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "nextUpdate",
            "ctlSequence",
            "ctlCommands"
        }
    .end annotation

    .line 19
    sget-object v3, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "version":Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .end local p2    # "nextUpdate":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .end local p3    # "ctlSequence":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .end local p4    # "ctlCommands":Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;
    .local v1, "version":Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .local v2, "nextUpdate":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .local v4, "ctlSequence":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .local v5, "ctlCommands":Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;-><init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;)V

    .line 20
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/DeltaCtl;
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

    .line 29
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/DeltaCtl;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/DeltaCtl;

    return-object v0

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    .line 36
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/DeltaCtl;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/DeltaCtl;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

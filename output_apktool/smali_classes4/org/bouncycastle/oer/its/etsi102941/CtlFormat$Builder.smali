.class public Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;
.super Ljava/lang/Object;
.source "CtlFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

.field private ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

.field private isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

.field private version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCtlFormat()Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;
    .locals 6

    .line 153
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat;-><init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;)V

    return-object v0
.end method

.method public createDeltaCtl()Lorg/bouncycastle/oer/its/etsi102941/DeltaCtl;
    .locals 5

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "isFullCtl must be false for DeltaCtl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    :goto_0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/DeltaCtl;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/etsi102941/DeltaCtl;-><init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;)V

    return-object v0
.end method

.method public createFullCtl()Lorg/bouncycastle/oer/its/etsi102941/FullCtl;
    .locals 6

    .line 168
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/FullCtl;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/oer/its/etsi102941/FullCtl;-><init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;)V

    return-object v0
.end method

.method public createToBeSignedRcaCtl()Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedRcaCtl;
    .locals 6

    .line 173
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedRcaCtl;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedRcaCtl;-><init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;)V

    return-object v0
.end method

.method public setCtlCommands(Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;)Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;
    .locals 0
    .param p1, "ctlCommands"    # Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctlCommands"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlCommands:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCtlCommand;

    .line 148
    return-object p0
.end method

.method public setCtlSequence(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;
    .locals 2
    .param p1, "ctlSequence"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctlSequence"
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 142
    return-object p0
.end method

.method public setCtlSequence(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;
    .locals 0
    .param p1, "ctlSequence"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctlSequence"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->ctlSequence:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 136
    return-object p0
.end method

.method public setIsFullCtl(Lorg/bouncycastle/asn1/ASN1Boolean;)Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;
    .locals 0
    .param p1, "isFullCtl"    # Lorg/bouncycastle/asn1/ASN1Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFullCtl"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->isFullCtl:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 130
    return-object p0
.end method

.method public setNextUpdate(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;
    .locals 0
    .param p1, "nextUpdate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextUpdate"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 124
    return-object p0
.end method

.method public setVersion(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;)Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;
    .locals 0
    .param p1, "version"    # Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/CtlFormat$Builder;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    .line 118
    return-object p0
.end method

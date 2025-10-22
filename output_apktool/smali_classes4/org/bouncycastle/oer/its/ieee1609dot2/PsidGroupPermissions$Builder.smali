.class public Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
.super Ljava/lang/Object;
.source "PsidGroupPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

.field private eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

.field private minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

.field private subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public createPsidGroupPermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;
    .locals 5

    .line 164
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;)V

    return-object v0
.end method

.method public setChainLengthRange(J)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 1
    .param p1, "chainLengthRange"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chainLengthRange"
        }
    .end annotation

    .line 150
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 151
    return-object p0
.end method

.method public setChainLengthRange(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 1
    .param p1, "chainLengthRange"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chainLengthRange"
        }
    .end annotation

    .line 144
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 145
    return-object p0
.end method

.method public setChainLengthRange(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 0
    .param p1, "chainLengthRange"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chainLengthRange"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 133
    return-object p0
.end method

.method public setEeType(Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 0
    .param p1, "eeType"    # Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eeType"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    .line 158
    return-object p0
.end method

.method public setMinChainLength(J)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 1
    .param p1, "minChainLength"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minChainLength"
        }
    .end annotation

    .line 126
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 127
    return-object p0
.end method

.method public setMinChainLength(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 1
    .param p1, "minChainLength"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minChainLength"
        }
    .end annotation

    .line 120
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 121
    return-object p0
.end method

.method public setMinChainLength(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 0
    .param p1, "minChainLength"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minChainLength"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 139
    return-object p0
.end method

.method public setSubjectPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 0
    .param p1, "subjectPermissions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subjectPermissions"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;->subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    .line 115
    return-object p0
.end method

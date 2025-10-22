.class public Lorg/bouncycastle/its/ITSCertificateBuilder;
.super Ljava/lang/Object;
.source "ITSCertificateBuilder.java"


# instance fields
.field protected cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field protected crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

.field protected final issuer:Lorg/bouncycastle/its/ITSCertificate;

.field protected final tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

.field protected version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 2
    .param p1, "issuer"    # Lorg/bouncycastle/its/ITSCertificate;
    .param p2, "tbsCertificateBuilder"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuer",
            "tbsCertificateBuilder"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 21
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 23
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    .line 35
    iput-object p2, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setCracaId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setCrlSeries(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 1
    .param p1, "tbsCertificateBuilder"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbsCertificateBuilder"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/its/ITSCertificateBuilder;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getIssuer()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public varargs setAppPermissions([Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 5
    .param p1, "psidSsps"    # [Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "psidSsps"
        }
    .end annotation

    .line 102
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp$Builder;

    move-result-object v0

    .line 104
    .local v0, "bldr":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 106
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;

    const/4 v3, 0x0

    aget-object v4, p1, v1

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp$Builder;->setItem([Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp$Builder;

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp$Builder;->createSequenceOfPsidSsp()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setAppPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 111
    return-object p0
.end method

.method public varargs setCertIssuePermissions([Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 2
    .param p1, "permissions"    # [Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissions"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 95
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions$Builder;->addGroupPermission([Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions$Builder;->createSequenceOfPsidGroupPermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setCertIssuePermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 97
    return-object p0
.end method

.method public setCracaId([B)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 2
    .param p1, "cracaId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cracaId"
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setCracaId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 68
    return-object p0
.end method

.method public setCrlSeries(I)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 2
    .param p1, "crlSeries"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crlSeries"
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setCrlSeries(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 82
    return-object p0
.end method

.method public setValidityPeriod(Lorg/bouncycastle/its/ITSValidityPeriod;)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 2
    .param p1, "validityPeriod"    # Lorg/bouncycastle/its/ITSValidityPeriod;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validityPeriod"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSValidityPeriod;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setValidityPeriod(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    .line 89
    return-object p0
.end method

.method public setVersion(I)Lorg/bouncycastle/its/ITSCertificateBuilder;
    .locals 1
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/its/ITSCertificateBuilder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 54
    return-object p0
.end method

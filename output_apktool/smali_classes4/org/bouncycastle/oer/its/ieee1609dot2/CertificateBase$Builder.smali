.class public Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
.super Ljava/lang/Object;
.source "CertificateBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

.field private signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

.field private toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

.field private type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

.field private version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;
    .locals 6

    .line 165
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)V

    return-object v0
.end method

.method public createCertificateBase()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;
    .locals 6

    .line 180
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)V

    return-object v0
.end method

.method public createEtsiTs103097Certificate()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;
    .locals 5

    .line 185
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)V

    return-object v0
.end method

.method public createExplicitCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/ExplicitCertificate;
    .locals 5

    .line 170
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ExplicitCertificate;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/ExplicitCertificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)V

    return-object v0
.end method

.method public createImplicitCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/ImplicitCertificate;
    .locals 5

    .line 175
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ImplicitCertificate;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/ImplicitCertificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)V

    return-object v0
.end method

.method public setIssuer(Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
    .locals 0
    .param p1, "issuer"    # Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->issuer:Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    .line 148
    return-object p0
.end method

.method public setSignature(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
    .locals 0
    .param p1, "signature"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->signature:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    .line 160
    return-object p0
.end method

.method public setToBeSigned(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
    .locals 0
    .param p1, "toBeSigned"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toBeSigned"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->toBeSigned:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    .line 154
    return-object p0
.end method

.method public setType(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
    .locals 0
    .param p1, "type"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    .line 142
    return-object p0
.end method

.method public setVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;
    .locals 0
    .param p1, "version"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 136
    return-object p0
.end method

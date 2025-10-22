.class public Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;
.super Ljava/lang/Object;
.source "EeEcaCertRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private canonicalId:Lorg/bouncycastle/asn1/DERIA5String;

.field private generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

.field private tbsCert:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

.field private type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

.field private version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEeEcaCertRequest()Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;
    .locals 6

    .line 179
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->tbsCert:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->canonicalId:Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;Lorg/bouncycastle/asn1/ASN1IA5String;)V

    return-object v0
.end method

.method public setCanonicalId(Ljava/lang/String;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;
    .locals 1
    .param p1, "canonicalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canonicalId"
        }
    .end annotation

    .line 172
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->canonicalId:Lorg/bouncycastle/asn1/DERIA5String;

    .line 173
    return-object p0
.end method

.method public setCanonicalId(Lorg/bouncycastle/asn1/DERIA5String;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;
    .locals 0
    .param p1, "canonicalId"    # Lorg/bouncycastle/asn1/DERIA5String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canonicalId"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->canonicalId:Lorg/bouncycastle/asn1/DERIA5String;

    .line 167
    return-object p0
.end method

.method public setGenerationTime(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;
    .locals 0
    .param p1, "generationTime"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "generationTime"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 149
    return-object p0
.end method

.method public setTbsCert(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;
    .locals 0
    .param p1, "tbsCert"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbsCert"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->tbsCert:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    .line 161
    return-object p0
.end method

.method public setType(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;
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

    .line 154
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    .line 155
    return-object p0
.end method

.method public setVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;
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

    .line 142
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 143
    return-object p0
.end method

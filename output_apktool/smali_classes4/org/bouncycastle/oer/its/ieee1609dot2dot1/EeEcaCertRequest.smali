.class public Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EeEcaCertRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;
    }
.end annotation


# instance fields
.field private final canonicalId:Lorg/bouncycastle/asn1/ASN1IA5String;

.field private final generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

.field private final tbsCert:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

.field private final type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

.field private final version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
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

    .line 63
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 71
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->tbsCert:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    .line 73
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1IA5String;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->canonicalId:Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 75
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;Lorg/bouncycastle/asn1/ASN1IA5String;)V
    .locals 0
    .param p1, "version"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .param p2, "generationTime"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .param p3, "type"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;
    .param p4, "tbsCert"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .param p5, "canonicalId"    # Lorg/bouncycastle/asn1/ASN1IA5String;
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
            "generationTime",
            "type",
            "tbsCert",
            "canonicalId"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    .line 56
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    .line 57
    iput-object p3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    .line 58
    iput-object p4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->tbsCert:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    .line 59
    iput-object p5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->canonicalId:Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 60
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;
    .locals 1

    .line 79
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;
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

    .line 84
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;

    if-eqz v0, :cond_0

    .line 86
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;

    return-object v0

    .line 89
    :cond_0
    if-eqz p0, :cond_1

    .line 91
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCanonicalId()Lorg/bouncycastle/asn1/ASN1IA5String;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->canonicalId:Lorg/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public getGenerationTime()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    return-object v0
.end method

.method public getTbsCert()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->tbsCert:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    return-object v0
.end method

.method public getType()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->generationTime:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->type:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->tbsCert:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2dot1/EeEcaCertRequest;->canonicalId:Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 104
    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 99
    invoke-static {v0}, Lorg/bouncycastle/oer/its/ItsUtils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method

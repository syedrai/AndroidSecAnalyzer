.class public Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ToBeSignedCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    }
.end annotation


# instance fields
.field private final appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

.field private final assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

.field private final canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

.field private final certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

.field private final certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

.field private final cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field private final crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

.field private final encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

.field private final id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

.field private final region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

.field private final validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

.field private final verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;


# direct methods
.method static bridge synthetic -$$Nest$fgetappPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetassuranceLevel(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcanRequestRollover(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/asn1/ASN1Null;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcertIssuePermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcertRequestPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcracaId(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcrlSeries(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetencryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetid(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetregion(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidityPeriod(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetverifyKeyIndicator(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    return-object p0
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 91
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 93
    .local v0, "seq":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/bouncycastle/asn1/ASN1Encodable;>;"
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    .line 102
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    .line 103
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    .line 104
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    .line 105
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 106
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 107
    const-class v1, Lorg/bouncycastle/asn1/ASN1Null;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Null;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    .line 108
    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    .line 110
    return-void

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "expected sequence size of 12"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/asn1/ASN1Null;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;)V
    .locals 0
    .param p1, "certificateId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .param p2, "cracaId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .param p3, "crlSeries"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;
    .param p4, "validityPeriod"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;
    .param p5, "geographicRegion"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;
    .param p6, "assuranceLevel"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;
    .param p7, "appPermissions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;
    .param p8, "certIssuePermissions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .param p9, "certRequestPermissions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .param p10, "canRequestRollover"    # Lorg/bouncycastle/asn1/ASN1Null;
    .param p11, "encryptionKey"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .param p12, "verificationKeyIndicator"    # Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certificateId",
            "cracaId",
            "crlSeries",
            "validityPeriod",
            "geographicRegion",
            "assuranceLevel",
            "appPermissions",
            "certIssuePermissions",
            "certRequestPermissions",
            "canRequestRollover",
            "encryptionKey",
            "verificationKeyIndicator"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    .line 74
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 75
    iput-object p3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    .line 76
    iput-object p4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    .line 77
    iput-object p5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    .line 78
    iput-object p6, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    .line 79
    iput-object p7, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    .line 80
    iput-object p8, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 81
    iput-object p9, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 82
    iput-object p10, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    .line 83
    iput-object p11, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    .line 84
    iput-object p12, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    .line 85
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 1

    .line 232
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
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

    .line 115
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    if-eqz v0, :cond_0

    .line 117
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    return-object v0

    .line 120
    :cond_0
    if-eqz p0, :cond_1

    .line 122
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 125
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAppPermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    return-object v0
.end method

.method public getAssuranceLevel()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    return-object v0
.end method

.method public getCanRequestRollover()Lorg/bouncycastle/asn1/ASN1Null;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    return-object v0
.end method

.method public getCertIssuePermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object v0
.end method

.method public getCertRequestPermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    return-object v0
.end method

.method public getCracaId()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    return-object v0
.end method

.method public getCrlSeries()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    return-object v0
.end method

.method public getEncryptionKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    return-object v0
.end method

.method public getId()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    return-object v0
.end method

.method public getRegion()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    return-object v0
.end method

.method public getValidityPeriod()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    return-object v0
.end method

.method public getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 214
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    .line 219
    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    .line 220
    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    .line 221
    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 222
    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 223
    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    .line 224
    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    .line 225
    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    aput-object v2, v0, v1

    .line 214
    invoke-static {v0}, Lorg/bouncycastle/oer/its/ItsUtils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method

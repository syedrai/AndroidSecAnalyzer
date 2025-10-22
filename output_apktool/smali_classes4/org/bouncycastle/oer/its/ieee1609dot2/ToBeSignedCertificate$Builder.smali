.class public Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
.super Ljava/lang/Object;
.source "ToBeSignedCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

.field private assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

.field private canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

.field private certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

.field private certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

.field private cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

.field private crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

.field private encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

.field private id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

.field private region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

.field private validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

.field private verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 1
    .param p1, "o"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    .line 257
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 258
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    .line 259
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    .line 260
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    .line 261
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    .line 262
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    .line 263
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 264
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 265
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    .line 266
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    .line 267
    iget-object v0, p1, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    .line 268
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)V
    .locals 1
    .param p1, "o"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetid(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    .line 273
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetcracaId(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 274
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetcrlSeries(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    .line 275
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetvalidityPeriod(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    .line 276
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetregion(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    .line 277
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetassuranceLevel(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    .line 278
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetappPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    .line 279
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetcertIssuePermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 280
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetcertRequestPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 281
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetcanRequestRollover(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/asn1/ASN1Null;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    .line 282
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetencryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    .line 283
    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->-$$Nest$fgetverifyKeyIndicator(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    .line 284
    return-void
.end method


# virtual methods
.method public createToBeSignedCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;
    .locals 13

    .line 361
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    iget-object v6, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    iget-object v7, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    iget-object v8, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iget-object v9, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    iget-object v10, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    iget-object v11, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    iget-object v12, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    invoke-direct/range {v0 .. v12}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;Lorg/bouncycastle/asn1/ASN1Null;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;)V

    return-object v0
.end method

.method public setAppPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "appPermissions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appPermissions"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->appPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SequenceOfPsidSsp;

    .line 326
    return-object p0
.end method

.method public setAssuranceLevel(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "assuranceLevel"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assuranceLevel"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->assuranceLevel:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SubjectAssurance;

    .line 320
    return-object p0
.end method

.method public setCanRequestRollover()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 1

    .line 343
    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->canRequestRollover:Lorg/bouncycastle/asn1/ASN1Null;

    .line 344
    return-object p0
.end method

.method public setCertIssuePermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "certIssuePermissions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certIssuePermissions"
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certIssuePermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 332
    return-object p0
.end method

.method public setCertRequestPermissions(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "certRequestPermissions"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certRequestPermissions"
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->certRequestPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfPsidGroupPermissions;

    .line 338
    return-object p0
.end method

.method public setCracaId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "cracaId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cracaId"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->cracaId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId3;

    .line 296
    return-object p0
.end method

.method public setCrlSeries(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "crlSeries"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crlSeries"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->crlSeries:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/CrlSeries;

    .line 302
    return-object p0
.end method

.method public setEncryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "encryptionKey"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptionKey"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->encryptionKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    .line 350
    return-object p0
.end method

.method public setId(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "id"    # Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->id:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    .line 290
    return-object p0
.end method

.method public setRegion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "region"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "region"
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->region:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GeographicRegion;

    .line 314
    return-object p0
.end method

.method public setValidityPeriod(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "validityPeriod"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validityPeriod"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->validityPeriod:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    .line 308
    return-object p0
.end method

.method public setVerifyKeyIndicator(Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .locals 0
    .param p1, "verifyKeyIndicator"    # Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifyKeyIndicator"
        }
    .end annotation

    .line 355
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->verifyKeyIndicator:Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    .line 356
    return-object p0
.end method

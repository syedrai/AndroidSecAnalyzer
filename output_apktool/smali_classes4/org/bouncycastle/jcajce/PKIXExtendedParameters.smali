.class public Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
.super Ljava/lang/Object;
.source "PKIXExtendedParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    }
.end annotation


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final PKIX_VALIDITY_MODEL:I


# instance fields
.field private final baseParameters:Ljava/security/cert/PKIXParameters;

.field private final date:Ljava/util/Date;

.field private final extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final namedCRLStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final namedCertificateStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final revocationEnabled:Z

.field private final targetConstraints:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private final trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final useDeltas:Z

.field private final validityDate:Ljava/util/Date;

.field private final validityModel:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbaseParameters(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetextraCRLStores(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetextraCertStores(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnamedCRLStoreMap(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnamedCertificateStoreMap(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettargetConstraints(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuseDeltas(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidityModel(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    return p0
.end method

.method private constructor <init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)V
    .locals 2
    .param p1, "builder"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetbaseParameters(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 211
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetvalidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    .line 212
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetdate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    .line 213
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetextraCertStores(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetnamedCertificateStoreMap(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    .line 215
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetextraCRLStores(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetnamedCRLStoreMap(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    .line 217
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgettargetConstraints(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 218
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetrevocationEnabled(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->revocationEnabled:Z

    .line 219
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetuseDeltas(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    .line 220
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetvalidityModel(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    .line 221
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgettrustAnchors(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->trustAnchors:Ljava/util/Set;

    .line 222
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lorg/bouncycastle/jcajce/PKIXExtendedParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 286
    return-object p0
.end method

.method public getCRLStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    return-object v0
.end method

.method public getCertPathCheckers()Ljava/util/List;
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCertStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 3

    .line 261
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getInitialPolicies()Ljava/util/Set;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNamedCRLStoreMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method public getNamedCertificateStoreMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPolicyQualifiersRejected()Z
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    return v0
.end method

.method public getSigProvider()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object v0
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->trustAnchors:Ljava/util/Set;

    return-object v0
.end method

.method public getValidityDate()Ljava/util/Date;
    .locals 3

    .line 253
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0
.end method

.method public getValidityModel()I
    .locals 1

    .line 281
    iget v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    return v0
.end method

.method public isAnyPolicyInhibited()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    return v0
.end method

.method public isExplicitPolicyRequired()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    return v0
.end method

.method public isPolicyMappingInhibited()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    return v0
.end method

.method public isRevocationEnabled()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->revocationEnabled:Z

    return v0
.end method

.method public isUseDeltasEnabled()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    return v0
.end method

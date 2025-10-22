.class public Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "X509RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;,
        Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;
    }
.end annotation


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field private static LOG:Ljava/util/logging/Logger;

.field public static final PKIX_VALIDITY_MODEL:I

.field protected static final crlReasons:[Ljava/lang/String;


# instance fields
.field private final canSoftFail:Z

.field private final crlCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentDate:Ljava/util/Date;

.field private final failHardMaxTime:J

.field private final failLogMaxTime:J

.field private final failures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final isCheckEEOnly:Z

.field private signingCert:Ljava/security/cert/X509Certificate;

.field private final trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final validationDate:Ljava/util/Date;

.field private final validityModel:I

.field private workingIssuerName:Ljavax/security/auth/x500/X500Principal;

.field private workingPublicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 288
    const-class v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 652
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)V
    .locals 2
    .param p1, "bldr"    # Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bldr"
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetcrls(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetcrlCertStores(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    .line 311
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetisCheckEEOnly(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->isCheckEEOnly:Z

    .line 312
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetvalidityModel(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validityModel:I

    .line 313
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgettrustAnchors(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    .line 314
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetcanSoftFail(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->canSoftFail:Z

    .line 315
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetfailLogMaxTime(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failLogMaxTime:J

    .line 316
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetfailHardMaxTime(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failHardMaxTime:J

    .line 317
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetvalidityDate(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validationDate:Ljava/util/Date;

    .line 319
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetprovider(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetprovider(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/security/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetproviderName(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->-$$Nest$fgetproviderName(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    goto :goto_0

    .line 329
    :cond_1
    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 331
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)V

    return-void
.end method

.method private addIssuers(Ljava/util/List;Ljava/security/cert/CertStore;)V
    .locals 1
    .param p2, "certStore"    # Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "issuerList",
            "certStore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Ljava/security/cert/CertStore;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 538
    .local p1, "issuerList":Ljava/util/List;, "Ljava/util/List<Ljavax/security/auth/x500/X500Principal;>;"
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    .line 552
    return-void
.end method

.method private addIssuers(Ljava/util/List;Lorg/bouncycastle/util/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "issuerList",
            "certStore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p1, "issuerList":Ljava/util/List;, "Ljava/util/List<Ljavax/security/auth/x500/X500Principal;>;"
    .local p2, "certStore":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Ljava/security/cert/CRL;>;"
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Ljava/util/List;)V

    invoke-interface {p2, v0}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    .line 575
    return-void
.end method

.method private downloadCRLs(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .locals 27
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "crlDpPrimitive"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .param p4, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "issuer",
            "currentDate",
            "crlDpPrimitive",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/Date;",
            "Lorg/bouncycastle/asn1/ASN1Primitive;",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .line 579
    const-string v1, "downloadCRLs"

    const-string v2, "org.bouncycastle.pkix.jcajce.X509RevocationChecker"

    invoke-static/range {p3 .. p3}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v3

    .line 580
    .local v3, "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v4

    .line 585
    .local v4, "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_0
    const-string v0, "X.509"

    move-object/from16 v5, p4

    invoke-interface {v5, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v6, v0

    .line 598
    .local v6, "certFact":Ljava/security/cert/CertificateFactory;
    nop

    .line 600
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    move-object v7, v0

    .line 601
    .local v7, "crlSelector":Ljava/security/cert/X509CRLSelector;
    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 603
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v0, v7}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v9

    .line 604
    .local v9, "crlselect":Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v10, v0

    .line 606
    .local v10, "crls":Ljava/util/Set;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_0
    array-length v0, v4

    if-eq v11, v0, :cond_5

    .line 608
    aget-object v12, v4, v11

    .line 609
    .local v12, "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v13

    .line 611
    .local v13, "dpn":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v0

    if-nez v0, :cond_4

    .line 613
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v14

    .line 615
    .local v14, "names":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v0, 0x0

    move v15, v0

    .local v15, "n":I
    :goto_1
    array-length v0, v14

    if-eq v15, v0, :cond_3

    .line 617
    aget-object v16, v14, v15

    .line 618
    .local v16, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    move-object/from16 v17, v3

    .end local v3    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v17, "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    .line 620
    const/4 v3, 0x0

    .line 623
    .local v3, "url":Ljava/net/URI;
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    check-cast v18, Lorg/bouncycastle/asn1/ASN1String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v19, v3

    .end local v3    # "url":Ljava/net/URI;
    .local v19, "url":Ljava/net/URI;
    :try_start_2
    invoke-interface/range {v18 .. v18}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v0

    .line 625
    .end local v19    # "url":Ljava/net/URI;
    .restart local v3    # "url":Ljava/net/URI;
    move-object/from16 v18, v4

    move-object/from16 v4, p0

    .end local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .local v18, "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_3
    iget-object v0, v4, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validationDate:Ljava/util/Date;

    invoke-static {v6, v0, v3}, Lorg/bouncycastle/pkix/jcajce/CrlCache;->getCrl(Ljava/security/cert/CertificateFactory;Ljava/util/Date;Ljava/net/URI;)Lorg/bouncycastle/jcajce/PKIXCRLStore;

    move-result-object v0

    .line 627
    .local v0, "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    if-eqz v0, :cond_0

    .line 629
    move-object/from16 v19, v0

    .end local v0    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    .local v19, "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 630
    move-object/from16 v20, v3

    .end local v3    # "url":Ljava/net/URI;
    .local v20, "url":Ljava/net/URI;
    :try_start_4
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 629
    move-object/from16 v4, p2

    :try_start_5
    invoke-static {v9, v4, v0, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 633
    .end local v19    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v4, p2

    :goto_2
    move-object/from16 v3, v20

    goto :goto_4

    .line 627
    .end local v20    # "url":Ljava/net/URI;
    .restart local v0    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    .restart local v3    # "url":Ljava/net/URI;
    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    .line 643
    .end local v0    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    .end local v3    # "url":Ljava/net/URI;
    .restart local v20    # "url":Ljava/net/URI;
    :goto_3
    move-object/from16 v26, v6

    move-object/from16 v19, v7

    goto/16 :goto_5

    .line 633
    .end local v20    # "url":Ljava/net/URI;
    .restart local v3    # "url":Ljava/net/URI;
    :catch_2
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v20, v3

    .end local v3    # "url":Ljava/net/URI;
    .restart local v20    # "url":Ljava/net/URI;
    goto :goto_4

    .end local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v20    # "url":Ljava/net/URI;
    .restart local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .local v19, "url":Ljava/net/URI;
    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v4, p2

    move-object/from16 v3, v19

    .end local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    goto :goto_4

    .end local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v19    # "url":Ljava/net/URI;
    .restart local v3    # "url":Ljava/net/URI;
    .restart local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    :catch_4
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    move-object/from16 v4, p2

    .end local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    :goto_4
    move-object/from16 v24, v0

    .line 635
    .local v24, "e":Ljava/lang/Exception;
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    move-object/from16 v25, v3

    .end local v3    # "url":Ljava/net/URI;
    .local v25, "url":Ljava/net/URI;
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const-string v3, " ignored: "

    move/from16 v19, v0

    const-string v0, "CrlDP "

    if-eqz v19, :cond_1

    .line 637
    sget-object v19, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v20, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v6

    .end local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    .local v26, "certFact":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v21, "org.bouncycastle.pkix.jcajce.X509RevocationChecker"

    const-string v22, "downloadCRLs"

    invoke-virtual/range {v19 .. v24}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v19, v7

    goto :goto_5

    .line 641
    .end local v26    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    :cond_1
    move-object/from16 v26, v6

    .end local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v26    # "certFact":Ljava/security/cert/CertificateFactory;
    sget-object v4, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v7

    .end local v7    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .local v19, "crlSelector":Ljava/security/cert/X509CRLSelector;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v2, v1, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 618
    .end local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v19    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .end local v24    # "e":Ljava/lang/Exception;
    .end local v25    # "url":Ljava/net/URI;
    .end local v26    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v26, v6

    move-object/from16 v19, v7

    .line 615
    .end local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v7    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .end local v16    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v19    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .restart local v26    # "certFact":Ljava/security/cert/CertificateFactory;
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, p1

    move-object/from16 v5, p4

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v26

    goto/16 :goto_1

    .end local v17    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v19    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .end local v26    # "certFact":Ljava/security/cert/CertificateFactory;
    .local v3, "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    :cond_3
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v26, v6

    move-object/from16 v19, v7

    .end local v3    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v7    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .restart local v17    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v19    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .restart local v26    # "certFact":Ljava/security/cert/CertificateFactory;
    goto :goto_6

    .line 611
    .end local v14    # "names":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v15    # "n":I
    .end local v17    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v19    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .end local v26    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    :cond_4
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v26, v6

    move-object/from16 v19, v7

    .line 606
    .end local v3    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v7    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .end local v12    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v13    # "dpn":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v17    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v19    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .restart local v26    # "certFact":Ljava/security/cert/CertificateFactory;
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p1

    move-object/from16 v5, p4

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v26

    goto/16 :goto_0

    .line 649
    .end local v11    # "i":I
    .end local v17    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v19    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .end local v26    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    :cond_5
    return-object v10

    .line 587
    .end local v6    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v7    # "crlSelector":Ljava/security/cert/X509CRLSelector;
    .end local v9    # "crlselect":Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v10    # "crls":Ljava/util/Set;
    :catch_5
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v4    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v17    # "crlDp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v18    # "points":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    move-object v8, v0

    .line 589
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const-string v3, "could not create certFact: "

    if-eqz v0, :cond_6

    .line 591
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v5, "org.bouncycastle.pkix.jcajce.X509RevocationChecker"

    const-string v6, "downloadCRLs"

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 595
    :cond_6
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v1, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :goto_7
    const/4 v0, 0x0

    return-object v0
.end method

.method static getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .param p0, "crldp"    # Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "crldp",
            "namedCRLStoreMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/x509/CRLDistPoint;",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 668
    .local p1, "namedCRLStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    if-nez p0, :cond_0

    .line 670
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 676
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .local v0, "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    nop

    .line 683
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v1, "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 687
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    .line 689
    .local v3, "dpn":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 691
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 693
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 695
    aget-object v6, v4, v5

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    .line 696
    .local v6, "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    if-eqz v6, :cond_1

    .line 698
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    .end local v6    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 685
    .end local v3    # "dpn":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    .end local v2    # "i":I
    :cond_3
    return-object v1

    .line 678
    .end local v0    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v1    # "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "could not read distribution points could not be read"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 21
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certificate",
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 358
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 360
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    iget-boolean v0, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->isCheckEEOnly:Z

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 362
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 363
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 364
    iput-object v5, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 366
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    .line 371
    .local v0, "trustAnchor":Ljava/security/cert/TrustAnchor;
    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    if-nez v2, :cond_5

    .line 373
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 375
    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 379
    .local v3, "anchor":Ljava/security/cert/TrustAnchor;
    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 380
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    :cond_1
    move-object v0, v3

    .line 384
    .end local v3    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_2
    goto :goto_0

    .line 386
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_3
    if-eqz v0, :cond_4

    .line 391
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 392
    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    move-object v10, v0

    goto :goto_1

    .line 388
    :cond_4
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no trust anchor found for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 371
    :cond_5
    move-object v10, v0

    .line 395
    .end local v0    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    .local v10, "trustAnchor":Ljava/security/cert/TrustAnchor;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 400
    .local v11, "issuerList":Ljava/util/List;, "Ljava/util/List<Ljavax/security/auth/x500/X500Principal;>;"
    :try_start_0
    new-instance v0, Ljava/security/cert/PKIXParameters;

    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 401
    .local v0, "pkixParams":Ljava/security/cert/PKIXParameters;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 402
    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validationDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    .line 404
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 406
    sget-object v3, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 408
    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    invoke-direct {v1, v11, v3}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->addIssuers(Ljava/util/List;Ljava/security/cert/CertStore;)V

    .line 410
    :cond_6
    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    invoke-virtual {v0, v3}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 413
    .end local v2    # "i":I
    :cond_7
    new-instance v2, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v2, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    move-object v12, v2

    .line 414
    .local v12, "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    iget v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validityModel:I

    invoke-virtual {v12, v2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_b

    .line 419
    nop

    .line 421
    .end local v0    # "pkixParams":Ljava/security/cert/PKIXParameters;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_9

    .line 423
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 425
    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/util/Store;

    invoke-direct {v1, v11, v2}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->addIssuers(Ljava/util/List;Lorg/bouncycastle/util/Store;)V

    .line 427
    :cond_8
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;

    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/util/Store;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;-><init>(Lorg/bouncycastle/util/Store;)V

    invoke-virtual {v12, v2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 430
    .end local v0    # "i":I
    :cond_9
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v13, "\""

    const-string v14, "check"

    const-string v15, "org.bouncycastle.pkix.jcajce.X509RevocationChecker"

    if-eqz v0, :cond_a

    .line 432
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "configured with 0 pre-loaded CRLs"

    invoke-virtual {v0, v2, v15, v14, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 436
    :cond_a
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 438
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_b

    .line 440
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configuring with CRL for issuer \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v15, v14, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    :cond_b
    goto :goto_5

    .line 445
    :cond_c
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configured with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pre-loaded CRLs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v15, v14, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :goto_5
    invoke-virtual {v12}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v2

    .line 451
    .local v2, "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validationDate:Ljava/util/Date;

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    .line 455
    .local v4, "validityDate":Ljava/util/Date;
    :try_start_1
    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v6, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    iget-object v7, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 528
    move-object/from16 v18, v2

    move-object/from16 v20, v4

    goto/16 :goto_9

    .line 457
    :catch_0
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    goto/16 :goto_b

    .line 461
    :catch_1
    move-exception v0

    move-object/from16 v16, v0

    .line 463
    .local v16, "e":Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_13

    .line 471
    :try_start_3
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 472
    invoke-static {v5, v3}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    iget-object v6, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 471
    invoke-direct {v1, v0, v4, v3, v6}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->downloadCRLs(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_9

    move-object v3, v0

    .line 477
    .local v3, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    nop

    .line 479
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 483
    :try_start_4
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;

    new-instance v6, Lorg/bouncycastle/util/CollectionStore;

    invoke-direct {v6, v3}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v6}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;-><init>(Lorg/bouncycastle/util/Store;)V

    invoke-virtual {v12, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 485
    invoke-virtual {v12}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    move-object v2, v0

    .line 487
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validationDate:Ljava/util/Date;

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_8

    move-object v4, v0

    .line 489
    move-object v6, v3

    .end local v3    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .local v6, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :try_start_5
    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_7

    move-object v7, v6

    .end local v6    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .local v7, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :try_start_6
    iget-object v6, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;
    :try_end_6
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v8, v7

    .end local v7    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .local v8, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :try_start_7
    iget-object v7, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;
    :try_end_7
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v9, v8

    .end local v8    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .local v9, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :try_start_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_4

    move-object v13, v9

    .end local v9    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .local v13, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :try_start_9
    iget-object v9, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_3

    move-object/from16 v17, v13

    .end local v13    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .local v17, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :try_start_a
    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_a
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_a .. :try_end_a} :catch_2

    .line 495
    goto/16 :goto_a

    .line 492
    :catch_2
    move-exception v0

    goto :goto_6

    .end local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v13    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :catch_3
    move-exception v0

    move-object/from16 v17, v13

    .end local v13    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    goto :goto_6

    .end local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v9    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :catch_4
    move-exception v0

    move-object/from16 v17, v9

    .end local v9    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    goto :goto_6

    .end local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v8    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :catch_5
    move-exception v0

    move-object/from16 v17, v8

    .end local v8    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    goto :goto_6

    .end local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v7    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :catch_6
    move-exception v0

    move-object/from16 v17, v7

    .end local v7    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    goto :goto_6

    .end local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v6    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :catch_7
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    goto :goto_6

    .end local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v3    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :catch_8
    move-exception v0

    move-object/from16 v17, v3

    .line 494
    .end local v3    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .local v0, "e1":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :goto_6
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 499
    .end local v0    # "e1":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v3    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :cond_d
    move-object/from16 v17, v3

    .end local v3    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .restart local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    iget-boolean v0, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->canSoftFail:Z

    if-eqz v0, :cond_12

    .line 504
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 506
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 507
    .local v3, "initial":Ljava/lang/Long;
    if-eqz v3, :cond_11

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 510
    .local v6, "period":J
    iget-wide v8, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failHardMaxTime:J

    const-wide/16 v18, -0x1

    cmp-long v20, v8, v18

    if-eqz v20, :cond_f

    iget-wide v8, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failHardMaxTime:J

    cmp-long v18, v8, v6

    if-ltz v18, :cond_e

    goto :goto_7

    .line 512
    :cond_e
    throw v16

    .line 514
    :cond_f
    :goto_7
    iget-wide v8, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failLogMaxTime:J

    move-object/from16 v18, v2

    .end local v2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v18, "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    const-string/jumbo v2, "soft failing for issuer: \""

    cmp-long v19, v6, v8

    if-gez v19, :cond_10

    .line 516
    sget-object v8, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    move-object/from16 v19, v3

    .end local v3    # "initial":Ljava/lang/Long;
    .local v19, "initial":Ljava/lang/Long;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v4

    .end local v4    # "validityDate":Ljava/util/Date;
    .local v20, "validityDate":Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v15, v14, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 520
    .end local v19    # "initial":Ljava/lang/Long;
    .end local v20    # "validityDate":Ljava/util/Date;
    .restart local v3    # "initial":Ljava/lang/Long;
    .restart local v4    # "validityDate":Ljava/util/Date;
    :cond_10
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "initial":Ljava/lang/Long;
    .end local v4    # "validityDate":Ljava/util/Date;
    .restart local v19    # "initial":Ljava/lang/Long;
    .restart local v20    # "validityDate":Ljava/util/Date;
    sget-object v3, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v15, v14, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .end local v6    # "period":J
    :goto_8
    goto :goto_9

    .line 525
    .end local v18    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v19    # "initial":Ljava/lang/Long;
    .end local v20    # "validityDate":Ljava/util/Date;
    .restart local v2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v3    # "initial":Ljava/lang/Long;
    .restart local v4    # "validityDate":Ljava/util/Date;
    :cond_11
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .end local v2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v3    # "initial":Ljava/lang/Long;
    .end local v4    # "validityDate":Ljava/util/Date;
    .restart local v18    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v19    # "initial":Ljava/lang/Long;
    .restart local v20    # "validityDate":Ljava/util/Date;
    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .end local v0    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .end local v16    # "e":Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;
    .end local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    .end local v18    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v19    # "initial":Ljava/lang/Long;
    .end local v20    # "validityDate":Ljava/util/Date;
    .restart local v2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v4    # "validityDate":Ljava/util/Date;
    :goto_9
    move-object/from16 v2, v18

    move-object/from16 v4, v20

    :goto_a
    iput-object v5, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 531
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 532
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 533
    return-void

    .line 501
    .restart local v16    # "e":Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;
    .restart local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :cond_12
    throw v16

    .line 474
    .end local v17    # "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/CRL;>;"
    :catch_9
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    .line 476
    .end local v2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "validityDate":Ljava/util/Date;
    .local v0, "e1":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v18    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v20    # "validityDate":Ljava/util/Date;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 465
    .end local v0    # "e1":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v18    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v20    # "validityDate":Ljava/util/Date;
    .restart local v2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v4    # "validityDate":Ljava/util/Date;
    :cond_13
    throw v16

    .line 457
    .end local v16    # "e":Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;
    :catch_a
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    .line 459
    .end local v2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "validityDate":Ljava/util/Date;
    .local v0, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v18    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v20    # "validityDate":Ljava/util/Date;
    :goto_b
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 416
    .end local v0    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v12    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v18    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v20    # "validityDate":Ljava/util/Date;
    :catch_b
    move-exception v0

    .line 418
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error setting up baseParams: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 20
    .param p1, "pkixParams"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "validityDate"    # Ljava/util/Date;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .param p5, "sign"    # Ljava/security/cert/X509Certificate;
    .param p6, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p7, "certPathCerts"    # Ljava/util/List;
    .param p8, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "pkixParams",
            "currentDate",
            "validityDate",
            "cert",
            "sign",
            "workingPublicKey",
            "certPathCerts",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 734
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object v12, v0

    .line 739
    .local v12, "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    nop

    .line 741
    new-instance v8, Lorg/bouncycastle/pkix/jcajce/CertStatus;

    invoke-direct {v8}, Lorg/bouncycastle/pkix/jcajce/CertStatus;-><init>()V

    .line 742
    .local v8, "certStatus":Lorg/bouncycastle/pkix/jcajce/CertStatus;
    new-instance v9, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    invoke-direct {v9}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>()V

    .line 743
    .local v9, "reasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    const/4 v1, 0x0

    .line 744
    .local v1, "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const/4 v2, 0x0

    .line 747
    .local v2, "validCrlFound":Z
    const/16 v13, 0xb

    if-eqz v12, :cond_3

    .line 752
    :try_start_1
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v14, v0

    .line 757
    .local v14, "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    nop

    .line 759
    if-eqz v14, :cond_2

    .line 761
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v15, p1

    invoke-direct {v0, v15}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    move-object v3, v0

    .line 764
    .local v3, "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_start_2
    invoke-virtual {v15}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 765
    .local v0, "extras":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v6, :cond_0

    .line 767
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    invoke-virtual {v3, v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 770
    .end local v0    # "extras":Ljava/util/List;
    .end local v4    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    move v7, v2

    move-object/from16 v18, v3

    goto :goto_4

    .line 774
    :cond_0
    nop

    .line 776
    move v4, v2

    .end local v2    # "validCrlFound":Z
    .local v4, "validCrlFound":Z
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v2

    .line 777
    .local v2, "pkixParamsFinal":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v6, p2

    move v7, v4

    .end local v4    # "validCrlFound":Z
    .local v7, "validCrlFound":Z
    invoke-static {v2, v6}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    .line 779
    .local v4, "validityDateFinal":Ljava/util/Date;
    const/4 v0, 0x0

    move-object/from16 v16, v1

    move/from16 v17, v7

    move v1, v0

    .end local v7    # "validCrlFound":Z
    .local v1, "i":I
    .local v16, "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .local v17, "validCrlFound":Z
    :goto_1
    array-length v0, v14

    if-ge v1, v0, :cond_1

    invoke-virtual {v8}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v13, :cond_1

    invoke-virtual {v9}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_1

    .line 783
    move v7, v1

    .end local v1    # "i":I
    .local v7, "i":I
    :try_start_4
    aget-object v1, v14, v7
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v18, v3

    move-object v3, v6

    move/from16 v19, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .end local v3    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v7    # "i":I
    .local v18, "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v19, "i":I
    :try_start_5
    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/pkix/jcajce/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 785
    const/16 v17, 0x1

    .line 790
    goto :goto_3

    .line 787
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v18    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v19    # "i":I
    .restart local v3    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v7    # "i":I
    :catch_2
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v7

    .line 789
    .end local v3    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v7    # "i":I
    .local v0, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v18    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v19    # "i":I
    :goto_2
    move-object/from16 v16, v0

    .line 779
    .end local v0    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :goto_3
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v6, p2

    move-object/from16 v5, p4

    move-object/from16 v3, v18

    .end local v19    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .end local v18    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v3    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :cond_1
    move/from16 v19, v1

    move-object/from16 v18, v3

    .end local v1    # "i":I
    .end local v3    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v18    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v19    # "i":I
    goto :goto_6

    .line 770
    .end local v4    # "validityDateFinal":Ljava/util/Date;
    .end local v16    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v19    # "i":I
    .local v1, "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .local v2, "validCrlFound":Z
    .restart local v3    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :catch_3
    move-exception v0

    move v7, v2

    move-object/from16 v18, v3

    .line 772
    .end local v2    # "validCrlFound":Z
    .end local v3    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v0    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .local v7, "validCrlFound":Z
    .restart local v18    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :goto_4
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v3, "no additional CRL locations could be decoded from CRL distribution point extension"

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 759
    .end local v0    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v7    # "validCrlFound":Z
    .end local v18    # "pkixBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v2    # "validCrlFound":Z
    :cond_2
    move-object/from16 v15, p1

    move v7, v2

    .end local v2    # "validCrlFound":Z
    .restart local v7    # "validCrlFound":Z
    goto :goto_5

    .line 754
    .end local v7    # "validCrlFound":Z
    .end local v14    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v2    # "validCrlFound":Z
    :catch_4
    move-exception v0

    move-object/from16 v15, p1

    move v7, v2

    .line 756
    .end local v2    # "validCrlFound":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "validCrlFound":Z
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v3, "cannot read distribution points"

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 747
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "validCrlFound":Z
    .restart local v2    # "validCrlFound":Z
    :cond_3
    move-object/from16 v15, p1

    move v7, v2

    .line 801
    .end local v2    # "validCrlFound":Z
    .restart local v7    # "validCrlFound":Z
    :goto_5
    move-object/from16 v16, v1

    move/from16 v17, v7

    .end local v1    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v7    # "validCrlFound":Z
    .restart local v16    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v17    # "validCrlFound":Z
    :goto_6
    invoke-virtual {v8}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v13, :cond_4

    invoke-virtual {v9}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_4

    .line 810
    :try_start_6
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 812
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    new-instance v1, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v2, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v4, Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 813
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v4, v6, v5}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/ReasonFlags;Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    .line 814
    .local v1, "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual {v15}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 815
    .local v2, "pkixParamsClone":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/pkix/jcajce/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_6
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 817
    const/16 v17, 0x1

    .line 822
    .end local v0    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .end local v1    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v2    # "pkixParamsClone":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v0, v16

    goto :goto_7

    .line 819
    :catch_5
    move-exception v0

    .line 821
    .local v0, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    move-object/from16 v16, v0

    goto :goto_7

    .line 825
    .end local v0    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :cond_4
    move-object/from16 v0, v16

    .end local v16    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .local v0, "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :goto_7
    if-nez v17, :cond_6

    .line 827
    instance-of v1, v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "no valid CRL found"

    if-eqz v1, :cond_5

    .line 829
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 832
    :cond_5
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :cond_6
    invoke-virtual {v8}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v13, :cond_9

    .line 843
    invoke-virtual {v9}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v1

    const/16 v2, 0xc

    if-nez v1, :cond_7

    invoke-virtual {v8}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v13, :cond_7

    .line 845
    invoke-virtual {v8, v2}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->setCertStatus(I)V

    .line 847
    :cond_7
    invoke-virtual {v8}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v1

    if-eq v1, v2, :cond_8

    .line 851
    return-void

    .line 849
    :cond_8
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "certificate status could not be determined"

    invoke-direct {v1, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    :cond_9
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 837
    .local v1, "df":Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 838
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 839
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "certificate [issuer=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\",serialNumber="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",subject=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"] revoked after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, "message":Ljava/lang/String;
    sget-object v3, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v8}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v4

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 841
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 736
    .end local v0    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    .end local v2    # "message":Ljava/lang/String;
    .end local v8    # "certStatus":Lorg/bouncycastle/pkix/jcajce/CertStatus;
    .end local v9    # "reasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .end local v12    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v17    # "validCrlFound":Z
    :catch_6
    move-exception v0

    move-object/from16 v15, p1

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "cannot read CRL distribution point extension"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    .line 855
    return-object p0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .locals 2
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forward"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 336
    if-nez p1, :cond_0

    .line 341
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 343
    return-void

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "forward processing not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.class public Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
.super Ljava/lang/Object;
.source "X509RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private canSoftFail:Z

.field private crlCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field private failHardMaxTime:J

.field private failLogMaxTime:J

.field private isCheckEEOnly:Z

.field private provider:Ljava/security/Provider;

.field private providerName:Ljava/lang/String;

.field private trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private validityDate:Ljava/util/Date;

.field private validityModel:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcanSoftFail(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->canSoftFail:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcrlCertStores(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crlCertStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcrls(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crls:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfailHardMaxTime(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failHardMaxTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetfailLogMaxTime(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failLogMaxTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetisCheckEEOnly(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->isCheckEEOnly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprovider(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/security/Provider;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->provider:Ljava/security/Provider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproviderName(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettrustAnchors(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->trustAnchors:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidityDate(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidityModel(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityModel:I

    return p0
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 6
    .param p1, "trustStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trustStore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crlCertStores:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crls:Ljava/util/List;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityModel:I

    .line 103
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityDate:Ljava/util/Date;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->trustAnchors:Ljava/util/Set;

    .line 135
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, "alias":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->trustAnchors:Ljava/util/Set;

    new-instance v3, Ljava/security/cert/TrustAnchor;

    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v1    # "alias":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 144
    .end local v0    # "en":Ljava/util/Enumeration;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;)V
    .locals 1
    .param p1, "trustAnchor"    # Ljava/security/cert/TrustAnchor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trustAnchor"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crlCertStores:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crls:Ljava/util/List;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityModel:I

    .line 103
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityDate:Ljava/util/Date;

    .line 112
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->trustAnchors:Ljava/util/Set;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trustAnchors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crlCertStores:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crls:Ljava/util/List;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityModel:I

    .line 103
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityDate:Ljava/util/Date;

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->trustAnchors:Ljava/util/Set;

    .line 123
    return-void
.end method


# virtual methods
.method public addCrls(Ljava/security/cert/CertStore;)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 1
    .param p1, "crls"    # Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crls"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crlCertStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-object p0
.end method

.method public addCrls(Lorg/bouncycastle/util/Store;)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;)",
            "Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;"
        }
    .end annotation

    .line 167
    .local p1, "crls":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Ljava/security/cert/CRL;>;"
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-object p0
.end method

.method public build()Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
    .locals 2

    .line 284
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker-IA;)V

    return-object v0
.end method

.method public setCheckEndEntityOnly(Z)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 0
    .param p1, "isTrue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTrue"
        }
    .end annotation

    .line 191
    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->isCheckEEOnly:Z

    .line 193
    return-object p0
.end method

.method public setDate(Ljava/util/Date;)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 3
    .param p1, "validityDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validityDate"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityDate:Ljava/util/Date;

    .line 182
    return-object p0
.end method

.method public setSoftFail(ZJ)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 2
    .param p1, "isTrue"    # Z
    .param p2, "maxTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isTrue",
            "maxTime"
        }
    .end annotation

    .line 210
    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->canSoftFail:Z

    .line 211
    iput-wide p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failLogMaxTime:J

    .line 212
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failHardMaxTime:J

    .line 214
    return-object p0
.end method

.method public setSoftFailHardLimit(ZJ)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 4
    .param p1, "isTrue"    # Z
    .param p2, "maxTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isTrue",
            "maxTime"
        }
    .end annotation

    .line 231
    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->canSoftFail:Z

    .line 232
    const-wide/16 v0, 0x3

    mul-long v0, v0, p2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failLogMaxTime:J

    .line 233
    iput-wide p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failHardMaxTime:J

    .line 235
    return-object p0
.end method

.method public setValidityModel(I)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 0
    .param p1, "validityModel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validityModel"
        }
    .end annotation

    .line 246
    iput p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityModel:I

    .line 248
    return-object p0
.end method

.method public usingProvider(Ljava/lang/String;)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 0
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerName"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->providerName:Ljava/lang/String;

    .line 274
    return-object p0
.end method

.method public usingProvider(Ljava/security/Provider;)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->provider:Ljava/security/Provider;

    .line 261
    return-object p0
.end method

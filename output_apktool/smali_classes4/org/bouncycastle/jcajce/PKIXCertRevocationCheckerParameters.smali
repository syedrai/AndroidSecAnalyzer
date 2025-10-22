.class public Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
.super Ljava/lang/Object;
.source "PKIXCertRevocationCheckerParameters.java"


# instance fields
.field private final certPath:Ljava/security/cert/CertPath;

.field private final index:I

.field private final paramsPKIX:Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

.field private final signingCert:Ljava/security/cert/X509Certificate;

.field private final validDate:Ljava/util/Date;

.field private final workingPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "validDate"    # Ljava/util/Date;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I
    .param p5, "signingCert"    # Ljava/security/cert/X509Certificate;
    .param p6, "workingPublicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramsPKIX",
            "validDate",
            "certPath",
            "index",
            "signingCert",
            "workingPublicKey"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->paramsPKIX:Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 20
    iput-object p2, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->validDate:Ljava/util/Date;

    .line 21
    iput-object p3, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->certPath:Ljava/security/cert/CertPath;

    .line 22
    iput p4, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->index:I

    .line 23
    iput-object p5, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->signingCert:Ljava/security/cert/X509Certificate;

    .line 24
    iput-object p6, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->workingPublicKey:Ljava/security/PublicKey;

    .line 25
    return-void
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->index:I

    return v0
.end method

.method public getParamsPKIX()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->paramsPKIX:Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object v0
.end method

.method public getSigningCert()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->signingCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getValidDate()Ljava/util/Date;
    .locals 3

    .line 34
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->validDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getWorkingPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->workingPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

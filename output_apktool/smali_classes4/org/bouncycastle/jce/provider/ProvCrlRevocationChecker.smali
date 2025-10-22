.class Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
.super Ljava/lang/Object;
.source "ProvCrlRevocationChecker.java"

# interfaces
.implements Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;


# instance fields
.field private currentDate:Ljava/util/Date;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1
    .param p1, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "helper"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 23
    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;)V
    .locals 9
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getParamsPKIX()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getValidDate()Ljava/util/Date;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljava/security/cert/X509Certificate;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 54
    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getSigningCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getWorkingPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 55
    invoke-virtual {v7}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 53
    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    nop

    .line 66
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    move-object v1, v0

    .line 60
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 64
    :cond_0
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v5

    invoke-direct {v2, v3, v1, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
.end method

.method public init(Z)V
    .locals 2
    .param p1, "forForward"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forForward"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 39
    if-nez p1, :cond_0

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    .line 46
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->currentDate:Ljava/util/Date;

    .line 34
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 28
    return-void
.end method

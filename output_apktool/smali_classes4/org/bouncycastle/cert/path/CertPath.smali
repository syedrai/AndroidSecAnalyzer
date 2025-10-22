.class public Lorg/bouncycastle/cert/path/CertPath;
.super Ljava/lang/Object;
.source "CertPath.java"


# instance fields
.field private final certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;


# direct methods
.method public constructor <init>([Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 1
    .param p1, "certificates"    # [Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificates"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/path/CertPath;->copyArray([Lorg/bouncycastle/cert/X509CertificateHolder;)[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 12
    return-void
.end method

.method private copyArray([Lorg/bouncycastle/cert/X509CertificateHolder;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 3
    .param p1, "array"    # [Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 69
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 71
    .local v0, "rv":[Lorg/bouncycastle/cert/X509CertificateHolder;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-object v0
.end method


# virtual methods
.method public evaluate([Lorg/bouncycastle/cert/path/CertPathValidation;)Lorg/bouncycastle/cert/path/CertPathValidationResult;
    .locals 7
    .param p1, "ruleSet"    # [Lorg/bouncycastle/cert/path/CertPathValidation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruleSet"
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-static {v1}, Lorg/bouncycastle/cert/path/CertPathUtils;->getCriticalExtensionsOIDs([Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;-><init>(Ljava/util/Set;)V

    .line 46
    .local v0, "context":Lorg/bouncycastle/cert/path/CertPathValidationContext;
    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;

    invoke-direct {v1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V

    .line 48
    .local v1, "builder":Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_2

    .line 50
    iget-object v3, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 54
    if-nez v3, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_2
    :try_start_0
    invoke-virtual {v0, v5}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->setIsEndEntity(Z)V

    .line 55
    aget-object v5, p1, v2

    iget-object v6, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    aget-object v6, v6, v3

    invoke-interface {v5, v0, v6}, Lorg/bouncycastle/cert/path/CertPathValidation;->validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    :try_end_0
    .catch Lorg/bouncycastle/cert/path/CertPathValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_3

    .line 57
    :catch_0
    move-exception v5

    .line 59
    .local v5, "e":Lorg/bouncycastle/cert/path/CertPathValidationException;
    invoke-virtual {v1, v3, v2, v5}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->addException(IILorg/bouncycastle/cert/path/CertPathValidationException;)V

    .line 50
    .end local v5    # "e":Lorg/bouncycastle/cert/path/CertPathValidationException;
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 48
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->build()Lorg/bouncycastle/cert/path/CertPathValidationResult;

    move-result-object v2

    return-object v2
.end method

.method public getCertificates()[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/CertPath;->copyArray([Lorg/bouncycastle/cert/X509CertificateHolder;)[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    array-length v0, v0

    return v0
.end method

.method public validate([Lorg/bouncycastle/cert/path/CertPathValidation;)Lorg/bouncycastle/cert/path/CertPathValidationResult;
    .locals 6
    .param p1, "ruleSet"    # [Lorg/bouncycastle/cert/path/CertPathValidation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruleSet"
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationContext;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-static {v1}, Lorg/bouncycastle/cert/path/CertPathUtils;->getCriticalExtensionsOIDs([Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;-><init>(Ljava/util/Set;)V

    .line 23
    .local v0, "context":Lorg/bouncycastle/cert/path/CertPathValidationContext;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_2

    .line 25
    iget-object v2, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_1

    .line 29
    if-nez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->setIsEndEntity(Z)V

    .line 30
    aget-object v4, p1, v1

    iget-object v5, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    aget-object v5, v5, v2

    invoke-interface {v4, v0, v5}, Lorg/bouncycastle/cert/path/CertPathValidation;->validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    :try_end_0
    .catch Lorg/bouncycastle/cert/path/CertPathValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    nop

    .line 25
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 32
    :catch_0
    move-exception v3

    .line 34
    .local v3, "e":Lorg/bouncycastle/cert/path/CertPathValidationException;
    new-instance v4, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    invoke-direct {v4, v0, v2, v1, v3}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;IILorg/bouncycastle/cert/path/CertPathValidationException;)V

    return-object v4

    .line 23
    .end local v2    # "j":I
    .end local v3    # "e":Lorg/bouncycastle/cert/path/CertPathValidationException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    invoke-direct {v1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V

    return-object v1
.end method

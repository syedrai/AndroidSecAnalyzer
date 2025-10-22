.class public Lorg/bouncycastle/x509/CertPathReviewerException;
.super Lorg/bouncycastle/i18n/LocalizedException;
.source "CertPathReviewerException.java"


# instance fields
.field private certPath:Ljava/security/cert/CertPath;

.field private index:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .locals 1
    .param p1, "errorMessage"    # Lorg/bouncycastle/i18n/ErrorBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMessage"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorMessage"    # Lorg/bouncycastle/i18n/ErrorBundle;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorMessage",
            "throwable"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 2
    .param p1, "errorMessage"    # Lorg/bouncycastle/i18n/ErrorBundle;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorMessage",
            "throwable",
            "certPath",
            "index"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    .line 32
    if-eqz p3, :cond_1

    if-eq p4, v0, :cond_1

    .line 36
    if-lt p4, v0, :cond_0

    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    .line 40
    iput-object p3, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    .line 41
    iput p4, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    .line 42
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V
    .locals 2
    .param p1, "errorMessage"    # Lorg/bouncycastle/i18n/ErrorBundle;
    .param p2, "certPath"    # Ljava/security/cert/CertPath;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorMessage",
            "certPath",
            "index"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    .line 50
    if-eqz p2, :cond_1

    if-eq p3, v0, :cond_1

    .line 54
    if-lt p3, v0, :cond_0

    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 58
    iput-object p2, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    .line 59
    iput p3, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    .line 60
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    return v0
.end method

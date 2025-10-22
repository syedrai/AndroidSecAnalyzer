.class public Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CRLSelector;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method static bridge synthetic -$$Nest$fgetbaseSelector(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcompleteCRLEnabled(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdeltaCRLIndicator(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetissuingDistributionPoint(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetissuingDistributionPointEnabled(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxBaseCRLNumber(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object p0
.end method

.method public constructor <init>(Ljava/security/cert/CRLSelector;)V
    .locals 2
    .param p1, "crlSelector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crlSelector"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    .line 36
    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 38
    iput-object v1, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    .line 39
    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    .line 48
    invoke-interface {p1}, Ljava/security/cert/CRLSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRLSelector;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    .line 49
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector-IA;)V

    return-object v0
.end method

.method public setCompleteCRLEnabled(Z)Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .locals 0
    .param p1, "completeCRLEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completeCRLEnabled"
        }
    .end annotation

    .line 63
    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    .line 65
    return-object p0
.end method

.method public setDeltaCRLIndicatorEnabled(Z)Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .locals 0
    .param p1, "deltaCRLIndicator"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaCRLIndicator"
        }
    .end annotation

    .line 80
    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    .line 82
    return-object p0
.end method

.method public setIssuingDistributionPoint([B)V
    .locals 1
    .param p1, "issuingDistributionPoint"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuingDistributionPoint"
        }
    .end annotation

    .line 132
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    .line 133
    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .locals 0
    .param p1, "issuingDistributionPointEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuingDistributionPointEnabled"
        }
    .end annotation

    .line 109
    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    .line 110
    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "maxBaseCRLNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxBaseCRLNumber"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 98
    return-void
.end method

.class public Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
.super Ljava/lang/Object;
.source "PKIXCertStoreSelector.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;,
        Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/Certificate;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Selector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CertSelector;


# direct methods
.method static bridge synthetic -$$Nest$fgetbaseSelector(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    return-object p0
.end method

.method private constructor <init>(Ljava/security/cert/CertSelector;)V
    .locals 0
    .param p1, "baseSelector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseSelector"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lorg/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/cert/CertSelector;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    return-void
.end method

.method public static getCertificates(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .locals 1
    .param p0, "selector"    # Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    .param p1, "certStore"    # Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "selector",
            "certStore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;-><init>(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 78
    .local p0, "this":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lorg/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    return-object v0
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 63
    .local p0, "this":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lorg/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    instance-of v0, v0, Ljava/security/cert/X509CertSelector;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    check-cast v0, Ljava/security/cert/X509CertSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cert"
        }
    .end annotation

    .line 18
    .local p0, "this":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lorg/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lorg/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    invoke-interface {v0, p1}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method

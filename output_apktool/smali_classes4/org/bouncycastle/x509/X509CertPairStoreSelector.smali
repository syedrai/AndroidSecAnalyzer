.class public Lorg/bouncycastle/x509/X509CertPairStoreSelector;
.super Ljava/lang/Object;
.source "X509CertPairStoreSelector.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private certPair:Lorg/bouncycastle/x509/X509CertificatePair;

.field private forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

.field private reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 74
    new-instance v0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;-><init>()V

    .line 76
    .local v0, "cln":Lorg/bouncycastle/x509/X509CertPairStoreSelector;
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    .line 78
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 81
    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 80
    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V

    .line 84
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 87
    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 86
    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V

    .line 90
    :cond_1
    return-object v0
.end method

.method public getCertPair()Lorg/bouncycastle/x509/X509CertificatePair;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    return-object v0
.end method

.method public getForwardSelector()Lorg/bouncycastle/x509/X509CertStoreSelector;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-object v0
.end method

.method public getReverseSelector()Lorg/bouncycastle/x509/X509CertStoreSelector;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Lorg/bouncycastle/x509/X509CertificatePair;

    if-nez v1, :cond_0

    .line 107
    return v0

    .line 109
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/x509/X509CertificatePair;

    .line 111
    .local v1, "pair":Lorg/bouncycastle/x509/X509CertificatePair;
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 112
    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    return v0

    .line 117
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 118
    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertificatePair;->getReverse()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 120
    return v0

    .line 123
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/x509/X509CertificatePair;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 128
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 130
    .end local v1    # "pair":Lorg/bouncycastle/x509/X509CertificatePair;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public setCertPair(Lorg/bouncycastle/x509/X509CertificatePair;)V
    .locals 0
    .param p1, "certPair"    # Lorg/bouncycastle/x509/X509CertificatePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certPair"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    .line 46
    return-void
.end method

.method public setForwardSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V
    .locals 0
    .param p1, "forwardSelector"    # Lorg/bouncycastle/x509/X509CertStoreSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardSelector"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 55
    return-void
.end method

.method public setReverseSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V
    .locals 0
    .param p1, "reverseSelector"    # Lorg/bouncycastle/x509/X509CertStoreSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reverseSelector"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 64
    return-void
.end method

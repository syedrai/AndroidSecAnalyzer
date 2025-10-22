.class public Lorg/bouncycastle/est/CACertsResponse;
.super Ljava/lang/Object;
.source "CACertsResponse.java"


# instance fields
.field private crlHolderStore:Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final requestToRetry:Lorg/bouncycastle/est/ESTRequest;

.field private final session:Lorg/bouncycastle/est/Source;

.field private final store:Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final trusted:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;Z)V
    .locals 0
    .param p3, "requestToRetry"    # Lorg/bouncycastle/est/ESTRequest;
    .param p4, "session"    # Lorg/bouncycastle/est/Source;
    .param p5, "trusted"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "store",
            "crlHolderStore",
            "requestToRetry",
            "session",
            "trusted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CRLHolder;",
            ">;",
            "Lorg/bouncycastle/est/ESTRequest;",
            "Lorg/bouncycastle/est/Source;",
            "Z)V"
        }
    .end annotation

    .line 23
    .local p1, "store":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    .local p2, "crlHolderStore":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CRLHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/est/CACertsResponse;->store:Lorg/bouncycastle/util/Store;

    .line 25
    iput-object p3, p0, Lorg/bouncycastle/est/CACertsResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    .line 26
    iput-object p4, p0, Lorg/bouncycastle/est/CACertsResponse;->session:Lorg/bouncycastle/est/Source;

    .line 27
    iput-boolean p5, p0, Lorg/bouncycastle/est/CACertsResponse;->trusted:Z

    .line 28
    iput-object p2, p0, Lorg/bouncycastle/est/CACertsResponse;->crlHolderStore:Lorg/bouncycastle/util/Store;

    .line 29
    return-void
.end method


# virtual methods
.method public getCertificateStore()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/est/CACertsResponse;->store:Lorg/bouncycastle/util/Store;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/est/CACertsResponse;->store:Lorg/bouncycastle/util/Store;

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has no certificates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCrlStore()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/est/CACertsResponse;->crlHolderStore:Lorg/bouncycastle/util/Store;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/est/CACertsResponse;->crlHolderStore:Lorg/bouncycastle/util/Store;

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has no CRLs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestToRetry()Lorg/bouncycastle/est/ESTRequest;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/est/CACertsResponse;->requestToRetry:Lorg/bouncycastle/est/ESTRequest;

    return-object v0
.end method

.method public getSession()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/est/CACertsResponse;->session:Lorg/bouncycastle/est/Source;

    invoke-interface {v0}, Lorg/bouncycastle/est/Source;->getSession()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasCRLs()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/est/CACertsResponse;->crlHolderStore:Lorg/bouncycastle/util/Store;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCertificates()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/est/CACertsResponse;->store:Lorg/bouncycastle/util/Store;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/bouncycastle/est/CACertsResponse;->trusted:Z

    return v0
.end method

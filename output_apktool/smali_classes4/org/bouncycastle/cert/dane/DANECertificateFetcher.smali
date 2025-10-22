.class public Lorg/bouncycastle/cert/dane/DANECertificateFetcher;
.super Ljava/lang/Object;
.source "DANECertificateFetcher.java"


# instance fields
.field private final fetcherFactory:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;

.field private final selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1
    .param p1, "fetcherFactory"    # Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;
    .param p2, "digestCalculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetcherFactory",
            "digestCalculator"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/cert/dane/DANECertificateFetcher;->fetcherFactory:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;

    .line 28
    new-instance v0, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    invoke-direct {v0, p2}, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;-><init>(Lorg/bouncycastle/operator/DigestCalculator;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/dane/DANECertificateFetcher;->selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    .line 29
    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "emailAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emailAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/dane/DANEException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/cert/dane/DANECertificateFetcher;->selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;->createSelector(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntrySelector;

    move-result-object v0

    .line 43
    .local v0, "daneSelector":Lorg/bouncycastle/cert/dane/DANEEntrySelector;
    iget-object v1, p0, Lorg/bouncycastle/cert/dane/DANECertificateFetcher;->fetcherFactory:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/dane/DANEEntrySelector;->getDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;->build(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntryFetcher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/cert/dane/DANEEntryFetcher;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, "matches":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/cert/dane/DANEEntry;

    .line 49
    .local v4, "next":Lorg/bouncycastle/cert/dane/DANEEntry;
    invoke-virtual {v0, v4}, Lorg/bouncycastle/cert/dane/DANEEntrySelector;->match(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v4}, Lorg/bouncycastle/cert/dane/DANEEntry;->getCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v4    # "next":Lorg/bouncycastle/cert/dane/DANEEntry;
    :cond_0
    goto :goto_0

    .line 55
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

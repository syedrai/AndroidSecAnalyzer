.class public Lorg/bouncycastle/cert/dane/DANEEntryStoreBuilder;
.super Ljava/lang/Object;
.source "DANEEntryStoreBuilder.java"


# instance fields
.field private final daneEntryFetcher:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;)V
    .locals 0
    .param p1, "daneEntryFetcher"    # Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daneEntryFetcher"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/bouncycastle/cert/dane/DANEEntryStoreBuilder;->daneEntryFetcher:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;

    .line 13
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntryStore;
    .locals 2
    .param p1, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "domainName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/dane/DANEException;
        }
    .end annotation

    .line 25
    new-instance v0, Lorg/bouncycastle/cert/dane/DANEEntryStore;

    iget-object v1, p0, Lorg/bouncycastle/cert/dane/DANEEntryStoreBuilder;->daneEntryFetcher:Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;

    invoke-interface {v1, p1}, Lorg/bouncycastle/cert/dane/DANEEntryFetcherFactory;->build(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntryFetcher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/cert/dane/DANEEntryFetcher;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/dane/DANEEntryStore;-><init>(Ljava/util/List;)V

    return-object v0
.end method

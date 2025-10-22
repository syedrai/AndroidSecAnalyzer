.class public Lorg/bouncycastle/x509/X509Store;
.super Ljava/lang/Object;
.source "X509Store.java"

# interfaces
.implements Lorg/bouncycastle/util/Store;


# instance fields
.field private _provider:Ljava/security/Provider;

.field private _spi:Lorg/bouncycastle/x509/X509StoreSpi;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Lorg/bouncycastle/x509/X509StoreSpi;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "spi"    # Lorg/bouncycastle/x509/X509StoreSpi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "provider",
            "spi"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/bouncycastle/x509/X509Store;->_provider:Ljava/security/Provider;

    .line 70
    iput-object p2, p0, Lorg/bouncycastle/x509/X509Store;->_spi:Lorg/bouncycastle/x509/X509StoreSpi;

    .line 71
    return-void
.end method

.method private static createStore(Lorg/bouncycastle/x509/X509Util$Implementation;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/X509Store;
    .locals 3
    .param p0, "impl"    # Lorg/bouncycastle/x509/X509Util$Implementation;
    .param p1, "parameters"    # Lorg/bouncycastle/x509/X509StoreParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "impl",
            "parameters"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509Util$Implementation;->getEngine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/X509StoreSpi;

    .line 57
    .local v0, "spi":Lorg/bouncycastle/x509/X509StoreSpi;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509StoreSpi;->engineInit(Lorg/bouncycastle/x509/X509StoreParameters;)V

    .line 59
    new-instance v1, Lorg/bouncycastle/x509/X509Store;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509Util$Implementation;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/x509/X509Store;-><init>(Ljava/security/Provider;Lorg/bouncycastle/x509/X509StoreSpi;)V

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/X509Store;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "parameters"    # Lorg/bouncycastle/x509/X509StoreParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchStoreException;
        }
    .end annotation

    .line 22
    :try_start_0
    const-string v0, "X509Store"

    invoke-static {v0, p0}, Lorg/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/x509/X509Util$Implementation;

    move-result-object v0

    .line 24
    .local v0, "impl":Lorg/bouncycastle/x509/X509Util$Implementation;
    invoke-static {v0, p1}, Lorg/bouncycastle/x509/X509Store;->createStore(Lorg/bouncycastle/x509/X509Util$Implementation;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/X509Store;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 26
    .end local v0    # "impl":Lorg/bouncycastle/x509/X509Util$Implementation;
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/bouncycastle/x509/NoSuchStoreException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/x509/NoSuchStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;Ljava/lang/String;)Lorg/bouncycastle/x509/X509Store;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "parameters"    # Lorg/bouncycastle/x509/X509StoreParameters;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "parameters",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 35
    invoke-static {p2}, Lorg/bouncycastle/x509/X509Util;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509Store;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Lorg/bouncycastle/x509/X509StoreParameters;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509Store;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "parameters"    # Lorg/bouncycastle/x509/X509StoreParameters;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "parameters",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/NoSuchStoreException;
        }
    .end annotation

    .line 43
    :try_start_0
    const-string v0, "X509Store"

    invoke-static {v0, p0, p2}, Lorg/bouncycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lorg/bouncycastle/x509/X509Util$Implementation;

    move-result-object v0

    .line 45
    .local v0, "impl":Lorg/bouncycastle/x509/X509Util$Implementation;
    invoke-static {v0, p1}, Lorg/bouncycastle/x509/X509Store;->createStore(Lorg/bouncycastle/x509/X509Util$Implementation;Lorg/bouncycastle/x509/X509StoreParameters;)Lorg/bouncycastle/x509/X509Store;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 47
    .end local v0    # "impl":Lorg/bouncycastle/x509/X509Util$Implementation;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/bouncycastle/x509/NoSuchStoreException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/x509/NoSuchStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 1
    .param p1, "selector"    # Lorg/bouncycastle/util/Selector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/x509/X509Store;->_spi:Lorg/bouncycastle/x509/X509StoreSpi;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/x509/X509StoreSpi;->engineGetMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/security/Provider;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/x509/X509Store;->_provider:Ljava/security/Provider;

    return-object v0
.end method

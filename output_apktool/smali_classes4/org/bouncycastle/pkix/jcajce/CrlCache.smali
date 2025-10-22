.class Lorg/bouncycastle/pkix/jcajce/CrlCache;
.super Ljava/lang/Object;
.source "CrlCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pkix/jcajce/CrlCache$LocalCRLStore;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x3a98

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/URI;",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 41
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CrlCache;->cache:Ljava/util/Map;

    .line 40
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized getCrl(Ljava/security/cert/CertificateFactory;Ljava/util/Date;Ljava/net/URI;)Lorg/bouncycastle/jcajce/PKIXCRLStore;
    .locals 8
    .param p0, "certFact"    # Ljava/security/cert/CertificateFactory;
    .param p1, "validDate"    # Ljava/util/Date;
    .param p2, "distributionPoint"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certFact",
            "validDate",
            "distributionPoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const-class v0, Lorg/bouncycastle/pkix/jcajce/CrlCache;

    monitor-enter v0

    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "crlStore":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    :try_start_0
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/CrlCache;->cache:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 49
    .local v2, "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    move-object v1, v3

    .line 54
    :cond_0
    if-eqz v1, :cond_3

    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "isExpired":Z
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/bouncycastle/jcajce/PKIXCRLStore;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509CRL;

    .line 61
    .local v5, "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v6

    .line 62
    .local v6, "nextUpdate":Ljava/util/Date;
    if-eqz v6, :cond_1

    invoke-virtual {v6, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 64
    const/4 v3, 0x1

    .line 65
    goto :goto_1

    .line 67
    .end local v5    # "crl":Ljava/security/cert/X509CRL;
    .end local v6    # "nextUpdate":Ljava/util/Date;
    :cond_1
    goto :goto_0

    .line 69
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 71
    monitor-exit v0

    return-object v1

    .line 77
    .end local v3    # "isExpired":Z
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ldap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    invoke-static {p0, p2}, Lorg/bouncycastle/pkix/jcajce/CrlCache;->getCrlsFromLDAP(Ljava/security/cert/CertificateFactory;Ljava/net/URI;)Ljava/util/Collection;

    move-result-object v3

    .local v3, "crls":Ljava/util/Collection;
    goto :goto_2

    .line 84
    .end local v3    # "crls":Ljava/util/Collection;
    :cond_4
    invoke-static {p0, p2}, Lorg/bouncycastle/pkix/jcajce/CrlCache;->getCrls(Ljava/security/cert/CertificateFactory;Ljava/net/URI;)Ljava/util/Collection;

    move-result-object v3

    .line 87
    .restart local v3    # "crls":Ljava/util/Collection;
    :goto_2
    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CrlCache$LocalCRLStore;

    new-instance v5, Lorg/bouncycastle/util/CollectionStore;

    invoke-direct {v5, v3}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/pkix/jcajce/CrlCache$LocalCRLStore;-><init>(Lorg/bouncycastle/util/Store;)V

    .line 89
    .local v4, "localCRLStore":Lorg/bouncycastle/pkix/jcajce/CrlCache$LocalCRLStore;
    sget-object v5, Lorg/bouncycastle/pkix/jcajce/CrlCache;->cache:Ljava/util/Map;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    monitor-exit v0

    return-object v4

    .line 45
    .end local v1    # "crlStore":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    .end local v2    # "markerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    .end local v3    # "crls":Ljava/util/Collection;
    .end local v4    # "localCRLStore":Lorg/bouncycastle/pkix/jcajce/CrlCache$LocalCRLStore;
    .end local p0    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local p1    # "validDate":Ljava/util/Date;
    .end local p2    # "distributionPoint":Ljava/net/URI;
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static getCrls(Ljava/security/cert/CertificateFactory;Ljava/net/URI;)Ljava/util/Collection;
    .locals 3
    .param p0, "certFact"    # Ljava/security/cert/CertificateFactory;
    .param p1, "distributionPoint"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certFact",
            "distributionPoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 129
    .local v0, "crlCon":Ljava/net/HttpURLConnection;
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 130
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 132
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 134
    .local v1, "crlIn":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v2

    .line 136
    .local v2, "crls":Ljava/util/Collection;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 138
    return-object v2
.end method

.method private static getCrlsFromLDAP(Ljava/security/cert/CertificateFactory;Ljava/net/URI;)Ljava/util/Collection;
    .locals 7
    .param p0, "certFact"    # Ljava/security/cert/CertificateFactory;
    .param p1, "distributionPoint"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certFact",
            "distributionPoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 99
    .local v0, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "java.naming.factory.initial"

    const-string v2, "com.sun.jndi.ldap.LdapCtxFactory"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "java.naming.provider.url"

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/4 v1, 0x0

    .line 105
    .local v1, "val":[B
    :try_start_0
    new-instance v2, Ljavax/naming/directory/InitialDirContext;

    move-object v3, v0

    check-cast v3, Ljava/util/Hashtable;

    invoke-direct {v2, v3}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    .line 106
    .local v2, "ctx":Ljavax/naming/directory/DirContext;
    const-string v3, ""

    invoke-interface {v2, v3}, Ljavax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object v3

    .line 107
    .local v3, "avals":Ljavax/naming/directory/Attributes;
    const-string v4, "certificateRevocationList;binary"

    invoke-interface {v3, v4}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v4

    .line 108
    .local v4, "aval":Ljavax/naming/directory/Attribute;
    invoke-interface {v4}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "val":[B
    .end local v2    # "ctx":Ljavax/naming/directory/DirContext;
    .end local v3    # "avals":Ljavax/naming/directory/Attributes;
    .end local v4    # "aval":Ljavax/naming/directory/Attribute;
    .local v5, "val":[B
    nop

    .line 115
    if-eqz v5, :cond_0

    array-length v1, v5

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 117
    :cond_0
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no CRL returned from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v5    # "val":[B
    .restart local v1    # "val":[B
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljavax/naming/NamingException;
    new-instance v3, Ljava/security/cert/CRLException;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "issue connecting to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

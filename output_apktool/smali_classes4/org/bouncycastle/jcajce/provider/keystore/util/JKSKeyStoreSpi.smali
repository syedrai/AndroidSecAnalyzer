.class public Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "JKSKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;,
        Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    }
.end annotation


# static fields
.field private static final NOT_IMPLEMENTED_MESSAGE:Ljava/lang/String; = "BC JKS store is read-only and only supports certificate entries"


# instance fields
.field private final certificateEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1
    .param p1, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "helper"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    .line 45
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 46
    return-void
.end method

.method private addPassword(Lorg/bouncycastle/crypto/Digest;[C)V
    .locals 3
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 340
    aget-char v1, p2, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 341
    aget-char v1, p2, v0

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    :cond_0
    const-string v0, "Mighty Aphrodite"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 350
    return-void
.end method

.method private createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 3
    .param p1, "certFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 318
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :cond_0
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method

.method private validateStream(Ljava/io/InputStream;[C)Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    const-string v0, "SHA-1"

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 368
    .local v0, "checksumCalculator":Lorg/bouncycastle/crypto/Digest;
    invoke-static {p1}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 370
    .local v1, "rawStore":[B
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 372
    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->addPassword(Lorg/bouncycastle/crypto/Digest;[C)V

    .line 373
    array-length v3, v1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 375
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 377
    .local v3, "checksum":[B
    invoke-interface {v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 379
    array-length v4, v3

    new-array v4, v4, [B

    .line 380
    .local v4, "streamChecksum":[B
    array-length v5, v1

    array-length v6, v3

    sub-int/2addr v5, v6

    array-length v6, v3

    invoke-static {v1, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    new-instance v5, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    array-length v6, v1

    array-length v7, v3

    sub-int/2addr v6, v7

    invoke-direct {v5, v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V

    return-object v5

    .line 384
    :cond_0
    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 385
    new-instance v2, Ljava/io/IOException;

    const-string v5, "password incorrect or store tampered with"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    .end local v3    # "checksum":[B
    .end local v4    # "streamChecksum":[B
    :cond_1
    new-instance v3, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    array-length v4, v1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v3, v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V

    return-object v3
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 137
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    .line 82
    .local v1, "ent":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;
    if-eqz v1, :cond_0

    .line 84
    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    monitor-exit v0

    return-object v2

    .line 86
    .end local v1    # "ent":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;
    :cond_0
    monitor-exit v0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$$ExternalSyntheticAPIConversion0;->m(Ljava/util/Hashtable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    iget-object v3, v3, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 177
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;>;"
    :cond_0
    goto :goto_0

    .line 178
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;>;>;"
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    .line 95
    .local v1, "ent":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;
    if-eqz v1, :cond_0

    .line 97
    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->date:Ljava/util/Date;

    monitor-exit v0

    return-object v2

    .line 99
    .end local v1    # "ent":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;
    :cond_0
    monitor-exit v0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 18
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 211
    move-object/from16 v1, p0

    if-nez p1, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    invoke-direct/range {p0 .. p2}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->validateStream(Ljava/io/InputStream;[C)Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    move-result-object v2

    .line 218
    .local v2, "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    iget-object v3, v1, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v3

    .line 222
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 224
    .local v4, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v5, v0

    .line 225
    .local v5, "magic":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v6, v0

    .line 226
    .local v6, "storeVersion":I
    const v0, -0x1120113

    if-ne v5, v0, :cond_5

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "certFact":Ljava/security/cert/CertificateFactory;
    const/4 v7, 0x0

    .line 231
    .local v7, "certFactories":Ljava/util/Hashtable;
    packed-switch v6, :pswitch_data_0

    .line 240
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .local v16, "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .local v17, "dIn":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_4

    .line 237
    .end local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    :pswitch_0
    :try_start_2
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v8

    .line 238
    goto :goto_0

    .line 304
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .end local v5    # "magic":I
    .end local v6    # "storeVersion":I
    .end local v7    # "certFactories":Ljava/util/Hashtable;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_6

    .line 234
    .restart local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v5    # "magic":I
    .restart local v6    # "storeVersion":I
    .restart local v7    # "certFactories":Ljava/util/Hashtable;
    :pswitch_1
    :try_start_3
    const-string v8, "X.509"

    invoke-direct {v1, v8}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    move-object v0, v8

    .line 235
    nop

    .line 243
    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 244
    .local v8, "numEntries":I
    const/4 v9, 0x0

    .local v9, "t":I
    :goto_1
    if-ge v9, v8, :cond_4

    .line 246
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 247
    .local v10, "tag":I
    packed-switch v10, :pswitch_data_1

    .line 292
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_3

    .line 252
    .end local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    :pswitch_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, "alias":Ljava/lang/String;
    new-instance v12, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 255
    .local v12, "date":Ljava/util/Date;
    const/4 v13, 0x2

    if-ne v6, v13, :cond_2

    .line 257
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    .line 258
    .local v13, "certFormat":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 260
    invoke-virtual {v7, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/CertificateFactory;

    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .local v14, "certFact":Ljava/security/cert/CertificateFactory;
    goto :goto_2

    .line 264
    .end local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    :cond_1
    invoke-direct {v1, v13}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v14

    .line 265
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v7, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 255
    .end local v13    # "certFormat":Ljava/lang/String;
    .end local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    :cond_2
    move-object v14, v0

    .line 269
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    :goto_2
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v13, v0

    .line 270
    .local v13, "l":I
    new-array v0, v13, [B

    move-object v15, v0

    .line 271
    .local v15, "certData":[B
    invoke-virtual {v4, v15}, Ljava/io/DataInputStream;->readFully([B)V

    .line 273
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v16, v2

    .end local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    :try_start_8
    array-length v2, v15

    move-object/from16 v17, v4

    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    invoke-direct {v0, v15, v4, v2}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v2, v0

    .line 277
    .local v2, "certStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    :try_start_9
    invoke-virtual {v14, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 279
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->available()I

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez v4, :cond_3

    .line 286
    :try_start_a
    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 287
    nop

    .line 289
    iget-object v4, v1, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    invoke-direct {v1, v12, v0}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;-><init>(Ljava/util/Date;Ljava/security/cert/Certificate;)V

    invoke-virtual {v4, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 290
    nop

    .line 244
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v2    # "certStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v10    # "tag":I
    .end local v11    # "alias":Ljava/lang/String;
    .end local v12    # "date":Ljava/util/Date;
    .end local v13    # "l":I
    .end local v15    # "certData":[B
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object v0, v14

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_1

    .line 281
    .restart local v0    # "cert":Ljava/security/cert/Certificate;
    .restart local v2    # "certStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v10    # "tag":I
    .restart local v11    # "alias":Ljava/lang/String;
    .restart local v12    # "date":Ljava/util/Date;
    .restart local v13    # "l":I
    .restart local v15    # "certData":[B
    :cond_3
    :try_start_b
    new-instance v1, Ljava/io/IOException;

    const-string v4, "password incorrect or store tampered with"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "certStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v5    # "magic":I
    .end local v6    # "storeVersion":I
    .end local v7    # "certFactories":Ljava/util/Hashtable;
    .end local v8    # "numEntries":I
    .end local v9    # "t":I
    .end local v10    # "tag":I
    .end local v11    # "alias":Ljava/lang/String;
    .end local v12    # "date":Ljava/util/Date;
    .end local v13    # "l":I
    .end local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v15    # "certData":[B
    .end local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 286
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .restart local v2    # "certStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v5    # "magic":I
    .restart local v6    # "storeVersion":I
    .restart local v7    # "certFactories":Ljava/util/Hashtable;
    .restart local v8    # "numEntries":I
    .restart local v9    # "t":I
    .restart local v10    # "tag":I
    .restart local v11    # "alias":Ljava/lang/String;
    .restart local v12    # "date":Ljava/util/Date;
    .restart local v13    # "l":I
    .restart local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v15    # "certData":[B
    .restart local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :catchall_1
    move-exception v0

    :try_start_c
    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 287
    nop

    .end local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v0

    .line 250
    .end local v11    # "alias":Ljava/lang/String;
    .end local v12    # "date":Ljava/util/Date;
    .end local v13    # "l":I
    .end local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v15    # "certData":[B
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .local v0, "certFact":Ljava/security/cert/CertificateFactory;
    .local v2, "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :pswitch_3
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v1

    .line 292
    .restart local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :goto_3
    const-string/jumbo v2, "unable to discern entry type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v1

    .line 244
    .end local v10    # "tag":I
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    goto :goto_5

    .line 240
    .end local v8    # "numEntries":I
    .end local v9    # "t":I
    :goto_4
    const-string/jumbo v2, "unable to discern store version"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v1

    .line 226
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v7    # "certFactories":Ljava/util/Hashtable;
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 297
    .end local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->available()I

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-nez v0, :cond_6

    .line 304
    .end local v5    # "magic":I
    .end local v6    # "storeVersion":I
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 305
    nop

    .line 306
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 307
    return-void

    .line 299
    .restart local v5    # "magic":I
    .restart local v6    # "storeVersion":I
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    :cond_6
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "password incorrect or store tampered with"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 304
    .end local v5    # "magic":I
    .end local v6    # "storeVersion":I
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :catchall_2
    move-exception v0

    goto :goto_6

    .end local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    :goto_6
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 305
    nop

    .end local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v0

    .line 306
    .restart local v16    # "storeStream":Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .param p1, "loadStoreParameter"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadStoreParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 191
    if-nez p1, :cond_0

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    goto :goto_0

    .line 195
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;

    if-eqz v0, :cond_1

    .line 197
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;

    .line 199
    .local v0, "bcParam":Lorg/bouncycastle/jcajce/BCLoadStoreParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/keystore/util/ParameterUtil;->extractPassword(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 200
    .end local v0    # "bcParam":Lorg/bouncycastle/jcajce/BCLoadStoreParameter;
    nop

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no support for \'param\' of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineProbe(Ljava/io/InputStream;)Z
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Ljava/io/DataInputStream;

    .local v0, "storeStream":Ljava/io/DataInputStream;
    goto :goto_0

    .line 58
    .end local v0    # "storeStream":Ljava/io/DataInputStream;
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    .restart local v0    # "storeStream":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 62
    .local v1, "magic":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 63
    .local v2, "storeVersion":I
    const v3, -0x1120113

    if-ne v1, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "cert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alias",
            "key",
            "password",
            "chain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "alias",
            "key",
            "chain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

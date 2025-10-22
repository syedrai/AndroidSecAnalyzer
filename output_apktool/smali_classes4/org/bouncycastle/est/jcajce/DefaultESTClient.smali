.class Lorg/bouncycastle/est/jcajce/DefaultESTClient;
.super Ljava/lang/Object;
.source "DefaultESTClient.java"

# interfaces
.implements Lorg/bouncycastle/est/ESTClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/est/jcajce/DefaultESTClient$PrintingOutputStream;
    }
.end annotation


# static fields
.field private static CRLF:[B

.field private static final utf8:Ljava/nio/charset/Charset;


# instance fields
.field private final sslSocketProvider:Lorg/bouncycastle/est/ESTClientSourceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->utf8:Ljava/nio/charset/Charset;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/est/ESTClientSourceProvider;)V
    .locals 0
    .param p1, "sslSocketProvider"    # Lorg/bouncycastle/est/ESTClientSourceProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sslSocketProvider"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->sslSocketProvider:Lorg/bouncycastle/est/ESTClientSourceProvider;

    .line 31
    return-void
.end method

.method private static writeLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "os",
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 37
    sget-object v0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->CRLF:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 38
    return-void
.end method


# virtual methods
.method public doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;
    .locals 5
    .param p1, "req"    # Lorg/bouncycastle/est/ESTRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "req"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "resp":Lorg/bouncycastle/est/ESTResponse;
    move-object v1, p1

    .line 45
    .local v1, "r":Lorg/bouncycastle/est/ESTRequest;
    const/16 v2, 0xf

    .line 48
    .local v2, "rcCount":I
    :cond_0
    invoke-virtual {p0, v1}, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->performRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->redirectURL(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTRequest;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_0

    .line 53
    :cond_1
    if-eqz v2, :cond_2

    .line 58
    return-object v0

    .line 55
    :cond_2
    new-instance v3, Lorg/bouncycastle/est/ESTException;

    const-string v4, "Too many redirects.."

    invoke-direct {v3, v4}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public performRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;
    .locals 17
    .param p1, "c"    # Lorg/bouncycastle/est/ESTRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const-string v0, "Connection"

    const/4 v1, 0x0

    .line 112
    .local v1, "res":Lorg/bouncycastle/est/ESTResponse;
    const/4 v2, 0x0

    .line 115
    .local v2, "socketSource":Lorg/bouncycastle/est/Source;
    move-object/from16 v3, p0

    :try_start_0
    iget-object v4, v3, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->sslSocketProvider:Lorg/bouncycastle/est/ESTClientSourceProvider;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lorg/bouncycastle/est/ESTClientSourceProvider;->makeSource(Ljava/lang/String;I)Lorg/bouncycastle/est/Source;

    move-result-object v4

    move-object v2, v4

    .line 116
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTRequest;->getListener()Lorg/bouncycastle/est/ESTSourceConnectionListener;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v4, :cond_0

    .line 118
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTRequest;->getListener()Lorg/bouncycastle/est/ESTSourceConnectionListener;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v5, p1

    :try_start_2
    invoke-interface {v4, v2, v5}, Lorg/bouncycastle/est/ESTSourceConnectionListener;->onConnection(Lorg/bouncycastle/est/Source;Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTRequest;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p1    # "c":Lorg/bouncycastle/est/ESTRequest;
    .local v4, "c":Lorg/bouncycastle/est/ESTRequest;
    goto :goto_1

    .line 198
    .end local v4    # "c":Lorg/bouncycastle/est/ESTRequest;
    .restart local p1    # "c":Lorg/bouncycastle/est/ESTRequest;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v5, p1

    :goto_0
    move-object/from16 v16, v1

    move-object v4, v5

    goto/16 :goto_8

    .line 116
    :cond_0
    move-object/from16 v5, p1

    move-object v4, v5

    .line 123
    .end local p1    # "c":Lorg/bouncycastle/est/ESTRequest;
    .restart local v4    # "c":Lorg/bouncycastle/est/ESTRequest;
    :goto_1
    const/4 v5, 0x0

    .line 125
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_3
    const-string v6, "org.bouncycastle.debug.est"

    invoke-static {v6}, Lorg/bouncycastle/util/Properties;->asKeySet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 126
    .local v6, "opts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "output"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v7, :cond_2

    :try_start_4
    const-string v7, "all"

    .line 127
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 133
    :cond_1
    invoke-interface {v2}, Lorg/bouncycastle/est/Source;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v5    # "os":Ljava/io/OutputStream;
    .local v7, "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 198
    .end local v6    # "opts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_8

    .line 129
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "opts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    :try_start_5
    new-instance v7, Lorg/bouncycastle/est/jcajce/DefaultESTClient$PrintingOutputStream;

    invoke-interface {v2}, Lorg/bouncycastle/est/Source;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/est/jcajce/DefaultESTClient$PrintingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 136
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :goto_3
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v8, :cond_3

    :try_start_6
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :cond_3
    :try_start_7
    const-string v8, ""

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "req":Ljava/lang/String;
    new-instance v8, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-direct {v8, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    .line 140
    .local v8, "rb":Lorg/bouncycastle/est/ESTRequestBuilder;
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getHeaders()Ljava/util/Map;

    move-result-object v9

    .line 142
    .local v9, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v10, :cond_4

    .line 144
    :try_start_8
    const-string v10, "close"

    invoke-virtual {v8, v0, v10}, Lorg/bouncycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 148
    :cond_4
    :try_start_9
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 149
    .local v0, "u":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v11, -0x1

    const-string v12, "Host"

    if-le v10, v11, :cond_5

    .line 151
    :try_start_a
    const-string v10, "%s:%d"

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v11, 0x1

    aput-object v13, v14, v11

    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v12, v10}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    .line 155
    :cond_5
    :try_start_b
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v12, v10}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 159
    :goto_5
    invoke-virtual {v8}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v10

    .line 161
    .local v10, "rc":Lorg/bouncycastle/est/ESTRequest;
    invoke-virtual {v10}, Lorg/bouncycastle/est/ESTRequest;->getMethod()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " HTTP/1.1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->writeLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v10}, Lorg/bouncycastle/est/ESTRequest;->getHeaders()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "it":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 166
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 167
    .local v12, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 169
    .local v13, "vs":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_7
    array-length v15, v13

    if-eq v14, v15, :cond_6

    .line 171
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 p1, v0

    .end local v0    # "u":Ljava/net/URL;
    .local p1, "u":Ljava/net/URL;
    aget-object v0, v13, v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v16, v1

    .end local v1    # "res":Lorg/bouncycastle/est/ESTResponse;
    .local v16, "res":Lorg/bouncycastle/est/ESTResponse;
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ": "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->writeLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 169
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    goto :goto_7

    .end local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    .end local p1    # "u":Ljava/net/URL;
    .restart local v0    # "u":Ljava/net/URL;
    .restart local v1    # "res":Lorg/bouncycastle/est/ESTResponse;
    :cond_6
    move-object/from16 p1, v0

    move-object/from16 v16, v1

    .line 173
    .end local v0    # "u":Ljava/net/URL;
    .end local v1    # "res":Lorg/bouncycastle/est/ESTResponse;
    .end local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v13    # "vs":[Ljava/lang/String;
    .end local v14    # "i":I
    .restart local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    .restart local p1    # "u":Ljava/net/URL;
    goto :goto_6

    .line 164
    .end local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    .end local p1    # "u":Ljava/net/URL;
    .restart local v0    # "u":Ljava/net/URL;
    .restart local v1    # "res":Lorg/bouncycastle/est/ESTResponse;
    :cond_7
    move-object/from16 p1, v0

    move-object/from16 v16, v1

    .line 175
    .end local v0    # "u":Ljava/net/URL;
    .end local v1    # "res":Lorg/bouncycastle/est/ESTResponse;
    .end local v11    # "it":Ljava/util/Iterator;
    .restart local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    .restart local p1    # "u":Ljava/net/URL;
    sget-object v0, Lorg/bouncycastle/est/jcajce/DefaultESTClient;->CRLF:[B

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 176
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 178
    invoke-virtual {v10, v7}, Lorg/bouncycastle/est/ESTRequest;->writeData(Ljava/io/OutputStream;)V

    .line 180
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 182
    invoke-virtual {v10}, Lorg/bouncycastle/est/ESTRequest;->getHijacker()Lorg/bouncycastle/est/ESTHijacker;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 184
    invoke-virtual {v10}, Lorg/bouncycastle/est/ESTRequest;->getHijacker()Lorg/bouncycastle/est/ESTHijacker;

    move-result-object v0

    invoke-interface {v0, v10, v2}, Lorg/bouncycastle/est/ESTHijacker;->hijack(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 185
    .end local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    .local v0, "res":Lorg/bouncycastle/est/ESTResponse;
    nop

    .line 198
    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    .line 200
    invoke-interface {v2}, Lorg/bouncycastle/est/Source;->close()V

    .line 185
    :cond_8
    return-object v0

    .line 189
    .end local v0    # "res":Lorg/bouncycastle/est/ESTResponse;
    .restart local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    :cond_9
    :try_start_d
    new-instance v0, Lorg/bouncycastle/est/ESTResponse;

    invoke-direct {v0, v10, v2}, Lorg/bouncycastle/est/ESTResponse;-><init>(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 192
    .end local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    .restart local v0    # "res":Lorg/bouncycastle/est/ESTResponse;
    nop

    .line 198
    nop

    .line 192
    return-object v0

    .line 198
    .end local v0    # "res":Lorg/bouncycastle/est/ESTResponse;
    .end local v5    # "req":Ljava/lang/String;
    .end local v6    # "opts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "os":Ljava/io/OutputStream;
    .end local v8    # "rb":Lorg/bouncycastle/est/ESTRequestBuilder;
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v10    # "rc":Lorg/bouncycastle/est/ESTRequest;
    .end local p1    # "u":Ljava/net/URL;
    .restart local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    :catchall_3
    move-exception v0

    goto :goto_8

    .end local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    .restart local v1    # "res":Lorg/bouncycastle/est/ESTResponse;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v1

    .end local v1    # "res":Lorg/bouncycastle/est/ESTResponse;
    .restart local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    goto :goto_8

    .end local v4    # "c":Lorg/bouncycastle/est/ESTRequest;
    .end local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    .restart local v1    # "res":Lorg/bouncycastle/est/ESTResponse;
    .local p1, "c":Lorg/bouncycastle/est/ESTRequest;
    :catchall_5
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v16, v1

    move-object v4, v5

    .end local v1    # "res":Lorg/bouncycastle/est/ESTResponse;
    .end local p1    # "c":Lorg/bouncycastle/est/ESTRequest;
    .restart local v4    # "c":Lorg/bouncycastle/est/ESTRequest;
    .restart local v16    # "res":Lorg/bouncycastle/est/ESTResponse;
    :goto_8
    if-eqz v2, :cond_a

    if-nez v16, :cond_a

    .line 200
    invoke-interface {v2}, Lorg/bouncycastle/est/Source;->close()V

    .line 202
    :cond_a
    throw v0
.end method

.method protected redirectURL(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTRequest;
    .locals 8
    .param p1, "response"    # Lorg/bouncycastle/est/ESTResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "redirectingRequest":Lorg/bouncycastle/est/ESTRequest;
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x18f

    if-gt v1, v2, :cond_2

    .line 69
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 94
    :pswitch_0
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client does not handle http status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :pswitch_1
    const-string v1, "Location"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "loc":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    new-instance v2, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    .line 83
    .local v2, "requestBuilder":Lorg/bouncycastle/est/ESTRequestBuilder;
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;->withURL(Ljava/net/URL;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 90
    .local v3, "u":Ljava/net/URL;
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v7

    invoke-direct {v4, v5, v6, v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;->withURL(Ljava/net/URL;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v0

    .line 92
    .end local v3    # "u":Ljava/net/URL;
    goto :goto_0

    .line 79
    .end local v2    # "requestBuilder":Lorg/bouncycastle/est/ESTRequestBuilder;
    :cond_1
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redirect status type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but no location header"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    .end local v1    # "loc":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 103
    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

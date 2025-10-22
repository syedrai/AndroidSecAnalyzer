.class public Lorg/bouncycastle/est/HttpAuth;
.super Ljava/lang/Object;
.source "HttpAuth.java"

# interfaces
.implements Lorg/bouncycastle/est/ESTAuth;


# static fields
.field private static final digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private static final validParts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private final nonceGenerator:Ljava/security/SecureRandom;

.field private final password:[C

.field private final realm:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetpassword(Lorg/bouncycastle/est/HttpAuth;)[C
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->password:[C

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrealm(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusername(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoDigestFunction(Lorg/bouncycastle/est/HttpAuth;Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/est/HttpAuth;->doDigestFunction(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v0, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "realm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "nonce"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "opaque"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v1, "algorithm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "qop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/est/HttpAuth;->validParts:Ljava/util/Set;

    .line 53
    .end local v0    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[C)V
    .locals 6
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "realm",
            "username",
            "password"
        }
    .end annotation

    .line 75
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "realm":Ljava/lang/String;
    .end local p2    # "username":Ljava/lang/String;
    .end local p3    # "password":[C
    .local v1, "realm":Ljava/lang/String;
    .local v2, "username":Ljava/lang/String;
    .local v3, "password":[C
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "nonceGenerator"    # Ljava/security/SecureRandom;
    .param p5, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "realm",
            "username",
            "password",
            "nonceGenerator",
            "digestCalculatorProvider"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lorg/bouncycastle/est/HttpAuth;->password:[C

    .line 105
    iput-object p4, p0, Lorg/bouncycastle/est/HttpAuth;->nonceGenerator:Ljava/security/SecureRandom;

    .line 106
    iput-object p5, p0, Lorg/bouncycastle/est/HttpAuth;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .line 63
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "username":Ljava/lang/String;
    .end local p2    # "password":[C
    .local v2, "username":Ljava/lang/String;
    .local v3, "password":[C
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "nonceGenerator"    # Ljava/security/SecureRandom;
    .param p4, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "username",
            "password",
            "nonceGenerator",
            "digestCalculatorProvider"
        }
    .end annotation

    .line 88
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "username":Ljava/lang/String;
    .end local p2    # "password":[C
    .end local p3    # "nonceGenerator":Ljava/security/SecureRandom;
    .end local p4    # "digestCalculatorProvider":Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .local v2, "username":Ljava/lang/String;
    .local v3, "password":[C
    .local v4, "nonceGenerator":Ljava/security/SecureRandom;
    .local v5, "digestCalculatorProvider":Lorg/bouncycastle/operator/DigestCalculatorProvider;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 89
    return-void
.end method

.method private doDigestFunction(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;
    .locals 36
    .param p1, "res"    # Lorg/bouncycastle/est/ESTResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WWW-Authenticate"

    const-string v0, "Digest"

    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 196
    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v4

    .line 199
    .local v4, "req":Lorg/bouncycastle/est/ESTRequest;
    const/4 v5, 0x0

    .line 202
    .local v5, "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/bouncycastle/est/HttpUtil;->splitCSL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v5    # "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 214
    const/4 v5, 0x0

    .line 217
    .local v5, "uri":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    .end local v5    # "uri":Ljava/lang/String;
    .local v6, "uri":Ljava/lang/String;
    nop

    .line 224
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "\'"

    if-eqz v7, :cond_1

    .line 226
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 227
    .local v7, "k":Ljava/lang/Object;
    sget-object v9, Lorg/bouncycastle/est/HttpAuth;->validParts:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 231
    .end local v7    # "k":Ljava/lang/Object;
    goto :goto_0

    .line 229
    .restart local v7    # "k":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognised entry in WWW-Authenticate header: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v7    # "k":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "method":Ljava/lang/String;
    const-string v7, "realm"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 235
    .local v9, "realm":Ljava/lang/String;
    const-string v10, "nonce"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 236
    .local v11, "nonce":Ljava/lang/String;
    const-string v12, "opaque"

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 237
    .local v13, "opaque":Ljava/lang/String;
    const-string v14, "algorithm"

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 238
    .local v15, "algorithm":Ljava/lang/String;
    move-object/from16 v16, v13

    .end local v13    # "opaque":Ljava/lang/String;
    .local v16, "opaque":Ljava/lang/String;
    const-string v13, "qop"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 241
    .local v17, "qop":Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v18

    .line 243
    .local v19, "qopMods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v18, v3

    .end local v3    # "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v18, "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    move-object/from16 v20, v3

    if-eqz v20, :cond_3

    .line 245
    iget-object v3, v1, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 248
    :cond_2
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    iget-object v3, v1, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Supplied realm \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' does not match server realm \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x191

    const/4 v8, 0x0

    invoke-direct {v0, v3, v8, v7, v8}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0

    .line 253
    :cond_3
    :goto_1
    if-nez v15, :cond_4

    .line 255
    const-string v15, "MD5"

    .line 258
    :cond_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    .line 263
    invoke-static {v15}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    .end local v15    # "algorithm":Ljava/lang/String;
    .local v3, "algorithm":Ljava/lang/String;
    if-eqz v17, :cond_14

    .line 267
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_13

    .line 272
    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 273
    .end local v17    # "qop":Ljava/lang/String;
    .local v15, "qop":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "s":[Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v21, v15

    move/from16 v15, v17

    .local v15, "j":I
    .local v21, "qop":Ljava/lang/String;
    :goto_2
    move-object/from16 v22, v0

    array-length v0, v2

    move-object/from16 v17, v2

    .end local v2    # "s":[Ljava/lang/String;
    .local v17, "s":[Ljava/lang/String;
    const-string v2, "auth"

    move-object/from16 v23, v12

    const-string v12, "auth-int"

    if-eq v15, v0, :cond_8

    .line 276
    aget-object v0, v17, v15

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v0, v17, v15

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 278
    :cond_5
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QoP value unknown: \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_6
    :goto_3
    aget-object v0, v17, v15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "jt":Ljava/lang/String;
    move-object/from16 v2, v19

    .end local v19    # "qopMods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "qopMods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 284
    goto :goto_4

    .line 286
    :cond_7
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v0    # "jt":Ljava/lang/String;
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    move-object/from16 v0, v22

    move-object/from16 v12, v23

    goto :goto_2

    .end local v2    # "qopMods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "qopMods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, v19

    .line 288
    .end local v15    # "j":I
    .end local v17    # "s":[Ljava/lang/String;
    .end local v19    # "qopMods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "qopMods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 295
    invoke-direct {v1, v3}, Lorg/bouncycastle/est/HttpAuth;->lookupDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    .line 296
    .local v8, "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    if-eqz v15, :cond_12

    .line 301
    invoke-direct {v1, v3, v8}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v15

    .line 302
    .local v15, "dCalc":Lorg/bouncycastle/operator/DigestCalculator;
    move-object/from16 v17, v15

    .end local v15    # "dCalc":Lorg/bouncycastle/operator/DigestCalculator;
    .local v17, "dCalc":Lorg/bouncycastle/operator/DigestCalculator;
    invoke-interface/range {v17 .. v17}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 304
    .local v15, "dOut":Ljava/io/OutputStream;
    move-object/from16 v19, v14

    const/16 v14, 0xa

    invoke-direct {v1, v14}, Lorg/bouncycastle/est/HttpAuth;->makeNonce(I)Ljava/lang/String;

    move-result-object v14

    .line 306
    .local v14, "crnonce":Ljava/lang/String;
    move-object/from16 v24, v13

    iget-object v13, v1, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    invoke-direct {v1, v15, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 307
    const-string v13, ":"

    invoke-direct {v1, v15, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 308
    invoke-direct {v1, v15, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 309
    invoke-direct {v1, v15, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 310
    move-object/from16 v25, v10

    iget-object v10, v1, Lorg/bouncycastle/est/HttpAuth;->password:[C

    invoke-direct {v1, v15, v10}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;[C)V

    .line 312
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 314
    invoke-interface/range {v17 .. v17}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v10

    .line 316
    .local v10, "ha1":[B
    move-object/from16 v26, v10

    .end local v10    # "ha1":[B
    .local v26, "ha1":[B
    const-string v10, "-SESS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 318
    invoke-direct {v1, v3, v8}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v10

    .line 319
    .local v10, "sessCalc":Lorg/bouncycastle/operator/DigestCalculator;
    move-object/from16 v27, v10

    .end local v10    # "sessCalc":Lorg/bouncycastle/operator/DigestCalculator;
    .local v27, "sessCalc":Lorg/bouncycastle/operator/DigestCalculator;
    invoke-interface/range {v27 .. v27}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 321
    .local v10, "sessOut":Ljava/io/OutputStream;
    move-object/from16 v28, v15

    .end local v15    # "dOut":Ljava/io/OutputStream;
    .local v28, "dOut":Ljava/io/OutputStream;
    invoke-static/range {v26 .. v26}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v15

    .line 323
    .local v15, "cs":Ljava/lang/String;
    invoke-direct {v1, v10, v15}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 324
    invoke-direct {v1, v10, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 325
    invoke-direct {v1, v10, v11}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 326
    invoke-direct {v1, v10, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 327
    invoke-direct {v1, v10, v14}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 331
    invoke-interface/range {v27 .. v27}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v26

    move-object/from16 v10, v26

    goto :goto_5

    .line 316
    .end local v10    # "sessOut":Ljava/io/OutputStream;
    .end local v27    # "sessCalc":Lorg/bouncycastle/operator/DigestCalculator;
    .end local v28    # "dOut":Ljava/io/OutputStream;
    .local v15, "dOut":Ljava/io/OutputStream;
    :cond_9
    move-object/from16 v28, v15

    .end local v15    # "dOut":Ljava/io/OutputStream;
    .restart local v28    # "dOut":Ljava/io/OutputStream;
    move-object/from16 v10, v26

    .line 335
    .end local v26    # "ha1":[B
    .local v10, "ha1":[B
    :goto_5
    invoke-static {v10}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v15

    .line 337
    .local v15, "hashHa1":Ljava/lang/String;
    invoke-direct {v1, v3, v8}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v26

    .line 338
    .local v26, "authCalc":Lorg/bouncycastle/operator/DigestCalculator;
    move-object/from16 v27, v10

    .end local v10    # "ha1":[B
    .local v27, "ha1":[B
    invoke-interface/range {v26 .. v26}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 340
    .local v10, "authOut":Ljava/io/OutputStream;
    move-object/from16 v29, v7

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v7, v30

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 342
    invoke-direct {v1, v3, v8}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v7

    .line 343
    .local v7, "reqCalc":Lorg/bouncycastle/operator/DigestCalculator;
    move-object/from16 v30, v7

    .end local v7    # "reqCalc":Lorg/bouncycastle/operator/DigestCalculator;
    .local v30, "reqCalc":Lorg/bouncycastle/operator/DigestCalculator;
    invoke-interface/range {v30 .. v30}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 345
    .local v7, "reqOut":Ljava/io/OutputStream;
    invoke-virtual {v4, v7}, Lorg/bouncycastle/est/ESTRequest;->writeData(Ljava/io/OutputStream;)V

    .line 347
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 349
    invoke-interface/range {v30 .. v30}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v31

    .line 353
    .local v31, "b":[B
    invoke-direct {v1, v10, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 354
    invoke-direct {v1, v10, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 355
    invoke-direct {v1, v10, v6}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 356
    invoke-direct {v1, v10, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 357
    move-object/from16 v32, v7

    .end local v7    # "reqOut":Ljava/io/OutputStream;
    .local v32, "reqOut":Ljava/io/OutputStream;
    invoke-static/range {v31 .. v31}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v10, v7}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 358
    .end local v30    # "reqCalc":Lorg/bouncycastle/operator/DigestCalculator;
    .end local v31    # "b":[B
    .end local v32    # "reqOut":Ljava/io/OutputStream;
    goto :goto_6

    .line 359
    :cond_a
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v7, v30

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 361
    invoke-direct {v1, v10, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 362
    invoke-direct {v1, v10, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 363
    invoke-direct {v1, v10, v6}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 366
    :cond_b
    :goto_6
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 368
    invoke-interface/range {v26 .. v26}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, "hashHa2":Ljava/lang/String;
    invoke-direct {v1, v3, v8}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v30

    .line 371
    .local v30, "responseCalc":Lorg/bouncycastle/operator/DigestCalculator;
    move-object/from16 v31, v5

    .end local v5    # "method":Ljava/lang/String;
    .local v31, "method":Ljava/lang/String;
    invoke-interface/range {v30 .. v30}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 373
    .local v5, "responseOut":Ljava/io/OutputStream;
    move-object/from16 v32, v8

    .end local v8    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v32, "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const-string v8, "missing"

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    move/from16 v33, v8

    const-string v8, "00000001"

    if-eqz v33, :cond_c

    .line 375
    invoke-direct {v1, v5, v15}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 376
    invoke-direct {v1, v5, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 377
    invoke-direct {v1, v5, v11}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 378
    invoke-direct {v1, v5, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 379
    invoke-direct {v1, v5, v7}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v33, v10

    goto :goto_8

    .line 383
    :cond_c
    invoke-direct {v1, v5, v15}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 384
    invoke-direct {v1, v5, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 385
    invoke-direct {v1, v5, v11}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 386
    invoke-direct {v1, v5, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 387
    invoke-direct {v1, v5, v8}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 388
    invoke-direct {v1, v5, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 389
    invoke-direct {v1, v5, v14}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 390
    invoke-direct {v1, v5, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 392
    move-object/from16 v33, v10

    const/4 v10, 0x0

    .end local v10    # "authOut":Ljava/io/OutputStream;
    .local v33, "authOut":Ljava/io/OutputStream;
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v10, v34

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 394
    invoke-direct {v1, v5, v12}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_7

    .line 398
    :cond_d
    invoke-direct {v1, v5, v2}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 401
    :goto_7
    invoke-direct {v1, v5, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 402
    invoke-direct {v1, v5, v7}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 405
    :goto_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 408
    invoke-interface/range {v30 .. v30}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    .line 410
    .local v10, "digest":Ljava/lang/String;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 411
    .local v13, "hdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v34, v5

    .end local v5    # "responseOut":Ljava/io/OutputStream;
    .local v34, "responseOut":Ljava/io/OutputStream;
    const-string/jumbo v5, "username"

    move-object/from16 v35, v7

    .end local v7    # "hashHa2":Ljava/lang/String;
    .local v35, "hashHa2":Ljava/lang/String;
    iget-object v7, v1, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    invoke-interface {v13, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object/from16 v5, v29

    invoke-interface {v13, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    move-object/from16 v5, v25

    invoke-interface {v13, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string/jumbo v5, "uri"

    invoke-interface {v13, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v5, "response"

    invoke-interface {v13, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "cnonce"

    move/from16 v25, v5

    const-string v5, "nc"

    if-eqz v25, :cond_e

    .line 418
    move-object/from16 v2, v24

    invoke-interface {v13, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-interface {v13, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-interface {v13, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v6

    goto :goto_9

    .line 422
    :cond_e
    move-object/from16 v12, v24

    move-object/from16 v24, v6

    const/4 v6, 0x0

    .end local v6    # "uri":Ljava/lang/String;
    .local v24, "uri":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 424
    invoke-interface {v13, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-interface {v13, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-interface {v13, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_f
    :goto_9
    move-object/from16 v2, v19

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    .line 432
    :cond_10
    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/HttpAuth;->makeNonce(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v23

    invoke-interface {v13, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_11
    new-instance v2, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-direct {v2, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v2

    .line 437
    .local v2, "answer":Lorg/bouncycastle/est/ESTRequestBuilder;
    const-string v5, "Authorization"

    move-object/from16 v6, v22

    invoke-static {v6, v13}, Lorg/bouncycastle/est/HttpUtil;->mergeCSL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 439
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v5

    return-object v5

    .line 296
    .end local v2    # "answer":Lorg/bouncycastle/est/ESTRequestBuilder;
    .end local v10    # "digest":Ljava/lang/String;
    .end local v13    # "hdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "crnonce":Ljava/lang/String;
    .end local v15    # "hashHa1":Ljava/lang/String;
    .end local v17    # "dCalc":Lorg/bouncycastle/operator/DigestCalculator;
    .end local v24    # "uri":Ljava/lang/String;
    .end local v26    # "authCalc":Lorg/bouncycastle/operator/DigestCalculator;
    .end local v27    # "ha1":[B
    .end local v28    # "dOut":Ljava/io/OutputStream;
    .end local v30    # "responseCalc":Lorg/bouncycastle/operator/DigestCalculator;
    .end local v31    # "method":Ljava/lang/String;
    .end local v32    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v33    # "authOut":Ljava/io/OutputStream;
    .end local v34    # "responseOut":Ljava/io/OutputStream;
    .end local v35    # "hashHa2":Ljava/lang/String;
    .local v5, "method":Ljava/lang/String;
    .restart local v6    # "uri":Ljava/lang/String;
    .restart local v8    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_12
    move-object/from16 v31, v5

    move-object/from16 v24, v6

    move-object/from16 v32, v8

    .line 298
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    .end local v8    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v24    # "uri":Ljava/lang/String;
    .restart local v31    # "method":Ljava/lang/String;
    .restart local v32    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auth digest algorithm unknown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    .end local v0    # "qopMods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "qop":Ljava/lang/String;
    .end local v24    # "uri":Ljava/lang/String;
    .end local v31    # "method":Ljava/lang/String;
    .end local v32    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v5    # "method":Ljava/lang/String;
    .restart local v6    # "uri":Ljava/lang/String;
    .local v17, "qop":Ljava/lang/String;
    .restart local v19    # "qopMods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v31, v5

    .end local v5    # "method":Ljava/lang/String;
    .restart local v31    # "method":Ljava/lang/String;
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    const-string v5, "QoP value is empty."

    invoke-direct {v2, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    .end local v31    # "method":Ljava/lang/String;
    .restart local v5    # "method":Ljava/lang/String;
    :cond_14
    move-object/from16 v31, v5

    .end local v5    # "method":Ljava/lang/String;
    .restart local v31    # "method":Ljava/lang/String;
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    const-string v5, "Qop is not defined in WWW-Authenticate header."

    invoke-direct {v2, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    .end local v3    # "algorithm":Ljava/lang/String;
    .end local v31    # "method":Ljava/lang/String;
    .restart local v5    # "method":Ljava/lang/String;
    .local v15, "algorithm":Ljava/lang/String;
    :cond_15
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    const-string v3, "WWW-Authenticate no algorithm defined."

    invoke-direct {v2, v3}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    .end local v6    # "uri":Ljava/lang/String;
    .end local v9    # "realm":Ljava/lang/String;
    .end local v11    # "nonce":Ljava/lang/String;
    .end local v15    # "algorithm":Ljava/lang/String;
    .end local v16    # "opaque":Ljava/lang/String;
    .end local v17    # "qop":Ljava/lang/String;
    .end local v18    # "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "qopMods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v5, "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    .line 221
    .end local v3    # "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to process URL in request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v18    # "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v5, "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 206
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/bouncycastle/est/ESTException;

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parsing WWW-Authentication header: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 210
    move-object/from16 v9, p1

    invoke-virtual {v9, v3}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v6, v0, v7, v8}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v2
.end method

.method private getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "digestAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "digestAlg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/est/HttpAuth;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-interface {v0, p2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .local v0, "dCalc":Lorg/bouncycastle/operator/DigestCalculator;
    nop

    .line 454
    return-object v0

    .line 450
    .end local v0    # "dCalc":Lorg/bouncycastle/operator/DigestCalculator;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot create digest calculator for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private lookupDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 459
    const-string v0, "-SESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 464
    :cond_0
    const-string v0, "SHA-512-256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    sget-object v0, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0

    .line 469
    :cond_1
    sget-object v0, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private makeNonce(I)Ljava/lang/String;
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 486
    new-array v0, p1, [B

    .line 487
    .local v0, "b":[B
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth;->nonceGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 489
    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private update(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "dOut"    # Ljava/io/OutputStream;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dOut",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 482
    return-void
.end method

.method private update(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "dOut"    # Ljava/io/OutputStream;
    .param p2, "value"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dOut",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 476
    return-void
.end method


# virtual methods
.method public applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V
    .locals 1
    .param p1, "reqBldr"    # Lorg/bouncycastle/est/ESTRequestBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reqBldr"
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/bouncycastle/est/HttpAuth$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/HttpAuth$1;-><init>(Lorg/bouncycastle/est/HttpAuth;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 190
    return-void
.end method

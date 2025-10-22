.class Lorg/bouncycastle/est/HttpUtil$Headers;
.super Ljava/util/HashMap;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/est/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Headers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 182
    return-void
.end method

.method private actualKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "header"
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    return-object p1

    .line 221
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/est/HttpUtil$Headers;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    return-object v1

    .line 228
    .end local v1    # "k":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 230
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private copy([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "vs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vs"
        }
    .end annotation

    .line 271
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 273
    .local v0, "rv":[Ljava/lang/String;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    return-object v0
.end method

.method private hasHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "header"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->actualKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 246
    invoke-virtual {p0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/bouncycastle/est/HttpUtil;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/est/HttpUtil$Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 259
    new-instance v0, Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-direct {v0}, Lorg/bouncycastle/est/HttpUtil$Headers;-><init>()V

    .line 260
    .local v0, "n":Lorg/bouncycastle/est/HttpUtil$Headers;
    invoke-virtual {p0}, Lorg/bouncycastle/est/HttpUtil$Headers;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 264
    .local v2, "v":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/bouncycastle/est/HttpUtil$Headers;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/est/HttpUtil$Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .end local v2    # "v":Ljava/util/Map$Entry;
    goto :goto_0

    .line 266
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public ensureHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 251
    invoke-virtual {p0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/est/HttpUtil$Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    return-void
.end method

.method public getFirstValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "j":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 189
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 191
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFirstValueOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "j":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 199
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 201
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public getValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->actualKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    if-nez p1, :cond_0

    .line 209
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/est/HttpUtil$Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

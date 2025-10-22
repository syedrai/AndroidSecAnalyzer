.class Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;
.super Ljava/lang/Object;
.source "SubjectPublicKeyInfoChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Properties"
.end annotation


# static fields
.field private static final threadProperties:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 257
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->threadProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method

.method static asInteger(Ljava/lang/String;I)I
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyName",
            "defaultValue"
        }
    .end annotation

    .line 323
    invoke-static {p0}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 330
    :cond_0
    return p1
.end method

.method static getPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertyName"
        }
    .end annotation

    .line 342
    new-instance v0, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 351
    return-object v0

    .line 354
    :cond_0
    sget-object v1, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 355
    .local v1, "localProps":Ljava/util/Map;
    if-eqz v1, :cond_1

    .line 357
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 358
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 360
    return-object v2

    .line 364
    .end local v2    # "p":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties$2;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties$2;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method static isOverrideSet(Ljava/lang/String;)Z
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyName"
        }
    .end annotation

    .line 269
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->isSetTrue(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/security/AccessControlException;
    const/4 v1, 0x0

    return v1
.end method

.method private static isSetTrue(Ljava/lang/String;)Z
    .locals 5
    .param p0, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 380
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_4

    .line 381
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_4

    .line 382
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-eq v3, v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x55

    if-ne v2, v3, :cond_4

    .line 383
    :cond_3
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x45

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 380
    :goto_1
    return v0

    .line 377
    :cond_6
    :goto_2
    return v0
.end method

.method static removeThreadOverride(Ljava/lang/String;)Z
    .locals 4
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyName"
        }
    .end annotation

    .line 296
    sget-object v0, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 297
    .local v0, "localProps":Ljava/util/Map;
    if-eqz v0, :cond_1

    .line 299
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 302
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    sget-object v2, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 307
    :cond_0
    const-string/jumbo v2, "true"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 311
    .end local v1    # "p":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static setThreadOverride(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyName",
            "enable"
        }
    .end annotation

    .line 279
    invoke-static {p0}, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    .line 281
    .local v0, "isSet":Z
    sget-object v1, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 282
    .local v1, "localProps":Ljava/util/Map;
    if-nez v1, :cond_0

    .line 284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 286
    sget-object v2, Lorg/bouncycastle/pkix/SubjectPublicKeyInfoChecker$Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 289
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return v0
.end method

.class public final Lkotlin/time/Instant$Companion;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/Instant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n+ 2 Instant.kt\nkotlin/time/InstantKt\n*L\n1#1,799:1\n721#2,6:800\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n*L\n308#1:800,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0007J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0010\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/time/Instant$Companion;",
        "",
        "<init>",
        "()V",
        "now",
        "Lkotlin/time/Instant;",
        "fromEpochMilliseconds",
        "epochMilliseconds",
        "",
        "fromEpochSeconds",
        "epochSeconds",
        "nanosecondAdjustment",
        "",
        "parse",
        "input",
        "",
        "DISTANT_PAST",
        "getDISTANT_PAST",
        "()Lkotlin/time/Instant;",
        "DISTANT_FUTURE",
        "getDISTANT_FUTURE",
        "MIN",
        "getMIN$kotlin_stdlib",
        "MAX",
        "getMAX$kotlin_stdlib",
        "kotlin_stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/time/Instant$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromEpochSeconds$default(Lkotlin/time/Instant$Companion;JJILjava/lang/Object;)Lkotlin/time/Instant;
    .locals 0

    .line 307
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JJ)Lkotlin/time/Instant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromEpochMilliseconds(J)Lkotlin/time/Instant;
    .locals 10
    .param p1, "epochMilliseconds"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epochMilliseconds"
        }
    .end annotation

    .line 284
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    xor-long v4, p1, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    mul-long v4, v2, v0

    cmp-long v6, v4, p1

    if-eqz v6, :cond_0

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    .line 285
    .local v2, "epochSeconds":J
    :cond_0
    rem-long v4, p1, v0

    xor-long v6, v4, v0

    neg-long v8, v4

    or-long/2addr v8, v4

    and-long/2addr v6, v8

    const/16 v8, 0x3f

    shr-long/2addr v6, v8

    and-long/2addr v0, v6

    add-long/2addr v4, v0

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long v4, v4, v0

    long-to-int v0, v4

    .line 286
    .local v0, "nanosecondsOfSecond":I
    nop

    .line 287
    const-wide v4, -0x701cefeb9bec00L

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMIN$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v1

    goto :goto_0

    .line 288
    :cond_1
    const-wide v4, 0x701cd2fa9578ffL

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMAX$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v1

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p0, v2, v3, v0}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    move-result-object v1

    .line 286
    :goto_0
    return-object v1
.end method

.method public final fromEpochSeconds(JI)Lkotlin/time/Instant;
    .locals 2
    .param p1, "epochSeconds"    # J
    .param p3, "nanosecondAdjustment"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "epochSeconds",
            "nanosecondAdjustment"
        }
    .end annotation

    .line 336
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JJ)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final fromEpochSeconds(JJ)Lkotlin/time/Instant;
    .locals 12
    .param p1, "epochSeconds"    # J
    .param p3, "nanosecondAdjustment"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "epochSeconds",
            "nanosecondAdjustment"
        }
    .end annotation

    .line 308
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p3, v0

    xor-long v4, p3, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    mul-long v4, v2, v0

    cmp-long v8, v4, p3

    if-eqz v8, :cond_0

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    .local v2, "b$iv":J
    :cond_0
    const/4 v4, 0x0

    .line 800
    .local v4, "$i$f$safeAddOrElse":I
    add-long v8, p1, v2

    .line 802
    .local v8, "sum$iv":J
    xor-long v10, p1, v8

    cmp-long v5, v10, v6

    if-gez v5, :cond_2

    xor-long v10, p1, v2

    cmp-long v5, v10, v6

    if-ltz v5, :cond_2

    .line 803
    const/4 v0, 0x0

    .line 309
    .local v0, "$i$a$-safeAddOrElse-Instant$Companion$fromEpochSeconds$seconds$1":I
    cmp-long v1, p1, v6

    if-lez v1, :cond_1

    sget-object v1, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    invoke-virtual {v1}, Lkotlin/time/Instant$Companion;->getMAX$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    invoke-virtual {v1}, Lkotlin/time/Instant$Companion;->getMIN$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v1

    :goto_0
    return-object v1

    .line 805
    .end local v0    # "$i$a$-safeAddOrElse-Instant$Companion$fromEpochSeconds$seconds$1":I
    :cond_2
    nop

    .line 308
    .end local v2    # "b$iv":J
    .end local v4    # "$i$f$safeAddOrElse":I
    .end local v8    # "sum$iv":J
    nop

    .line 311
    .local v8, "seconds":J
    nop

    .line 312
    const-wide v2, -0x701cefeb9bec00L

    cmp-long v4, v8, v2

    if-gez v4, :cond_3

    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMIN$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v0

    goto :goto_1

    .line 313
    :cond_3
    const-wide v2, 0x701cd2fa9578ffL

    cmp-long v4, v8, v2

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMAX$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object v0

    goto :goto_1

    .line 315
    :cond_4
    rem-long v2, p3, v0

    xor-long v4, v2, v0

    neg-long v6, v2

    or-long/2addr v6, v2

    and-long/2addr v4, v6

    const/16 v6, 0x3f

    shr-long/2addr v4, v6

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 316
    .local v0, "nanoseconds":I
    new-instance v1, Lkotlin/time/Instant;

    invoke-direct {v1, v8, v9, v0}, Lkotlin/time/Instant;-><init>(JI)V

    move-object v0, v1

    .line 311
    .end local v0    # "nanoseconds":I
    :goto_1
    return-object v0
.end method

.method public final getDISTANT_FUTURE()Lkotlin/time/Instant;
    .locals 3

    .line 386
    const-wide v0, 0x2d044a2eb00L

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final getDISTANT_PAST()Lkotlin/time/Instant;
    .locals 3

    .line 376
    const-wide v0, -0x2ed378be301L

    const v2, 0x3b9ac9ff

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final getMAX$kotlin_stdlib()Lkotlin/time/Instant;
    .locals 1

    .line 389
    invoke-static {}, Lkotlin/time/Instant;->access$getMAX$cp()Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final getMIN$kotlin_stdlib()Lkotlin/time/Instant;
    .locals 1

    .line 388
    invoke-static {}, Lkotlin/time/Instant;->access$getMIN$cp()Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final now()Lkotlin/time/Instant;
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use Clock.System.now() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Clock.System.now()"
            imports = {
                "kotlin.time.Clock"
            }
        .end subannotation
    .end annotation

    .line 271
    new-instance v0, Lkotlin/NotImplementedError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public final parse(Ljava/lang/CharSequence;)Lkotlin/time/Instant;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-static {p1}, Lkotlin/time/InstantKt;->access$parseIso(Ljava/lang/CharSequence;)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

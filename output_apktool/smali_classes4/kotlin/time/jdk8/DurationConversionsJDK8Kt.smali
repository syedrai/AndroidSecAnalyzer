.class public final Lkotlin/time/jdk8/DurationConversionsJDK8Kt;
.super Ljava/lang/Object;
.source "DurationConversions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDurationConversions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DurationConversions.kt\nkotlin/time/jdk8/DurationConversionsJDK8Kt\n+ 2 Duration.kt\nkotlin/time/Duration\n*L\n1#1,35:1\n549#2:36\n*S KotlinDebug\n*F\n+ 1 DurationConversions.kt\nkotlin/time/jdk8/DurationConversionsJDK8Kt\n*L\n35#1:36\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0014\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\u0008\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0014\u0010\u0006\u001a\u00020\u0000*\u00020\u0001H\u0087\u0008\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "j$/time/Duration",
        "Lkotlin/time/Duration;",
        "toKotlinDuration",
        "(Lj$/time/Duration;)J",
        "toJavaDuration-LRDsOJo",
        "(J)Lj$/time/Duration;",
        "toJavaDuration",
        "kotlin_stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final toJavaDuration-LRDsOJo(J)Lj$/time/Duration;
    .locals 7
    .param p0, "$this$toJavaDuration_u2dLRDsOJo"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toJavaDuration"
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "$i$f$toComponents-impl":I
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v1

    .local v1, "seconds":J
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v3

    .local v3, "nanoseconds":I
    const/4 v4, 0x0

    .line 35
    .local v4, "$i$a$-toComponents-impl-DurationConversionsJDK8Kt$toJavaDuration$1":I
    int-to-long v5, v3

    invoke-static {v1, v2, v5, v6}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v1

    .line 36
    .end local v1    # "seconds":J
    .end local v3    # "nanoseconds":I
    .end local v4    # "$i$a$-toComponents-impl-DurationConversionsJDK8Kt$toJavaDuration$1":I
    nop

    .line 35
    .end local v0    # "$i$f$toComponents-impl":I
    const-string/jumbo v0, "toComponents-impl(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toKotlinDuration(Lj$/time/Duration;)J
    .locals 4
    .param p0, "$this$toKotlinDuration"    # Lj$/time/Duration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toKotlinDuration"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result v2

    sget-object v3, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "Duration.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Duration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Duration;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1068:1\n38#1:1069\n38#1:1070\n38#1:1071\n38#1:1072\n38#1:1073\n501#1:1074\n518#1:1082\n170#2,6:1075\n1#3:1081\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n39#1:1069\n40#1:1070\n275#1:1071\n295#1:1072\n479#1:1073\n728#1:1074\n819#1:1082\n770#1:1075,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0006\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087@\u0018\u0000 \u0089\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0089\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u000c\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0010\u0010\u0016\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0005J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0018\u0010!\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\"\u0010\u001bJ\u0018\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\tH\u0086\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0018\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\'H\u0086\u0002\u00a2\u0006\u0004\u0008%\u0010(J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\tH\u0086\u0002\u00a2\u0006\u0004\u0008*\u0010&J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\'H\u0086\u0002\u00a2\u0006\u0004\u0008*\u0010(J\u0018\u0010)\u001a\u00020\'2\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0013H\u0000\u00a2\u0006\u0004\u0008/\u00100J\r\u00101\u001a\u00020\r\u00a2\u0006\u0004\u00082\u0010\u000fJ\r\u00103\u001a\u00020\r\u00a2\u0006\u0004\u00084\u0010\u000fJ\r\u00105\u001a\u00020\r\u00a2\u0006\u0004\u00086\u0010\u000fJ\r\u00107\u001a\u00020\r\u00a2\u0006\u0004\u00088\u0010\u000fJ\u0018\u0010;\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008<\u0010=J\u009d\u0001\u0010>\u001a\u0002H?\"\u0004\u0008\u0000\u0010?2u\u0010@\u001aq\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(D\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(E\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(F\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(G\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(H\u0012\u0004\u0012\u0002H?0AH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008I\u0010JJ\u0088\u0001\u0010>\u001a\u0002H?\"\u0004\u0008\u0000\u0010?2`\u0010@\u001a\\\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(E\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(F\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(G\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(H\u0012\u0004\u0012\u0002H?0KH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008I\u0010LJs\u0010>\u001a\u0002H?\"\u0004\u0008\u0000\u0010?2K\u0010@\u001aG\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(F\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(G\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(H\u0012\u0004\u0012\u0002H?0MH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008I\u0010NJ^\u0010>\u001a\u0002H?\"\u0004\u0008\u0000\u0010?26\u0010@\u001a2\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(G\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008B\u0012\u0008\u0008C\u0012\u0004\u0008\u0008(H\u0012\u0004\u0012\u0002H?0OH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008I\u0010PJ\u0015\u0010^\u001a\u00020\'2\u0006\u0010.\u001a\u00020\u0013\u00a2\u0006\u0004\u0008_\u0010`J\u0015\u0010a\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0013\u00a2\u0006\u0004\u0008b\u00100J\u0015\u0010c\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0013\u00a2\u0006\u0004\u0008d\u0010eJ\u000f\u0010t\u001a\u00020uH\u0016\u00a2\u0006\u0004\u0008v\u0010wJA\u0010x\u001a\u00020y*\u00060zj\u0002`{2\u0006\u0010|\u001a\u00020\t2\u0006\u0010}\u001a\u00020\t2\u0006\u0010~\u001a\u00020\t2\u0006\u0010.\u001a\u00020u2\u0006\u0010\u007f\u001a\u00020\rH\u0002\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J!\u0010t\u001a\u00020u2\u0006\u0010.\u001a\u00020\u00132\t\u0008\u0002\u0010\u0082\u0001\u001a\u00020\t\u00a2\u0006\u0005\u0008v\u0010\u0083\u0001J\u000f\u0010\u0084\u0001\u001a\u00020u\u00a2\u0006\u0005\u0008\u0085\u0001\u0010wJ\u0015\u0010\u0086\u0001\u001a\u00020\r2\t\u0010\u0019\u001a\u0005\u0018\u00010\u0087\u0001H\u00d6\u0003J\n\u0010\u0088\u0001\u001a\u00020\tH\u00d6\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0015\u0010\u0008\u001a\u00020\t8\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u00109\u001a\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010\u0005R\u001a\u0010Q\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010\u000bR\u001a\u0010U\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008V\u0010S\u001a\u0004\u0008W\u0010\u000bR\u001a\u0010X\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008Y\u0010S\u001a\u0004\u0008Z\u0010\u000bR\u001a\u0010[\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\\\u0010S\u001a\u0004\u0008]\u0010\u000bR\u0011\u0010f\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010\u0005R\u0011\u0010h\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010\u0005R\u0011\u0010j\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010\u0005R\u0011\u0010l\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010\u0005R\u0011\u0010n\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010\u0005R\u0011\u0010p\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010\u0005R\u0011\u0010r\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008s\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u008a\u0001"
    }
    d2 = {
        "Lkotlin/time/Duration;",
        "",
        "rawValue",
        "",
        "constructor-impl",
        "(J)J",
        "value",
        "getValue-impl",
        "unitDiscriminator",
        "",
        "getUnitDiscriminator-impl",
        "(J)I",
        "isInNanos",
        "",
        "isInNanos-impl",
        "(J)Z",
        "isInMillis",
        "isInMillis-impl",
        "storageUnit",
        "Lkotlin/time/DurationUnit;",
        "getStorageUnit-impl",
        "(J)Lkotlin/time/DurationUnit;",
        "unaryMinus",
        "unaryMinus-UwyO8pc",
        "plus",
        "other",
        "plus-LRDsOJo",
        "(JJ)J",
        "addValuesMixedRanges",
        "thisMillis",
        "otherNanos",
        "addValuesMixedRanges-UwyO8pc",
        "(JJJ)J",
        "minus",
        "minus-LRDsOJo",
        "times",
        "scale",
        "times-UwyO8pc",
        "(JI)J",
        "",
        "(JD)J",
        "div",
        "div-UwyO8pc",
        "div-LRDsOJo",
        "(JJ)D",
        "truncateTo",
        "unit",
        "truncateTo-UwyO8pc$kotlin_stdlib",
        "(JLkotlin/time/DurationUnit;)J",
        "isNegative",
        "isNegative-impl",
        "isPositive",
        "isPositive-impl",
        "isInfinite",
        "isInfinite-impl",
        "isFinite",
        "isFinite-impl",
        "absoluteValue",
        "getAbsoluteValue-UwyO8pc",
        "compareTo",
        "compareTo-LRDsOJo",
        "(JJ)I",
        "toComponents",
        "T",
        "action",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "days",
        "hours",
        "minutes",
        "seconds",
        "nanoseconds",
        "toComponents-impl",
        "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;",
        "Lkotlin/Function4;",
        "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;",
        "Lkotlin/Function3;",
        "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "Lkotlin/Function2;",
        "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "hoursComponent",
        "getHoursComponent$annotations",
        "()V",
        "getHoursComponent-impl",
        "minutesComponent",
        "getMinutesComponent$annotations",
        "getMinutesComponent-impl",
        "secondsComponent",
        "getSecondsComponent$annotations",
        "getSecondsComponent-impl",
        "nanosecondsComponent",
        "getNanosecondsComponent$annotations",
        "getNanosecondsComponent-impl",
        "toDouble",
        "toDouble-impl",
        "(JLkotlin/time/DurationUnit;)D",
        "toLong",
        "toLong-impl",
        "toInt",
        "toInt-impl",
        "(JLkotlin/time/DurationUnit;)I",
        "inWholeDays",
        "getInWholeDays-impl",
        "inWholeHours",
        "getInWholeHours-impl",
        "inWholeMinutes",
        "getInWholeMinutes-impl",
        "inWholeSeconds",
        "getInWholeSeconds-impl",
        "inWholeMilliseconds",
        "getInWholeMilliseconds-impl",
        "inWholeMicroseconds",
        "getInWholeMicroseconds-impl",
        "inWholeNanoseconds",
        "getInWholeNanoseconds-impl",
        "toString",
        "",
        "toString-impl",
        "(J)Ljava/lang/String;",
        "appendFractional",
        "",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "whole",
        "fractional",
        "fractionalSize",
        "isoZeroes",
        "appendFractional-impl",
        "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V",
        "decimals",
        "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;",
        "toIsoString",
        "toIsoString-impl",
        "equals",
        "",
        "hashCode",
        "Companion",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;

.field private static final INFINITE:J

.field private static final NEG_INFINITE:J

.field private static final ZERO:J


# instance fields
.field private final rawValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/Duration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 56
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->ZERO:J

    .line 59
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:J

    .line 60
    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0
    .param p1, "rawValue"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Duration;->rawValue:J

    return-void
.end method

.method public static final synthetic access$getINFINITE$cp()J
    .locals 2

    .line 32
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    return-wide v0
.end method

.method public static final synthetic access$getNEG_INFINITE$cp()J
    .locals 2

    .line 32
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-wide v0
.end method

.method public static final synthetic access$getZERO$cp()J
    .locals 2

    .line 32
    sget-wide v0, Lkotlin/time/Duration;->ZERO:J

    return-wide v0
.end method

.method private static final addValuesMixedRanges-UwyO8pc(JJJ)J
    .locals 8
    .param p0, "arg0"    # J
    .param p2, "thisMillis"    # J
    .param p4, "otherNanos"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "thisMillis",
            "otherNanos"
        }
    .end annotation

    .line 312
    invoke-static {p4, p5}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v0

    .line 313
    .local v0, "otherMillis":J
    add-long v2, p2, v0

    .line 314
    .local v2, "resultMillis":J
    const-wide v4, -0x431bde82d7aL

    const/4 v6, 0x0

    cmp-long v7, v4, v2

    if-gtz v7, :cond_0

    const-wide v4, 0x431bde82d7bL

    cmp-long v7, v2, v4

    if-gez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    if-eqz v6, :cond_1

    .line 315
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v4

    sub-long v4, p4, v4

    .line 316
    .local v4, "otherNanoRemainder":J
    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v4

    .end local v4    # "otherNanoRemainder":J
    goto :goto_0

    .line 318
    :cond_1
    const-wide v4, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v6, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v4

    .line 314
    :goto_0
    return-wide v4
.end method

.method private static final appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 12
    .param p0, "arg0"    # J
    .param p2, "$this$appendFractional"    # Ljava/lang/StringBuilder;
    .param p3, "whole"    # I
    .param p4, "fractional"    # I
    .param p5, "fractionalSize"    # I
    .param p6, "unit"    # Ljava/lang/String;
    .param p7, "isoZeroes"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x8000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "$this$appendFractional",
            "whole",
            "fractional",
            "fractionalSize",
            "unit",
            "isoZeroes"
        }
    .end annotation

    .line 766
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    if-eqz p4, :cond_5

    .line 768
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    move/from16 v2, p5

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "fracString":Ljava/lang/String;
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "$this$indexOfLast$iv":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1075
    .local v4, "$i$f$indexOfLast":I
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, -0x1

    add-int/2addr v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ltz v5, :cond_3

    :cond_0
    move v9, v5

    .local v9, "index$iv":I
    add-int/2addr v5, v6

    .line 1076
    invoke-interface {v3, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .local v10, "it":C
    const/4 v11, 0x0

    .line 770
    .local v11, "$i$a$-indexOfLast-Duration$appendFractional$nonZeroDigits$1":I
    if-eq v10, v1, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 1076
    .end local v10    # "it":C
    .end local v11    # "$i$a$-indexOfLast-Duration$appendFractional$nonZeroDigits$1":I
    :goto_0
    if-eqz v10, :cond_2

    .line 1077
    move v6, v9

    goto :goto_1

    .line 1075
    :cond_2
    if-gez v5, :cond_0

    .line 1080
    .end local v9    # "index$iv":I
    :cond_3
    nop

    .line 770
    .end local v3    # "$this$indexOfLast$iv":Ljava/lang/CharSequence;
    .end local v4    # "$i$f$indexOfLast":I
    :goto_1
    add-int/2addr v6, v7

    .line 771
    .local v6, "nonZeroDigits":I
    nop

    .line 772
    const-string v1, "append(...)"

    const/4 v3, 0x3

    if-nez p7, :cond_4

    if-ge v6, v3, :cond_4

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p2, v3, v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 773
    :cond_4
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    add-int/lit8 v5, v6, 0x2

    div-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {p2, v4, v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v0    # "fracString":Ljava/lang/String;
    .end local v6    # "nonZeroDigits":I
    :goto_2
    goto :goto_3

    .line 767
    :cond_5
    move/from16 v2, p5

    .line 776
    :goto_3
    move-object/from16 v0, p6

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    return-void
.end method

.method public static final synthetic box-impl(J)Lkotlin/time/Duration;
    .locals 1

    new-instance v0, Lkotlin/time/Duration;

    invoke-direct {v0, p0, p1}, Lkotlin/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static compareTo-LRDsOJo(JJ)I
    .locals 5
    .param p0, "arg0"    # J
    .param p2, "other"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "other"
        }
    .end annotation

    .line 475
    xor-long v0, p0, p2

    .line 476
    .local v0, "compareBits":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    long-to-int v2, v0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    const/4 v2, 0x0

    .line 1073
    .local v2, "$i$f$getUnitDiscriminator-impl":I
    long-to-int v3, p0

    and-int/lit8 v2, v3, 0x1

    .line 479
    .end local v2    # "$i$f$getUnitDiscriminator-impl":I
    const/4 v3, 0x0

    .line 1073
    .local v3, "$i$f$getUnitDiscriminator-impl":I
    long-to-int v4, p2

    and-int/lit8 v3, v4, 0x1

    .line 479
    .end local v3    # "$i$f$getUnitDiscriminator-impl":I
    sub-int/2addr v2, v3

    .line 480
    .local v2, "r":I
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v3

    if-eqz v3, :cond_1

    neg-int v3, v2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    return v3

    .line 477
    .end local v2    # "r":I
    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v2

    return v2
.end method

.method public static constructor-impl(J)J
    .locals 7
    .param p0, "rawValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawValue"
        }
    .end annotation

    .line 44
    invoke-static {}, Lkotlin/time/DurationJvmKt;->getDurationAssertionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 46
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v3

    const-wide v5, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v0, v5, v3

    if-gtz v0, :cond_0

    const-wide v5, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ns is out of nanoseconds range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 48
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v3

    const-wide v5, -0x3fffffffffffffffL    # -2.0000000000000004

    cmp-long v0, v5, v3

    if-gtz v0, :cond_3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 49
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v3

    const-wide v5, -0x431bde82d7aL

    cmp-long v0, v5, v3

    if-gtz v0, :cond_4

    const-wide v5, 0x431bde82d7bL

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms is denormalized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 48
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms is out of milliseconds range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 49
    :cond_7
    :goto_3
    return-wide p0
.end method

.method public static final div-LRDsOJo(JJ)D
    .locals 5
    .param p0, "arg0"    # J
    .param p2, "other"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "other"
        }
    .end annotation

    .line 444
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Lkotlin/time/DurationUnit;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Lkotlin/time/DurationUnit;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lkotlin/time/DurationUnit;

    .line 445
    .local v0, "coarserUnit":Lkotlin/time/DurationUnit;
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v1

    invoke-static {p2, p3, v0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static final div-UwyO8pc(JD)J
    .locals 6
    .param p0, "arg0"    # J
    .param p2, "scale"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "scale"
        }
    .end annotation

    .line 432
    invoke-static {p2, p3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    .line 433
    .local v0, "intScale":I
    int-to-double v1, v0

    cmpg-double v3, v1, p2

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 434
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->div-UwyO8pc(JI)J

    move-result-wide v1

    return-wide v1

    .line 437
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Lkotlin/time/DurationUnit;

    move-result-object v1

    .line 438
    .local v1, "unit":Lkotlin/time/DurationUnit;
    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v2

    div-double/2addr v2, p2

    .line 439
    .local v2, "result":D
    invoke-static {v2, v3, v1}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static final div-UwyO8pc(JI)J
    .locals 6
    .param p0, "arg0"    # J
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "scale"
        }
    .end annotation

    .line 402
    if-nez p2, :cond_2

    .line 403
    nop

    .line 404
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isPositive-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_0

    .line 405
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 403
    :goto_0
    return-wide v0

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dividing zero duration by zero yields an undefined result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    int-to-long v2, p2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v0

    return-wide v0

    .line 412
    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 413
    invoke-static {p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide v0

    return-wide v0

    .line 415
    :cond_4
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    int-to-long v2, p2

    div-long/2addr v0, v2

    .line 417
    .local v0, "result":J
    const-wide v2, -0x431bde82d7aL

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-gtz v5, :cond_5

    const-wide v2, 0x431bde82d7bL

    cmp-long v5, v0, v2

    if-gez v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    if-eqz v4, :cond_6

    .line 418
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    int-to-long v4, p2

    mul-long v4, v4, v0

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v2

    int-to-long v4, p2

    div-long/2addr v2, v4

    .line 419
    .local v2, "rem":J
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v4

    return-wide v4

    .line 421
    .end local v2    # "rem":J
    :cond_6
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "other"
        }
    .end annotation

    instance-of v0, p2, Lkotlin/time/Duration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v2

    cmp-long v0, p0, v2

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p1",
            "p2"
        }
    .end annotation

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final getAbsoluteValue-UwyO8pc(J)J
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 472
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method public static synthetic getHoursComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getHoursComponent-impl(J)I
    .locals 4
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 554
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    move-result-wide v0

    const/16 v2, 0x18

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public static final getInWholeDays-impl(J)J
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 629
    sget-object v0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getInWholeHours-impl(J)J
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 637
    sget-object v0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getInWholeMicroseconds-impl(J)J
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 675
    sget-object v0, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getInWholeMilliseconds-impl(J)J
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 662
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final getInWholeMinutes-impl(J)J
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 645
    sget-object v0, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getInWholeNanoseconds-impl(J)J
    .locals 5
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 688
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    .line 689
    .local v0, "value":J
    nop

    .line 690
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 691
    :cond_0
    const-wide v2, 0x8637bd05af6L

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    .line 692
    :cond_1
    const-wide v2, -0x8637bd05af6L

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0

    .line 693
    :cond_2
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v2

    .line 689
    :goto_0
    return-wide v2
.end method

.method public static final getInWholeSeconds-impl(J)J
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 653
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getMinutesComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getMinutesComponent-impl(J)I
    .locals 4
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 558
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMinutes-impl(J)J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public static synthetic getNanosecondsComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getNanosecondsComponent-impl(J)I
    .locals 4
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 566
    nop

    .line 567
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 568
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 569
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 570
    :goto_0
    return v0
.end method

.method public static synthetic getSecondsComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getSecondsComponent-impl(J)I
    .locals 4
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 562
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method private static final getStorageUnit-impl(J)Lkotlin/time/DurationUnit;
    .locals 1
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    :goto_0
    return-object v0
.end method

.method private static final getUnitDiscriminator-impl(J)I
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$getUnitDiscriminator-impl":I
    long-to-int v1, p0

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static final getValue-impl(J)J
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 37
    const/4 v0, 0x1

    shr-long v0, p0, v0

    return-wide v0
.end method

.method public static hashCode-impl(J)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    return v0
.end method

.method public static final isFinite-impl(J)Z
    .locals 1
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 469
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static final isInMillis-impl(J)Z
    .locals 3
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    .line 1070
    .local v0, "$i$f$getUnitDiscriminator-impl":I
    long-to-int v1, p0

    const/4 v2, 0x1

    and-int/lit8 v0, v1, 0x1

    .line 40
    .end local v0    # "$i$f$getUnitDiscriminator-impl":I
    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static final isInNanos-impl(J)Z
    .locals 3
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    .line 1069
    .local v0, "$i$f$getUnitDiscriminator-impl":I
    long-to-int v1, p0

    const/4 v2, 0x1

    and-int/lit8 v0, v1, 0x1

    .line 39
    .end local v0    # "$i$f$getUnitDiscriminator-impl":I
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static final isInfinite-impl(J)Z
    .locals 3
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 466
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final isNegative-impl(J)Z
    .locals 3
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 460
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isPositive-impl(J)Z
    .locals 3
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 463
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final minus-LRDsOJo(JJ)J
    .locals 2
    .param p0, "arg0"    # J
    .param p2, "other"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "other"
        }
    .end annotation

    .line 328
    invoke-static {p2, p3}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final plus-LRDsOJo(JJ)J
    .locals 7
    .param p0, "arg0"    # J
    .param p2, "other"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "other"
        }
    .end annotation

    .line 284
    nop

    .line 285
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    move-result v0

    if-nez v0, :cond_1

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    :goto_0
    return-wide p0

    .line 291
    :cond_2
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide p2

    .line 294
    :cond_3
    nop

    .line 295
    const/4 v0, 0x0

    .line 1072
    .local v0, "$i$f$getUnitDiscriminator-impl":I
    long-to-int v1, p0

    and-int/lit8 v0, v1, 0x1

    .line 295
    .end local v0    # "$i$f$getUnitDiscriminator-impl":I
    const/4 v1, 0x0

    .line 1072
    .local v1, "$i$f$getUnitDiscriminator-impl":I
    long-to-int v2, p2

    and-int/lit8 v1, v2, 0x1

    .line 295
    .end local v1    # "$i$f$getUnitDiscriminator-impl":I
    if-ne v0, v1, :cond_5

    .line 296
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 297
    .local v0, "result":J
    nop

    .line 298
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 299
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    move-result-wide v2

    move-wide v0, p0

    goto :goto_1

    .line 301
    :cond_4
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillisNormalized(J)J

    move-result-wide v2

    move-wide v0, p0

    .end local v0    # "result":J
    goto :goto_1

    .line 304
    :cond_5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v3

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v5

    move-wide v1, p0

    .end local p0    # "arg0":J
    .local v1, "arg0":J
    invoke-static/range {v1 .. v6}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJJ)J

    move-result-wide p0

    move-wide v0, v1

    move-wide v2, p0

    .end local v1    # "arg0":J
    .local v0, "arg0":J
    goto :goto_1

    .line 307
    .end local v0    # "arg0":J
    .restart local p0    # "arg0":J
    :cond_6
    move-wide v0, p0

    .end local p0    # "arg0":J
    .restart local v0    # "arg0":J
    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJJ)J

    move-result-wide v2

    .line 294
    :goto_1
    return-wide v2
.end method

.method public static final times-UwyO8pc(JD)J
    .locals 6
    .param p0, "arg0"    # J
    .param p2, "scale"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "scale"
        }
    .end annotation

    .line 385
    invoke-static {p2, p3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    .line 386
    .local v0, "intScale":I
    int-to-double v1, v0

    cmpg-double v3, v1, p2

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 387
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide v1

    return-wide v1

    .line 390
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Lkotlin/time/DurationUnit;

    move-result-object v1

    .line 391
    .local v1, "unit":Lkotlin/time/DurationUnit;
    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v2

    mul-double v2, v2, p2

    .line 392
    .local v2, "result":D
    invoke-static {v2, v3, v1}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static final times-UwyO8pc(JI)J
    .locals 18
    .param p0, "arg0"    # J
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "scale"
        }
    .end annotation

    .line 337
    move/from16 v0, p2

    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    nop

    .line 339
    if-eqz v0, :cond_1

    .line 340
    if-lez v0, :cond_0

    move-wide/from16 v1, p0

    goto :goto_0

    .line 341
    :cond_0
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v1

    .line 338
    :goto_0
    return-wide v1

    .line 339
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiplying infinite duration by zero yields an undefined result."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_2
    if-nez v0, :cond_3

    sget-wide v1, Lkotlin/time/Duration;->ZERO:J

    return-wide v1

    .line 346
    :cond_3
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v1

    .line 347
    .local v1, "value":J
    int-to-long v3, v0

    mul-long v3, v3, v1

    .line 348
    .local v3, "result":J
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 349
    const-wide/32 v10, -0x7fffffff

    const/4 v5, 0x0

    cmp-long v12, v10, v1

    if-gtz v12, :cond_4

    const-wide v10, 0x80000000L

    cmp-long v12, v1, v10

    if-gez v12, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v5, :cond_5

    .line 351
    invoke-static {v3, v4}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v5

    move-wide/from16 v16, v1

    goto/16 :goto_1

    .line 353
    :cond_5
    int-to-long v10, v0

    div-long v10, v3, v10

    cmp-long v5, v10, v1

    if-nez v5, :cond_6

    .line 354
    invoke-static {v3, v4}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    move-result-wide v5

    move-wide/from16 v16, v1

    goto/16 :goto_1

    .line 356
    :cond_6
    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v10

    .line 357
    .local v10, "millis":J
    invoke-static {v10, v11}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v12

    sub-long v12, v1, v12

    .line 358
    .local v12, "remNanos":J
    int-to-long v14, v0

    mul-long v14, v14, v10

    .line 359
    .local v14, "resultMillis":J
    int-to-long v6, v0

    mul-long v6, v6, v12

    invoke-static {v6, v7}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v5

    add-long/2addr v5, v14

    .line 360
    .local v5, "totalMillis":J
    int-to-long v8, v0

    div-long v7, v14, v8

    cmp-long v9, v7, v10

    if-nez v9, :cond_7

    xor-long v7, v5, v14

    const-wide/16 v16, 0x0

    cmp-long v9, v7, v16

    if-ltz v9, :cond_7

    .line 361
    new-instance v7, Lkotlin/ranges/LongRange;

    move-wide/from16 v16, v1

    const-wide v1, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    .end local v1    # "value":J
    .local v16, "value":J
    invoke-direct {v7, v1, v2, v8, v9}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    check-cast v7, Lkotlin/ranges/ClosedRange;

    invoke-static {v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_1

    .line 360
    .end local v16    # "value":J
    .restart local v1    # "value":J
    :cond_7
    move-wide/from16 v16, v1

    .line 363
    .end local v1    # "value":J
    .restart local v16    # "value":J
    invoke-static/range {v16 .. v17}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v1

    invoke-static {v0}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v2

    mul-int v1, v1, v2

    if-lez v1, :cond_8

    sget-wide v1, Lkotlin/time/Duration;->INFINITE:J

    move-wide v5, v1

    goto :goto_1

    :cond_8
    sget-wide v5, Lkotlin/time/Duration;->NEG_INFINITE:J

    .end local v5    # "totalMillis":J
    .end local v10    # "millis":J
    .end local v12    # "remNanos":J
    .end local v14    # "resultMillis":J
    goto :goto_1

    .line 368
    .end local v16    # "value":J
    .restart local v1    # "value":J
    :cond_9
    move-wide/from16 v16, v1

    .end local v1    # "value":J
    .restart local v16    # "value":J
    int-to-long v1, v0

    div-long v1, v3, v1

    cmp-long v5, v1, v16

    if-nez v5, :cond_a

    .line 369
    new-instance v1, Lkotlin/ranges/LongRange;

    const-wide v5, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-direct {v1, v5, v6, v8, v9}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    check-cast v1, Lkotlin/ranges/ClosedRange;

    invoke-static {v3, v4, v1}, Lkotlin/ranges/RangesKt;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v5

    goto :goto_1

    .line 371
    :cond_a
    invoke-static/range {v16 .. v17}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v1

    invoke-static {v0}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v2

    mul-int v1, v1, v2

    if-lez v1, :cond_b

    sget-wide v5, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_1

    :cond_b
    sget-wide v5, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 348
    :goto_1
    return-wide v5
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .param p0, "arg0"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 549
    .local v0, "$i$f$toComponents-impl":I
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 4
    .param p0, "arg0"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 534
    .local v0, "$i$f$toComponents-impl":I
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMinutes-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;
    .locals 5
    .param p0, "arg0"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 518
    .local v0, "$i$f$toComponents-impl":I
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;
    .locals 9
    .param p0, "arg0"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 501
    .local v0, "$i$f$toComponents-impl":I
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeDays-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getHoursComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v3, p2

    .end local p2    # "action":Lkotlin/jvm/functions/Function5;
    .local v3, "action":Lkotlin/jvm/functions/Function5;
    invoke-interface/range {v3 .. v8}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    return-object p2
.end method

.method public static final toDouble-impl(JLkotlin/time/DurationUnit;)D
    .locals 3
    .param p0, "arg0"    # J
    .param p2, "unit"    # Lkotlin/time/DurationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "unit"
        }
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    nop

    .line 584
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 585
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 588
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Lkotlin/time/DurationUnit;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide v0

    .line 583
    :goto_0
    return-wide v0
.end method

.method public static final toInt-impl(JLkotlin/time/DurationUnit;)I
    .locals 7
    .param p0, "arg0"    # J
    .param p2, "unit"    # Lkotlin/time/DurationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "unit"
        }
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    const-wide/32 v5, 0x7fffffff

    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static final toIsoString-impl(J)Ljava/lang/String;
    .locals 22
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .local v3, "$this$toIsoString_impl_u24lambda_u245":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 817
    .local v9, "$i$a$-buildString-Duration$toIsoString$1":I
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 818
    :cond_0
    const-string v1, "PT"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    move-result-wide v10

    .local v10, "arg0$iv":J
    const/4 v12, 0x0

    .line 1082
    .local v12, "$i$f$toComponents-impl":I
    invoke-static {v10, v11}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    move-result-wide v1

    .local v1, "hours":J
    invoke-static {v10, v11}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v13

    .local v13, "minutes":I
    invoke-static {v10, v11}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v4

    .local v4, "seconds":I
    invoke-static {v10, v11}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v5

    .local v5, "nanoseconds":I
    move-wide v14, v1

    .end local v1    # "hours":J
    .local v14, "hours":J
    const/16 v16, 0x0

    .line 821
    .local v16, "$i$a$-toComponents-impl-Duration$toIsoString$1$1":I
    nop

    .line 820
    nop

    .line 822
    .restart local v1    # "hours":J
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 824
    const-wide v1, 0x9184e729fffL

    .line 826
    :cond_1
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/16 v17, 0x0

    cmp-long v18, v1, v6

    if-eqz v18, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    move/from16 v18, v6

    .line 827
    .local v18, "hasHours":Z
    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x1

    :goto_2
    move/from16 v19, v6

    .line 828
    .local v19, "hasSeconds":Z
    if-nez v13, :cond_6

    if-eqz v19, :cond_5

    if-eqz v18, :cond_5

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :cond_6
    :goto_3
    move/from16 v17, v8

    .line 829
    .local v17, "hasMinutes":Z
    if-eqz v18, :cond_7

    .line 830
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x48

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    :cond_7
    if-eqz v17, :cond_8

    .line 833
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x4d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    :cond_8
    if-nez v19, :cond_a

    if-nez v18, :cond_9

    if-nez v17, :cond_9

    goto :goto_4

    :cond_9
    move-wide/from16 v20, v1

    goto :goto_5

    .line 836
    :cond_a
    :goto_4
    const-string v7, "S"

    const/4 v8, 0x1

    const/16 v6, 0x9

    move-wide/from16 v20, v1

    move-wide/from16 v1, p0

    .end local v1    # "hours":J
    .local v20, "hours":J
    invoke-static/range {v1 .. v8}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    .line 838
    :goto_5
    nop

    .line 1082
    .end local v4    # "seconds":I
    .end local v5    # "nanoseconds":I
    .end local v13    # "minutes":I
    .end local v14    # "hours":J
    .end local v16    # "$i$a$-toComponents-impl-Duration$toIsoString$1$1":I
    .end local v17    # "hasMinutes":Z
    .end local v18    # "hasHours":Z
    .end local v19    # "hasSeconds":Z
    .end local v20    # "hours":J
    nop

    .line 839
    .end local v10    # "arg0$iv":J
    .end local v12    # "$i$f$toComponents-impl":I
    nop

    .line 816
    .end local v3    # "$this$toIsoString_impl_u24lambda_u245":Ljava/lang/StringBuilder;
    .end local v9    # "$i$a$-buildString-Duration$toIsoString$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    return-object v0
.end method

.method public static final toLong-impl(JLkotlin/time/DurationUnit;)J
    .locals 3
    .param p0, "arg0"    # J
    .param p2, "unit"    # Lkotlin/time/DurationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "unit"
        }
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    nop

    .line 604
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 605
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    .line 606
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Lkotlin/time/DurationUnit;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 603
    :goto_0
    return-wide v0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 27
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 720
    nop

    .line 721
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string v0, "0s"

    goto/16 :goto_7

    .line 722
    :cond_0
    sget-wide v2, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v4, p0, v2

    if-nez v4, :cond_1

    const-string v0, "Infinity"

    goto/16 :goto_7

    .line 723
    :cond_1
    sget-wide v2, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v4, p0, v2

    if-nez v4, :cond_2

    const-string v0, "-Infinity"

    goto/16 :goto_7

    .line 725
    :cond_2
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v2

    .line 726
    .local v2, "isNegative":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    .local v6, "$this$toString_impl_u24lambda_u241":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 727
    .local v12, "$i$a$-buildString-Duration$toString$1":I
    if-eqz v2, :cond_3

    const/16 v4, 0x2d

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    :cond_3
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    move-result-wide v13

    .local v13, "arg0$iv":J
    const/4 v15, 0x0

    .line 1074
    .local v15, "$i$f$toComponents-impl":I
    invoke-static {v13, v14}, Lkotlin/time/Duration;->getInWholeDays-impl(J)J

    move-result-wide v4

    .local v4, "days":J
    invoke-static {v13, v14}, Lkotlin/time/Duration;->getHoursComponent-impl(J)I

    move-result v7

    .local v7, "hours":I
    invoke-static {v13, v14}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v8

    .local v8, "minutes":I
    invoke-static {v13, v14}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v16

    .local v16, "seconds":I
    invoke-static {v13, v14}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v9

    .local v9, "nanoseconds":I
    const/16 v17, 0x0

    .line 729
    .local v17, "$i$a$-toComponents-impl-Duration$toString$1$1":I
    const/4 v10, 0x0

    cmp-long v18, v4, v0

    if-eqz v18, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 730
    .local v0, "hasDays":Z
    :goto_0
    if-eqz v7, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 731
    .local v1, "hasHours":Z
    :goto_1
    if-eqz v8, :cond_6

    const/16 v18, 0x1

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    .line 732
    .local v18, "hasMinutes":Z
    :goto_2
    if-nez v16, :cond_7

    if-eqz v9, :cond_8

    :cond_7
    const/4 v10, 0x1

    :cond_8
    move/from16 v19, v10

    .line 733
    .local v19, "hasSeconds":Z
    const/4 v10, 0x0

    .line 734
    .local v10, "components":I
    if-eqz v0, :cond_9

    .line 735
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v21, v0

    .end local v0    # "hasDays":Z
    .local v21, "hasDays":Z
    const/16 v0, 0x64

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 736
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 734
    .end local v21    # "hasDays":Z
    .restart local v0    # "hasDays":Z
    :cond_9
    move/from16 v21, v0

    .line 738
    .end local v0    # "hasDays":Z
    .restart local v21    # "hasDays":Z
    :goto_3
    const/16 v0, 0x20

    if-nez v1, :cond_a

    if-eqz v21, :cond_c

    if-nez v18, :cond_a

    if-eqz v19, :cond_c

    .line 739
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "components":I
    .local v11, "components":I
    if-lez v10, :cond_b

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 740
    :cond_b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v0, 0x68

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v11

    .line 742
    .end local v11    # "components":I
    .restart local v10    # "components":I
    :cond_c
    if-nez v18, :cond_d

    if-eqz v19, :cond_f

    if-nez v1, :cond_d

    if-eqz v21, :cond_f

    .line 743
    :cond_d
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "components":I
    .local v0, "components":I
    if-lez v10, :cond_e

    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 744
    :cond_e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x6d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v0

    .line 746
    .end local v0    # "components":I
    .restart local v10    # "components":I
    :cond_f
    if-eqz v19, :cond_15

    .line 747
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "components":I
    .restart local v0    # "components":I
    if-lez v10, :cond_10

    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 748
    :cond_10
    nop

    .line 749
    if-nez v16, :cond_14

    if-nez v21, :cond_14

    if-nez v1, :cond_14

    if-eqz v18, :cond_11

    move/from16 v25, v0

    move/from16 v26, v1

    move-wide/from16 v22, v4

    move/from16 v20, v7

    move/from16 v24, v8

    move v0, v9

    const/4 v1, 0x1

    goto/16 :goto_4

    .line 751
    :cond_11
    const v10, 0xf4240

    if-lt v9, v10, :cond_12

    .line 752
    move v11, v7

    .end local v7    # "hours":I
    .local v11, "hours":I
    div-int v7, v9, v10

    rem-int v10, v9, v10

    move/from16 v22, v8

    move v8, v10

    .end local v8    # "minutes":I
    .local v22, "minutes":I
    const-string v10, "ms"

    move/from16 v23, v11

    .end local v11    # "hours":I
    .local v23, "hours":I
    const/4 v11, 0x0

    move/from16 v24, v9

    .end local v9    # "nanoseconds":I
    .local v24, "nanoseconds":I
    const/4 v9, 0x6

    move/from16 v25, v0

    move/from16 v26, v1

    move/from16 v20, v23

    move/from16 v0, v24

    const/4 v1, 0x1

    move/from16 v24, v22

    move-wide/from16 v22, v4

    move-wide/from16 v4, p0

    .end local v1    # "hasHours":Z
    .end local v4    # "days":J
    .end local v23    # "hours":I
    .local v0, "nanoseconds":I
    .local v20, "hours":I
    .local v22, "days":J
    .local v24, "minutes":I
    .local v25, "components":I
    .local v26, "hasHours":Z
    invoke-static/range {v4 .. v11}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    move/from16 v7, v16

    goto :goto_5

    .line 753
    .end local v20    # "hours":I
    .end local v22    # "days":J
    .end local v24    # "minutes":I
    .end local v25    # "components":I
    .end local v26    # "hasHours":Z
    .local v0, "components":I
    .restart local v1    # "hasHours":Z
    .restart local v4    # "days":J
    .restart local v7    # "hours":I
    .restart local v8    # "minutes":I
    .restart local v9    # "nanoseconds":I
    :cond_12
    move/from16 v25, v0

    move/from16 v26, v1

    move-wide/from16 v22, v4

    move/from16 v20, v7

    move/from16 v24, v8

    move v0, v9

    const/4 v1, 0x1

    .end local v1    # "hasHours":Z
    .end local v4    # "days":J
    .end local v7    # "hours":I
    .end local v8    # "minutes":I
    .end local v9    # "nanoseconds":I
    .local v0, "nanoseconds":I
    .restart local v20    # "hours":I
    .restart local v22    # "days":J
    .restart local v24    # "minutes":I
    .restart local v25    # "components":I
    .restart local v26    # "hasHours":Z
    const/16 v4, 0x3e8

    if-lt v0, v4, :cond_13

    .line 754
    div-int/lit16 v7, v0, 0x3e8

    rem-int/lit16 v8, v0, 0x3e8

    const-string/jumbo v10, "us"

    const/4 v11, 0x0

    const/4 v9, 0x3

    move-wide/from16 v4, p0

    invoke-static/range {v4 .. v11}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    move/from16 v7, v16

    goto :goto_5

    .line 756
    :cond_13
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ns"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v16

    goto :goto_5

    .line 749
    .end local v20    # "hours":I
    .end local v22    # "days":J
    .end local v24    # "minutes":I
    .end local v25    # "components":I
    .end local v26    # "hasHours":Z
    .local v0, "components":I
    .restart local v1    # "hasHours":Z
    .restart local v4    # "days":J
    .restart local v7    # "hours":I
    .restart local v8    # "minutes":I
    .restart local v9    # "nanoseconds":I
    :cond_14
    move/from16 v25, v0

    move/from16 v26, v1

    move-wide/from16 v22, v4

    move/from16 v20, v7

    move/from16 v24, v8

    move v0, v9

    const/4 v1, 0x1

    .line 750
    .end local v1    # "hasHours":Z
    .end local v4    # "days":J
    .end local v7    # "hours":I
    .end local v8    # "minutes":I
    .end local v9    # "nanoseconds":I
    .local v0, "nanoseconds":I
    .restart local v20    # "hours":I
    .restart local v22    # "days":J
    .restart local v24    # "minutes":I
    .restart local v25    # "components":I
    .restart local v26    # "hasHours":Z
    :goto_4
    const-string v10, "s"

    const/4 v11, 0x0

    const/16 v9, 0x9

    move-wide/from16 v4, p0

    move v8, v0

    move/from16 v7, v16

    .end local v0    # "nanoseconds":I
    .end local v16    # "seconds":I
    .local v7, "seconds":I
    .local v8, "nanoseconds":I
    invoke-static/range {v4 .. v11}, Lkotlin/time/Duration;->appendFractional-impl(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    .line 759
    .end local v8    # "nanoseconds":I
    .restart local v0    # "nanoseconds":I
    :goto_5
    move/from16 v10, v25

    goto :goto_6

    .line 746
    .end local v0    # "nanoseconds":I
    .end local v20    # "hours":I
    .end local v22    # "days":J
    .end local v24    # "minutes":I
    .end local v25    # "components":I
    .end local v26    # "hasHours":Z
    .restart local v1    # "hasHours":Z
    .restart local v4    # "days":J
    .local v7, "hours":I
    .local v8, "minutes":I
    .restart local v9    # "nanoseconds":I
    .restart local v10    # "components":I
    .restart local v16    # "seconds":I
    :cond_15
    move/from16 v26, v1

    move-wide/from16 v22, v4

    move/from16 v20, v7

    move/from16 v24, v8

    move v0, v9

    move/from16 v7, v16

    const/4 v1, 0x1

    .line 759
    .end local v1    # "hasHours":Z
    .end local v4    # "days":J
    .end local v8    # "minutes":I
    .end local v9    # "nanoseconds":I
    .end local v16    # "seconds":I
    .restart local v0    # "nanoseconds":I
    .local v7, "seconds":I
    .restart local v20    # "hours":I
    .restart local v22    # "days":J
    .restart local v24    # "minutes":I
    .restart local v26    # "hasHours":Z
    :goto_6
    if-eqz v2, :cond_16

    if-le v10, v1, :cond_16

    const/16 v4, 0x28

    invoke-virtual {v6, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    :cond_16
    nop

    .line 1074
    .end local v0    # "nanoseconds":I
    .end local v7    # "seconds":I
    .end local v10    # "components":I
    .end local v17    # "$i$a$-toComponents-impl-Duration$toString$1$1":I
    .end local v18    # "hasMinutes":Z
    .end local v19    # "hasSeconds":Z
    .end local v20    # "hours":I
    .end local v21    # "hasDays":Z
    .end local v22    # "days":J
    .end local v24    # "minutes":I
    .end local v26    # "hasHours":Z
    nop

    .line 761
    .end local v13    # "arg0$iv":J
    .end local v15    # "$i$f$toComponents-impl":I
    nop

    .line 726
    .end local v6    # "$this$toString_impl_u24lambda_u241":Ljava/lang/StringBuilder;
    .end local v12    # "$i$a$-buildString-Duration$toString$1":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    .end local v2    # "isNegative":Z
    :goto_7
    return-object v0
.end method

.method public static final toString-impl(JLkotlin/time/DurationUnit;I)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # J
    .param p2, "unit"    # Lkotlin/time/DurationUnit;
    .param p3, "decimals"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "unit",
            "decimals"
        }
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 797
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide v0

    .line 798
    .local v0, "number":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 799
    :cond_1
    const/16 v2, 0xc

    invoke-static {p3, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationJvmKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lkotlin/time/DurationUnitKt;->shortName(Lkotlin/time/DurationUnit;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1081
    .end local v0    # "number":D
    :cond_2
    const/4 v0, 0x0

    .line 796
    .local v0, "$i$a$-require-Duration$toString$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decimals must be not negative, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Duration$toString$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic toString-impl$default(JLkotlin/time/DurationUnit;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 795
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->toString-impl(JLkotlin/time/DurationUnit;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final truncateTo-UwyO8pc$kotlin_stdlib(JLkotlin/time/DurationUnit;)J
    .locals 7
    .param p0, "arg0"    # J
    .param p2, "unit"    # Lkotlin/time/DurationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0
        }
        names = {
            "arg0",
            "unit"
        }
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Lkotlin/time/DurationUnit;

    move-result-object v0

    .line 453
    .local v0, "storageUnit":Lkotlin/time/DurationUnit;
    move-object v1, v0

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {p2, v1}, Lkotlin/time/DurationUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    const-wide/16 v1, 0x1

    invoke-static {v1, v2, p2, v0}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    .line 455
    .local v1, "scale":J
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v5

    rem-long/2addr v5, v1

    sub-long/2addr v3, v5

    .line 456
    .local v3, "result":J
    invoke-static {v3, v4, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    return-wide v5

    .line 453
    .end local v1    # "scale":J
    .end local v3    # "result":J
    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static final unaryMinus-UwyO8pc(J)J
    .locals 4
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 275
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    neg-long v0, v0

    const/4 v2, 0x0

    .line 1071
    .local v2, "$i$f$getUnitDiscriminator-impl":I
    long-to-int v3, p0

    and-int/lit8 v2, v3, 0x1

    .line 275
    .end local v2    # "$i$f$getUnitDiscriminator-impl":I
    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->access$durationOf(JI)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 32
    move-object v0, p1

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(J)I

    move-result v0

    return v0
.end method

.method public compareTo-LRDsOJo(J)I
    .locals 2
    .param p1, "other"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 474
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    .line 481
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1, p1}, Lkotlin/time/Duration;->equals-impl(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 720
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    .line 763
    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    return-wide v0
.end method

.class public Lcom/google/android/setupcompat/internal/ClockProvider;
.super Ljava/lang/Object;
.source "ClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;
    }
.end annotation


# static fields
.field private static final SYSTEM_TICKER:Lcom/google/android/setupcompat/internal/Ticker;

.field private static ticker:Lcom/google/android/setupcompat/internal/Ticker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->SYSTEM_TICKER:Lcom/google/android/setupcompat/internal/Ticker;

    .line 48
    sget-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->SYSTEM_TICKER:Lcom/google/android/setupcompat/internal/Ticker;

    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$setInstance$0(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)J
    .locals 2
    .param p0, "nanoSecondSupplier"    # Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;

    .line 40
    invoke-interface {p0}, Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$static$0()J
    .locals 2

    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static resetInstance()V
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->SYSTEM_TICKER:Lcom/google/android/setupcompat/internal/Ticker;

    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    .line 36
    return-void
.end method

.method public static setInstance(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nanoSecondSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/setupcompat/internal/ClockProvider$Supplier<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p0, "nanoSecondSupplier":Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;, "Lcom/google/android/setupcompat/internal/ClockProvider$Supplier<Ljava/lang/Long;>;"
    new-instance v0, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)V

    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    .line 41
    return-void
.end method

.method public static timeInMillis()J
    .locals 3

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->timeInNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static timeInNanos()J
    .locals 2

    .line 26
    sget-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    invoke-interface {v0}, Lcom/google/android/setupcompat/internal/Ticker;->read()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public read()J
    .locals 2

    .line 44
    sget-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    invoke-interface {v0}, Lcom/google/android/setupcompat/internal/Ticker;->read()J

    move-result-wide v0

    return-wide v0
.end method

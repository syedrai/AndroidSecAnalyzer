.class public final Lkotlinx/coroutines/CancellableContinuationImplKt;
.super Ljava/lang/Object;
.source "CancellableContinuationImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\u001a\u0019\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001H\u0082\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u0007\u001a\u00020\u0001*\u00020\u00018\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\"\u0019\u0010\n\u001a\u00020\u0001*\u00020\u00018\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\t\"\u0010\u0010\r\u001a\u00020\u000e8\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "UNDECIDED",
        "",
        "SUSPENDED",
        "RESUMED",
        "DECISION_SHIFT",
        "INDEX_MASK",
        "NO_INDEX",
        "decision",
        "getDecision",
        "(I)I",
        "index",
        "getIndex",
        "decisionAndIndex",
        "RESUME_TOKEN",
        "Lkotlinx/coroutines/internal/Symbol;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DECISION_SHIFT:I = 0x1d

.field private static final INDEX_MASK:I = 0x1fffffff

.field private static final NO_INDEX:I = 0x1fffffff

.field private static final RESUMED:I = 0x2

.field public static final RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

.field private static final SUSPENDED:I = 0x1

.field private static final UNDECIDED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method private static final decisionAndIndex(II)I
    .locals 2
    .param p0, "decision"    # I
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "decision",
            "index"
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    .local v0, "$i$f$decisionAndIndex":I
    shl-int/lit8 v1, p0, 0x1d

    add-int/2addr v1, p1

    return v1
.end method

.method private static final getDecision(I)I
    .locals 2
    .param p0, "$this$decision"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$decision"
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    .local v0, "$i$f$getDecision":I
    shr-int/lit8 v1, p0, 0x1d

    return v1
.end method

.method private static final getIndex(I)I
    .locals 2
    .param p0, "$this$index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$index"
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    .local v0, "$i$f$getIndex":I
    const v1, 0x1fffffff

    and-int/2addr v1, p0

    return v1
.end method

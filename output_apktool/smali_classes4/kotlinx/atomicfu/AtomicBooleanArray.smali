.class public final Lkotlinx/atomicfu/AtomicBooleanArray;
.super Ljava/lang/Object;
.source "AtomicFU.common.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0011\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0003H\u0087\u0002R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u001a\u0010\u0002\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/atomicfu/AtomicBooleanArray;",
        "",
        "size",
        "",
        "<init>",
        "(I)V",
        "array",
        "",
        "Lkotlinx/atomicfu/AtomicBoolean;",
        "[Lkotlinx/atomicfu/AtomicBoolean;",
        "getSize$annotations",
        "()V",
        "getSize",
        "()I",
        "get",
        "index",
        "third_party.kotlin.kotlinx_atomicfu_kotlinx_atomicfu-jvm"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final array:[Lkotlinx/atomicfu/AtomicBoolean;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-array v0, p1, [Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-static {v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lkotlinx/atomicfu/AtomicBooleanArray;->array:[Lkotlinx/atomicfu/AtomicBoolean;

    .line 545
    return-void
.end method

.method public static synthetic getSize$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final get(I)Lkotlinx/atomicfu/AtomicBoolean;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lkotlinx/atomicfu/AtomicBooleanArray;->array:[Lkotlinx/atomicfu/AtomicBoolean;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 550
    iget-object v0, p0, Lkotlinx/atomicfu/AtomicBooleanArray;->array:[Lkotlinx/atomicfu/AtomicBoolean;

    array-length v0, v0

    return v0
.end method

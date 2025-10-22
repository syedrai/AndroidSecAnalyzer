.class public abstract Landroid/support/v4/os/BufferFillPolicy;
.super Ljava/lang/Object;
.source "Profiling.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/BufferFillPolicy$Companion;,
        Landroid/support/v4/os/BufferFillPolicy$Discard;,
        Landroid/support/v4/os/BufferFillPolicy$RingBuffer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00082\u00020\u0001:\u0003\u0008\t\nB\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0002\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Landroid/support/v4/os/BufferFillPolicy;",
        "",
        "value",
        "",
        "<init>",
        "(I)V",
        "getValue$core_release",
        "()I",
        "Companion",
        "Discard",
        "RingBuffer",
        "Landroid/support/v4/os/BufferFillPolicy$Discard;",
        "Landroid/support/v4/os/BufferFillPolicy$RingBuffer;",
        "core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroid/support/v4/os/BufferFillPolicy$Companion;

.field public static final DISCARD:Landroid/support/v4/os/BufferFillPolicy;

.field public static final RING_BUFFER:Landroid/support/v4/os/BufferFillPolicy;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/os/BufferFillPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/os/BufferFillPolicy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroid/support/v4/os/BufferFillPolicy;->Companion:Landroid/support/v4/os/BufferFillPolicy$Companion;

    .line 55
    new-instance v0, Landroid/support/v4/os/BufferFillPolicy$Discard;

    invoke-direct {v0}, Landroid/support/v4/os/BufferFillPolicy$Discard;-><init>()V

    check-cast v0, Landroid/support/v4/os/BufferFillPolicy;

    sput-object v0, Landroid/support/v4/os/BufferFillPolicy;->DISCARD:Landroid/support/v4/os/BufferFillPolicy;

    .line 59
    new-instance v0, Landroid/support/v4/os/BufferFillPolicy$RingBuffer;

    invoke-direct {v0}, Landroid/support/v4/os/BufferFillPolicy$RingBuffer;-><init>()V

    check-cast v0, Landroid/support/v4/os/BufferFillPolicy;

    sput-object v0, Landroid/support/v4/os/BufferFillPolicy;->RING_BUFFER:Landroid/support/v4/os/BufferFillPolicy;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/os/BufferFillPolicy;->value:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/os/BufferFillPolicy;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getValue$core_release()I
    .locals 1

    .line 53
    iget v0, p0, Landroid/support/v4/os/BufferFillPolicy;->value:I

    return v0
.end method

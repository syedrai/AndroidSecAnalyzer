.class final Landroidx/window/core/FailedSpecification;
.super Landroidx/window/core/SpecificationComputer;
.source "SpecificationComputer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/core/FailedSpecification$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/window/core/SpecificationComputer<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpecificationComputer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecificationComputer.kt\nandroidx/window/core/FailedSpecification\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,170:1\n37#2,2:171\n*S KotlinDebug\n*F\n+ 1 SpecificationComputer.kt\nandroidx/window/core/FailedSpecification\n*L\n142#1:171,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B/\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ/\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001f0\u001e\u00a2\u0006\u0002\u0008 H\u0016J\u000f\u0010!\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u000fR\u0013\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/window/core/FailedSpecification;",
        "T",
        "",
        "Landroidx/window/core/SpecificationComputer;",
        "value",
        "tag",
        "",
        "message",
        "logger",
        "Landroidx/window/core/Logger;",
        "verificationMode",
        "Landroidx/window/core/VerificationMode;",
        "<init>",
        "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroidx/window/core/Logger;Landroidx/window/core/VerificationMode;)V",
        "getValue",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getTag",
        "()Ljava/lang/String;",
        "getMessage",
        "getLogger",
        "()Landroidx/window/core/Logger;",
        "getVerificationMode",
        "()Landroidx/window/core/VerificationMode;",
        "exception",
        "Landroidx/window/core/WindowStrictModeException;",
        "getException",
        "()Landroidx/window/core/WindowStrictModeException;",
        "require",
        "condition",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "compute",
        "window_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final exception:Landroidx/window/core/WindowStrictModeException;

.field private final logger:Landroidx/window/core/Logger;

.field private final message:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final verificationMode:Landroidx/window/core/VerificationMode;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroidx/window/core/Logger;Landroidx/window/core/VerificationMode;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "logger"    # Landroidx/window/core/Logger;
    .param p5, "verificationMode"    # Landroidx/window/core/VerificationMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/window/core/Logger;",
            "Landroidx/window/core/VerificationMode;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verificationMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Landroidx/window/core/SpecificationComputer;-><init>()V

    .line 133
    iput-object p1, p0, Landroidx/window/core/FailedSpecification;->value:Ljava/lang/Object;

    .line 134
    iput-object p2, p0, Landroidx/window/core/FailedSpecification;->tag:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Landroidx/window/core/FailedSpecification;->message:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Landroidx/window/core/FailedSpecification;->logger:Landroidx/window/core/Logger;

    .line 137
    iput-object p5, p0, Landroidx/window/core/FailedSpecification;->verificationMode:Landroidx/window/core/VerificationMode;

    .line 141
    new-instance v0, Landroidx/window/core/WindowStrictModeException;

    iget-object v1, p0, Landroidx/window/core/FailedSpecification;->value:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/window/core/FailedSpecification;->message:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroidx/window/core/FailedSpecification;->createMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/window/core/WindowStrictModeException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$exception_u24lambda_u240":Landroidx/window/core/WindowStrictModeException;
    const/4 v2, 0x0

    .line 142
    .local v2, "$i$a$-apply-FailedSpecification$exception$1":I
    invoke-virtual {v1}, Landroidx/window/core/WindowStrictModeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const-string v4, "getStackTrace(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt;->drop([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 171
    .local v4, "$i$f$toTypedArray":I
    move-object v5, v3

    .line 172
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/StackTraceElement;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 142
    invoke-virtual {v1, v3}, Landroidx/window/core/WindowStrictModeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 143
    nop

    .line 141
    .end local v1    # "$this$exception_u24lambda_u240":Landroidx/window/core/WindowStrictModeException;
    .end local v2    # "$i$a$-apply-FailedSpecification$exception$1":I
    iput-object v0, p0, Landroidx/window/core/FailedSpecification;->exception:Landroidx/window/core/WindowStrictModeException;

    .line 132
    return-void
.end method


# virtual methods
.method public compute()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->verificationMode:Landroidx/window/core/VerificationMode;

    sget-object v1, Landroidx/window/core/FailedSpecification$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/window/core/VerificationMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 156
    :pswitch_0
    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->logger:Landroidx/window/core/Logger;

    iget-object v1, p0, Landroidx/window/core/FailedSpecification;->tag:Ljava/lang/String;

    iget-object v2, p0, Landroidx/window/core/FailedSpecification;->value:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/window/core/FailedSpecification;->message:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroidx/window/core/FailedSpecification;->createMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/window/core/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    nop

    .line 150
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 151
    :pswitch_2
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->exception:Landroidx/window/core/WindowStrictModeException;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getException()Landroidx/window/core/WindowStrictModeException;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->exception:Landroidx/window/core/WindowStrictModeException;

    return-object v0
.end method

.method public final getLogger()Landroidx/window/core/Logger;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->logger:Landroidx/window/core/Logger;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final getVerificationMode()Landroidx/window/core/VerificationMode;
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/window/core/FailedSpecification;->verificationMode:Landroidx/window/core/VerificationMode;

    return-object v0
.end method

.method public require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "condition"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/window/core/SpecificationComputer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    move-object v0, p0

    check-cast v0, Landroidx/window/core/SpecificationComputer;

    return-object v0
.end method

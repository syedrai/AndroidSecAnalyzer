.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;
.super Ljava/lang/Object;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$default(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lj$/nio/file/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;

    invoke-direct {v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;-><init>()V

    sput-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 161
    move-object v0, p1

    check-cast v0, Lj$/nio/file/Path;

    move-object v1, p2

    check-cast v1, Lj$/nio/file/Path;

    move-object v2, p3

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;->invoke(Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/lang/Exception;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/lang/Exception;)Ljava/lang/Void;
    .locals 1
    .param p3, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "<unused var>",
            "<unused var>",
            "exception"
        }
    .end annotation

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    throw p3
.end method

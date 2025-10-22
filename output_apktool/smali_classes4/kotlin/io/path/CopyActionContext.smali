.class public interface abstract Lkotlin/io/path/CopyActionContext;
.super Ljava/lang/Object;
.source "CopyActionContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/io/path/CopyActionContext;",
        "",
        "j$/nio/file/Path",
        "target",
        "",
        "followLinks",
        "Lkotlin/io/path/CopyActionResult;",
        "copyToIgnoringExistingDirectory",
        "(Lj$/nio/file/Path;Lj$/nio/file/Path;Z)Lkotlin/io/path/CopyActionResult;",
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


# virtual methods
.method public abstract copyToIgnoringExistingDirectory(Lj$/nio/file/Path;Lj$/nio/file/Path;Z)Lkotlin/io/path/CopyActionResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$copyToIgnoringExistingDirectory",
            "target",
            "followLinks"
        }
    .end annotation
.end method

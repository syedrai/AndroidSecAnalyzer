.class Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;
.super Lkotlin/io/path/PathsKt__PathReadWriteKt;
.source "PathRecursiveFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathRecursiveFunctions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathRecursiveFunctions.kt\nkotlin/io/path/PathsKt__PathRecursiveFunctionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,530:1\n376#1,2:534\n384#1:536\n384#1:537\n378#1,4:538\n376#1,2:542\n384#1:544\n378#1,4:545\n384#1:549\n376#1,6:550\n376#1,2:556\n384#1:558\n378#1,4:559\n1#2:531\n1869#3,2:532\n*S KotlinDebug\n*F\n+ 1 PathRecursiveFunctions.kt\nkotlin/io/path/PathsKt__PathRecursiveFunctionsKt\n*L\n392#1:534,2\n407#1:536\n410#1:537\n392#1:538,4\n418#1:542,2\n419#1:544\n418#1:545,4\n430#1:549\n438#1:550,6\n461#1:556,2\n462#1:558\n461#1:559,4\n314#1:532,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0008\u0012\u001a~\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002Q\u0008\u0002\u0010\n\u001aK\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0001\u0012\u0017\u0012\u00150\u0006j\u0002`\u0007\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a\u00bb\u0001\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002Q\u0008\u0002\u0010\n\u001aK\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0001\u0012\u0017\u0012\u00150\u0006j\u0002`\u0007\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u00022\u0006\u0010\u000c\u001a\u00020\u000b2C\u0008\u0002\u0010\u0013\u001a=\u0012\u0004\u0012\u00020\u0010\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0001\u0012\u0004\u0012\u00020\u00110\u0002\u00a2\u0006\u0002\u0008\u0012H\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u0014\u001a\u0013\u0010\u0018\u001a\u00020\u0015*\u00020\u0011H\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a\u0013\u0010\u0018\u001a\u00020\u0015*\u00020\tH\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0019\u001a\u0013\u0010\u001b\u001a\u00020\u001a*\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001a\u001d\u0010 \u001a\u000c\u0012\u0008\u0012\u00060\u0006j\u0002`\u00070\u001d*\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a&\u0010\'\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020!2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001a0#H\u0082\u0008\u00a2\u0006\u0004\u0008%\u0010&\u001a&\u0010+\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010(2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0082\u0008\u00a2\u0006\u0004\u0008)\u0010*\u001a3\u00100\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\u00000,2\u0006\u0010\u0004\u001a\u00020\u00002\u0008\u0010-\u001a\u0004\u0018\u00010\u00002\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008.\u0010/\u001a)\u00103\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\u00000,2\u0006\u0010\u0004\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u00081\u00102\u001a5\u0010:\u001a\u00020\u000b*\u0008\u0012\u0004\u0012\u00020\u00000,2\u0006\u00104\u001a\u00020\u00002\u0012\u00107\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020605\"\u000206H\u0002\u00a2\u0006\u0004\u00088\u00109\u001a)\u0010>\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020\u00002\u0008\u0010-\u001a\u0004\u0018\u00010\u00002\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008<\u0010=\u001a\u001f\u0010B\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008@\u0010A\u001a\u0013\u0010C\u001a\u00020\u001a*\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008C\u0010\u001c\u001a\u001b\u0010F\u001a\u00020\u001a*\u00020\u00002\u0006\u0010-\u001a\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008D\u0010E\u00a8\u0006G"
    }
    d2 = {
        "j$/nio/file/Path",
        "target",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "source",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "exception",
        "Lkotlin/io/path/OnErrorResult;",
        "onError",
        "",
        "followLinks",
        "overwrite",
        "copyToRecursively",
        "(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZ)Lj$/nio/file/Path;",
        "Lkotlin/io/path/CopyActionContext;",
        "Lkotlin/io/path/CopyActionResult;",
        "Lkotlin/ExtensionFunctionType;",
        "copyAction",
        "(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Lj$/nio/file/Path;",
        "j$/nio/file/FileVisitResult",
        "toFileVisitResult$PathsKt__PathRecursiveFunctionsKt",
        "(Lkotlin/io/path/CopyActionResult;)Lj$/nio/file/FileVisitResult;",
        "toFileVisitResult",
        "(Lkotlin/io/path/OnErrorResult;)Lj$/nio/file/FileVisitResult;",
        "",
        "deleteRecursively",
        "(Lj$/nio/file/Path;)V",
        "",
        "deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt",
        "(Lj$/nio/file/Path;)Ljava/util/List;",
        "deleteRecursivelyImpl",
        "Lkotlin/io/path/ExceptionsCollector;",
        "collector",
        "Lkotlin/Function0;",
        "function",
        "collectIfThrows$PathsKt__PathRecursiveFunctionsKt",
        "(Lkotlin/io/path/ExceptionsCollector;Lkotlin/jvm/functions/Function0;)V",
        "collectIfThrows",
        "R",
        "tryIgnoreNoSuchFileException$PathsKt__PathRecursiveFunctionsKt",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "tryIgnoreNoSuchFileException",
        "j$/nio/file/SecureDirectoryStream",
        "parent",
        "handleEntry$PathsKt__PathRecursiveFunctionsKt",
        "(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V",
        "handleEntry",
        "enterDirectory$PathsKt__PathRecursiveFunctionsKt",
        "(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V",
        "enterDirectory",
        "entryName",
        "",
        "j$/nio/file/LinkOption",
        "options",
        "isDirectory$PathsKt__PathRecursiveFunctionsKt",
        "(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z",
        "isDirectory",
        "entry",
        "insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt",
        "(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V",
        "insecureHandleEntry",
        "path",
        "insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt",
        "(Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V",
        "insecureEnterDirectory",
        "checkFileName",
        "checkNotSameAs$PathsKt__PathRecursiveFunctionsKt",
        "(Lj$/nio/file/Path;Lj$/nio/file/Path;)V",
        "checkNotSameAs",
        "kotlin_stdlib"
    }
    k = 0x5
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x31
    xs = "kotlin/io/path/PathsKt"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3VYkoVP17knpGuiVw5BoXBQ_zc8(ZLkotlin/io/path/CopyActionContext;Lj$/nio/file/Path;Lj$/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$lambda$1$PathsKt__PathRecursiveFunctionsKt(ZLkotlin/io/path/CopyActionContext;Lj$/nio/file/Path;Lj$/nio/file/Path;)Lkotlin/io/path/CopyActionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Dn4FOAPbjNDFACiW2KdbJH8lJzc(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/io/IOException;)Lj$/nio/file/FileVisitResult;
    .locals 0

    invoke-static/range {p0 .. p6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$lambda$6$lambda$5$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/io/IOException;)Lj$/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QF8Uhuq7fTQtpHX-cuQgT1yM3No(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;Lkotlin/io/path/FileVisitorBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$lambda$6$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;Lkotlin/io/path/FileVisitorBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r0l1pONWwls6V3X1jucrTqZKxjo(ZLkotlin/io/path/CopyActionContext;Lj$/nio/file/Path;Lj$/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$lambda$0$PathsKt__PathRecursiveFunctionsKt(ZLkotlin/io/path/CopyActionContext;Lj$/nio/file/Path;Lj$/nio/file/Path;)Lkotlin/io/path/CopyActionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vrBef6cHhs3oA22HfQBDeNxsJGA(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;
    .locals 0

    invoke-static/range {p0 .. p7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$lambda$6$lambda$4$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/io/path/PathsKt__PathReadWriteKt;-><init>()V

    return-void
.end method

.method public static final synthetic access$copyToRecursively$copy(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;
    .locals 1
    .param p0, "stack"    # Ljava/util/ArrayList;
    .param p1, "$copyAction"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$this_copyToRecursively"    # Lj$/nio/file/Path;
    .param p3, "$target"    # Lj$/nio/file/Path;
    .param p4, "normalizedTarget"    # Lj$/nio/file/Path;
    .param p5, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p6, "source"    # Lj$/nio/file/Path;
    .param p7, "attributes"    # Lj$/nio/file/attribute/BasicFileAttributes;

    .line 1
    invoke-static/range {p0 .. p7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$copyToRecursively$error(Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/lang/Exception;)Lj$/nio/file/FileVisitResult;
    .locals 1
    .param p0, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p1, "$this_copyToRecursively"    # Lj$/nio/file/Path;
    .param p2, "$target"    # Lj$/nio/file/Path;
    .param p3, "normalizedTarget"    # Lj$/nio/file/Path;
    .param p4, "source"    # Lj$/nio/file/Path;
    .param p5, "exception"    # Ljava/lang/Exception;

    .line 1
    invoke-static/range {p0 .. p5}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/lang/Exception;)Lj$/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public static final checkFileName(Lj$/nio/file/Path;)V
    .locals 2
    .param p0, "$this$checkFileName"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$checkFileName"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-static {p0}, Lkotlin/io/path/PathsKt;->getName(Lj$/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v1, "..\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v1, "../"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v1, ".\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_4
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :sswitch_5
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    new-instance v1, Lkotlin/io/path/IllegalFileNameException;

    invoke-direct {v1, p0}, Lkotlin/io/path/IllegalFileNameException;-><init>(Lj$/nio/file/Path;)V

    throw v1

    .line 492
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_5
        0x5c0 -> :sswitch_4
        0x5c1 -> :sswitch_3
        0x5ee -> :sswitch_2
        0xb26f -> :sswitch_1
        0xb29c -> :sswitch_0
    .end sparse-switch
.end method

.method private static final checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lj$/nio/file/Path;)V
    .locals 2
    .param p0, "$this$checkNotSameAs"    # Lj$/nio/file/Path;
    .param p1, "parent"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$checkNotSameAs",
            "parent"
        }
    .end annotation

    .line 519
    invoke-static {p0}, Lj$/nio/file/Files;->isSymbolicLink(Lj$/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lj$/nio/file/Files;->isSameFile(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    new-instance v0, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_1
    :goto_0
    return-void
.end method

.method private static final collectIfThrows$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/ExceptionsCollector;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0, "collector"    # Lkotlin/io/path/ExceptionsCollector;
    .param p1, "function"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collector",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/io/path/ExceptionsCollector;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 376
    .local v0, "$i$f$collectIfThrows":I
    nop

    .line 377
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    .line 381
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final copyToRecursively(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Lj$/nio/file/Path;
    .locals 12
    .param p0, "$this$copyToRecursively"    # Lj$/nio/file/Path;
    .param p1, "target"    # Lj$/nio/file/Path;
    .param p2, "onError"    # Lkotlin/jvm/functions/Function3;
    .param p3, "followLinks"    # Z
    .param p4, "copyAction"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$copyToRecursively",
            "target",
            "onError",
            "followLinks",
            "copyAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lj$/nio/file/Path;",
            "-",
            "Lj$/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/io/path/CopyActionContext;",
            "-",
            "Lj$/nio/file/Path;",
            "-",
            "Lj$/nio/file/Path;",
            "+",
            "Lkotlin/io/path/CopyActionResult;",
            ">;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    move v7, p3

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onError"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "copyAction"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v1, Lkotlin/io/path/LinkFollowing;->INSTANCE:Lkotlin/io/path/LinkFollowing;

    invoke-virtual {v1, p3}, Lkotlin/io/path/LinkFollowing;->toLinkOptions(Z)[Lj$/nio/file/LinkOption;

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lj$/nio/file/LinkOption;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lj$/nio/file/LinkOption;

    invoke-static {p0, v1}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 170
    const/4 v1, 0x0

    new-array v3, v1, [Lj$/nio/file/LinkOption;

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lj$/nio/file/LinkOption;

    invoke-static {p0, v3}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v7, :cond_0

    invoke-static {p0}, Lj$/nio/file/Files;->isSymbolicLink(Lj$/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 176
    :cond_0
    new-array v3, v1, [Lj$/nio/file/LinkOption;

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lj$/nio/file/LinkOption;

    invoke-static {p1, v3}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {p1}, Lj$/nio/file/Files;->isSymbolicLink(Lj$/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 178
    .local v3, "targetExistsAndNotSymlink":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-static/range {p0 .. p1}, Lj$/nio/file/Files;->isSameFile(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 182
    :cond_2
    nop

    .line 183
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v8

    invoke-interface {p1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/FileSystem;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 184
    goto :goto_1

    .line 185
    :cond_3
    if-eqz v3, :cond_4

    .line 186
    new-array v5, v1, [Lj$/nio/file/LinkOption;

    invoke-interface {p1, v5}, Lj$/nio/file/Path;->toRealPath([Lj$/nio/file/LinkOption;)Lj$/nio/file/Path;

    move-result-object v5

    new-array v1, v1, [Lj$/nio/file/LinkOption;

    invoke-interface {p0, v1}, Lj$/nio/file/Path;->toRealPath([Lj$/nio/file/LinkOption;)Lj$/nio/file/Path;

    move-result-object v1

    invoke-interface {v5, v1}, Lj$/nio/file/Path;->startsWith(Lj$/nio/file/Path;)Z

    move-result v1

    goto :goto_1

    .line 188
    :cond_4
    invoke-interface {p1}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 531
    .local v8, "it":Lj$/nio/file/Path;
    const/4 v9, 0x0

    .line 188
    .local v9, "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$copyToRecursively$isSubdirectory$1":I
    new-array v10, v1, [Lj$/nio/file/LinkOption;

    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lj$/nio/file/LinkOption;

    invoke-static {v8, v10}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-array v10, v1, [Lj$/nio/file/LinkOption;

    invoke-interface {v8, v10}, Lj$/nio/file/Path;->toRealPath([Lj$/nio/file/LinkOption;)Lj$/nio/file/Path;

    move-result-object v10

    new-array v11, v1, [Lj$/nio/file/LinkOption;

    invoke-interface {p0, v11}, Lj$/nio/file/Path;->toRealPath([Lj$/nio/file/LinkOption;)Lj$/nio/file/Path;

    move-result-object v11

    invoke-interface {v10, v11}, Lj$/nio/file/Path;->startsWith(Lj$/nio/file/Path;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v1, 0x1

    .line 182
    .end local v8    # "it":Lj$/nio/file/Path;
    .end local v9    # "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$copyToRecursively$isSubdirectory$1":I
    :cond_5
    :goto_1
    nop

    .line 190
    .local v1, "isSubdirectory":Z
    if-nez v1, :cond_6

    goto :goto_2

    .line 191
    :cond_6
    new-instance v5, Ljava/nio/file/FileSystemException;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 194
    nop

    .line 191
    const-string v10, "Recursively copying a directory into its subdirectory is prohibited."

    invoke-direct {v5, v8, v9, v10}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 199
    .end local v1    # "isSubdirectory":Z
    .end local v3    # "targetExistsAndNotSymlink":Z
    :cond_7
    :goto_2
    invoke-interface {p1}, Lj$/nio/file/Path;->normalize()Lj$/nio/file/Path;

    move-result-object v5

    .line 218
    .local v5, "normalizedTarget":Lj$/nio/file/Path;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v1, "stack":Ljava/util/ArrayList;
    new-instance v3, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;

    move-object v4, p1

    move-object v6, p2

    move-object v0, v3

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    move-object v8, v1

    move-object v6, v5

    .end local v1    # "stack":Ljava/util/ArrayList;
    .end local v5    # "normalizedTarget":Lj$/nio/file/Path;
    .local v6, "normalizedTarget":Lj$/nio/file/Path;
    .local v8, "stack":Ljava/util/ArrayList;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/io/path/PathsKt;->visitFileTree$default(Lj$/nio/file/Path;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 252
    return-object p1

    .line 168
    .end local v6    # "normalizedTarget":Lj$/nio/file/Path;
    .end local v8    # "stack":Ljava/util/ArrayList;
    :cond_8
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The source file doesn\'t exist."

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static final copyToRecursively(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZ)Lj$/nio/file/Path;
    .locals 8
    .param p0, "$this$copyToRecursively"    # Lj$/nio/file/Path;
    .param p1, "target"    # Lj$/nio/file/Path;
    .param p2, "onError"    # Lkotlin/jvm/functions/Function3;
    .param p3, "followLinks"    # Z
    .param p4, "overwrite"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$copyToRecursively",
            "target",
            "onError",
            "followLinks",
            "overwrite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lj$/nio/file/Path;",
            "-",
            "Lj$/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;ZZ)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    if-eqz p4, :cond_0

    .line 81
    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {p0, p1, p2, p3, v0}, Lkotlin/io/path/PathsKt;->copyToRecursively(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Lj$/nio/file/Path;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    goto :goto_0

    .line 96
    :cond_0
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p0    # "$this$copyToRecursively":Lj$/nio/file/Path;
    .end local p1    # "target":Lj$/nio/file/Path;
    .end local p2    # "onError":Lkotlin/jvm/functions/Function3;
    .end local p3    # "followLinks":Z
    .local v1, "$this$copyToRecursively":Lj$/nio/file/Path;
    .local v2, "target":Lj$/nio/file/Path;
    .local v3, "onError":Lkotlin/jvm/functions/Function3;
    .local v4, "followLinks":Z
    invoke-static/range {v1 .. v7}, Lkotlin/io/path/PathsKt;->copyToRecursively$default(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lj$/nio/file/Path;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0
.end method

.method private static final copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;
    .locals 7
    .param p0, "stack"    # Ljava/util/ArrayList;
    .param p1, "$copyAction"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$this_copyToRecursively"    # Lj$/nio/file/Path;
    .param p3, "$target"    # Lj$/nio/file/Path;
    .param p4, "normalizedTarget"    # Lj$/nio/file/Path;
    .param p5, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p6, "source"    # Lj$/nio/file/Path;
    .param p7, "attributes"    # Lj$/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "stack",
            "$copyAction",
            "$this_copyToRecursively",
            "$target",
            "normalizedTarget",
            "$onError",
            "source",
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lj$/nio/file/Path;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/io/path/CopyActionContext;",
            "-",
            "Lj$/nio/file/Path;",
            "-",
            "Lj$/nio/file/Path;",
            "+",
            "Lkotlin/io/path/CopyActionResult;",
            ">;",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lj$/nio/file/Path;",
            "-",
            "Lj$/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/attribute/BasicFileAttributes;",
            ")",
            "Lj$/nio/file/FileVisitResult;"
        }
    .end annotation

    .line 222
    nop

    .line 223
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-static {p6}, Lkotlin/io/path/PathsKt;->checkFileName(Lj$/nio/file/Path;)V

    .line 226
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/Path;

    invoke-static {p6, v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lj$/nio/file/Path;)V

    .line 228
    :cond_0
    sget-object v0, Lkotlin/io/path/DefaultCopyActionContext;->INSTANCE:Lkotlin/io/path/DefaultCopyActionContext;

    invoke-static {p2, p3, p4, p6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v1

    invoke-interface {p1, v0, p6, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/io/path/CopyActionResult;

    invoke-static {v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/CopyActionResult;)Lj$/nio/file/FileVisitResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v1, p5

    move-object v5, p6

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 230
    .local v6, "exception":Ljava/lang/Exception;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v1, p5

    move-object v5, p6

    .end local p2    # "$this_copyToRecursively":Lj$/nio/file/Path;
    .end local p3    # "$target":Lj$/nio/file/Path;
    .end local p4    # "normalizedTarget":Lj$/nio/file/Path;
    .end local p5    # "$onError":Lkotlin/jvm/functions/Function3;
    .end local p6    # "source":Lj$/nio/file/Path;
    .local v1, "$onError":Lkotlin/jvm/functions/Function3;
    .local v2, "$this_copyToRecursively":Lj$/nio/file/Path;
    .local v3, "$target":Lj$/nio/file/Path;
    .local v4, "normalizedTarget":Lj$/nio/file/Path;
    .local v5, "source":Lj$/nio/file/Path;
    invoke-static/range {v1 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/lang/Exception;)Lj$/nio/file/FileVisitResult;

    move-result-object v0

    .line 222
    .end local v6    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static synthetic copyToRecursively$default(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lj$/nio/file/Path;
    .locals 0

    .line 157
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 161
    sget-object p2, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;

    check-cast p2, Lkotlin/jvm/functions/Function3;

    .line 157
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 163
    new-instance p4, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 157
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/io/path/PathsKt;->copyToRecursively(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyToRecursively$default(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZILjava/lang/Object;)Lj$/nio/file/Path;
    .locals 0

    .line 72
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 76
    sget-object p2, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;

    check-cast p2, Lkotlin/jvm/functions/Function3;

    .line 72
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/io/path/PathsKt;->copyToRecursively(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZ)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 4
    .param p0, "$this_copyToRecursively"    # Lj$/nio/file/Path;
    .param p1, "$target"    # Lj$/nio/file/Path;
    .param p2, "normalizedTarget"    # Lj$/nio/file/Path;
    .param p3, "source"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$this_copyToRecursively",
            "$target",
            "normalizedTarget",
            "source"
        }
    .end annotation

    .line 202
    invoke-static {p3, p0}, Lkotlin/io/path/PathsKt;->relativeTo(Lj$/nio/file/Path;Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v0

    .line 203
    .local v0, "relativePath":Lj$/nio/file/Path;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lj$/nio/file/Path;->resolve(Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v1

    .line 204
    .local v1, "destination":Lj$/nio/file/Path;
    invoke-interface {v1}, Lj$/nio/file/Path;->normalize()Lj$/nio/file/Path;

    move-result-object v2

    invoke-interface {v2, p2}, Lj$/nio/file/Path;->startsWith(Lj$/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1

    .line 205
    :cond_0
    new-instance v2, Lkotlin/io/path/IllegalFileNameException;

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 205
    const-string v3, "Copying files to outside the specified target directory is prohibited. The directory being recursively copied might contain an entry with an illegal name."

    invoke-direct {v2, p3, v1, v3}, Lkotlin/io/path/IllegalFileNameException;-><init>(Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/lang/String;)V

    throw v2
.end method

.method private static final copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/lang/Exception;)Lj$/nio/file/FileVisitResult;
    .locals 1
    .param p0, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p1, "$this_copyToRecursively"    # Lj$/nio/file/Path;
    .param p2, "$target"    # Lj$/nio/file/Path;
    .param p3, "normalizedTarget"    # Lj$/nio/file/Path;
    .param p4, "source"    # Lj$/nio/file/Path;
    .param p5, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$onError",
            "$this_copyToRecursively",
            "$target",
            "normalizedTarget",
            "source",
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lj$/nio/file/Path;",
            "-",
            "Lj$/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/Path;",
            "Ljava/lang/Exception;",
            ")",
            "Lj$/nio/file/FileVisitResult;"
        }
    .end annotation

    .line 215
    invoke-static {p1, p2, p3, p4}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, p4, v0, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/io/path/OnErrorResult;

    invoke-static {v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/OnErrorResult;)Lj$/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method private static final copyToRecursively$lambda$0$PathsKt__PathRecursiveFunctionsKt(ZLkotlin/io/path/CopyActionContext;Lj$/nio/file/Path;Lj$/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .locals 5
    .param p0, "$followLinks"    # Z
    .param p1, "$this$copyToRecursively"    # Lkotlin/io/path/CopyActionContext;
    .param p2, "src"    # Lj$/nio/file/Path;
    .param p3, "dst"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$followLinks",
            "$this$copyToRecursively",
            "src",
            "dst"
        }
    .end annotation

    const-string v0, "$this$copyToRecursively"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "src"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lkotlin/io/path/LinkFollowing;->INSTANCE:Lkotlin/io/path/LinkFollowing;

    invoke-virtual {v0, p0}, Lkotlin/io/path/LinkFollowing;->toLinkOptions(Z)[Lj$/nio/file/LinkOption;

    move-result-object v0

    .line 83
    .local v0, "options":[Lj$/nio/file/LinkOption;
    const/4 v1, 0x1

    new-array v2, v1, [Lj$/nio/file/LinkOption;

    const/4 v3, 0x0

    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lj$/nio/file/LinkOption;

    invoke-static {p3, v1}, Lj$/nio/file/Files;->isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v1

    .line 84
    .local v1, "dstIsDirectory":Z
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj$/nio/file/LinkOption;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj$/nio/file/LinkOption;

    invoke-static {p2, v2}, Lj$/nio/file/Files;->isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v2

    .line 85
    .local v2, "srcIsDirectory":Z
    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 86
    :cond_0
    if-eqz v1, :cond_1

    .line 87
    invoke-static {p3}, Lkotlin/io/path/PathsKt;->deleteRecursively(Lj$/nio/file/Path;)V

    .line 89
    :cond_1
    new-instance v3, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    sget-object v4, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v4

    new-array v4, v4, [Lj$/nio/file/CopyOption;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lj$/nio/file/CopyOption;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lj$/nio/file/CopyOption;

    invoke-static {p2, p3, v3}, Lj$/nio/file/Files;->copy(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)Lj$/nio/file/Path;

    move-result-object v3

    const-string v4, "copy(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    :cond_2
    sget-object v3, Lkotlin/io/path/CopyActionResult;->CONTINUE:Lkotlin/io/path/CopyActionResult;

    return-object v3
.end method

.method private static final copyToRecursively$lambda$1$PathsKt__PathRecursiveFunctionsKt(ZLkotlin/io/path/CopyActionContext;Lj$/nio/file/Path;Lj$/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .locals 1
    .param p0, "$followLinks"    # Z
    .param p1, "<this>"    # Lkotlin/io/path/CopyActionContext;
    .param p2, "src"    # Lj$/nio/file/Path;
    .param p3, "dst"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$followLinks",
            "<this>",
            "src",
            "dst"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "src"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-interface {p1, p2, p3, p0}, Lkotlin/io/path/CopyActionContext;->copyToIgnoringExistingDirectory(Lj$/nio/file/Path;Lj$/nio/file/Path;Z)Lkotlin/io/path/CopyActionResult;

    move-result-object v0

    return-object v0
.end method

.method private static final copyToRecursively$lambda$6$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;Lkotlin/io/path/FileVisitorBuilder;)Lkotlin/Unit;
    .locals 9
    .param p0, "$stack"    # Ljava/util/ArrayList;
    .param p1, "$copyAction"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$this_copyToRecursively"    # Lj$/nio/file/Path;
    .param p3, "$target"    # Lj$/nio/file/Path;
    .param p4, "$normalizedTarget"    # Lj$/nio/file/Path;
    .param p5, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$this$visitFileTree"    # Lkotlin/io/path/FileVisitorBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$stack",
            "$copyAction",
            "$this_copyToRecursively",
            "$target",
            "$normalizedTarget",
            "$onError",
            "$this$visitFileTree"
        }
    .end annotation

    const-string v0, "$this$visitFileTree"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v1, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p0    # "$stack":Ljava/util/ArrayList;
    .end local p1    # "$copyAction":Lkotlin/jvm/functions/Function3;
    .end local p2    # "$this_copyToRecursively":Lj$/nio/file/Path;
    .end local p3    # "$target":Lj$/nio/file/Path;
    .end local p4    # "$normalizedTarget":Lj$/nio/file/Path;
    .end local p5    # "$onError":Lkotlin/jvm/functions/Function3;
    .local v2, "$stack":Ljava/util/ArrayList;
    .local v3, "$copyAction":Lkotlin/jvm/functions/Function3;
    .local v4, "$this_copyToRecursively":Lj$/nio/file/Path;
    .local v5, "$target":Lj$/nio/file/Path;
    .local v6, "$normalizedTarget":Lj$/nio/file/Path;
    .local v7, "$onError":Lkotlin/jvm/functions/Function3;
    invoke-direct/range {v1 .. v7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    move-object p1, v2

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p2, v7

    .end local v2    # "$stack":Ljava/util/ArrayList;
    .end local v4    # "$this_copyToRecursively":Lj$/nio/file/Path;
    .end local v5    # "$target":Lj$/nio/file/Path;
    .end local v6    # "$normalizedTarget":Lj$/nio/file/Path;
    .end local v7    # "$onError":Lkotlin/jvm/functions/Function3;
    .local p1, "$stack":Ljava/util/ArrayList;
    .local p2, "$onError":Lkotlin/jvm/functions/Function3;
    .local p3, "$this_copyToRecursively":Lj$/nio/file/Path;
    .local p4, "$target":Lj$/nio/file/Path;
    .local p5, "$normalizedTarget":Lj$/nio/file/Path;
    invoke-interface {p6, v1}, Lkotlin/io/path/FileVisitorBuilder;->onPreVisitDirectory(Lkotlin/jvm/functions/Function2;)V

    .line 240
    new-instance v2, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;

    move-object v8, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v4, v3

    move-object v3, p1

    .end local p1    # "$stack":Ljava/util/ArrayList;
    .end local p2    # "$onError":Lkotlin/jvm/functions/Function3;
    .end local p3    # "$this_copyToRecursively":Lj$/nio/file/Path;
    .end local p4    # "$target":Lj$/nio/file/Path;
    .end local p5    # "$normalizedTarget":Lj$/nio/file/Path;
    .local v3, "$stack":Ljava/util/ArrayList;
    .local v4, "$copyAction":Lkotlin/jvm/functions/Function3;
    .local v5, "$this_copyToRecursively":Lj$/nio/file/Path;
    .local v6, "$target":Lj$/nio/file/Path;
    .local v7, "$normalizedTarget":Lj$/nio/file/Path;
    .local v8, "$onError":Lkotlin/jvm/functions/Function3;
    invoke-direct/range {v2 .. v8}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    move-object v3, v4

    .end local v4    # "$copyAction":Lkotlin/jvm/functions/Function3;
    .end local v5    # "$this_copyToRecursively":Lj$/nio/file/Path;
    .end local v6    # "$target":Lj$/nio/file/Path;
    .end local v7    # "$normalizedTarget":Lj$/nio/file/Path;
    .end local v8    # "$onError":Lkotlin/jvm/functions/Function3;
    .local v3, "$copyAction":Lkotlin/jvm/functions/Function3;
    .restart local p1    # "$stack":Ljava/util/ArrayList;
    .restart local p2    # "$onError":Lkotlin/jvm/functions/Function3;
    .restart local p3    # "$this_copyToRecursively":Lj$/nio/file/Path;
    .restart local p4    # "$target":Lj$/nio/file/Path;
    .restart local p5    # "$normalizedTarget":Lj$/nio/file/Path;
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p6, v2}, Lkotlin/io/path/FileVisitorBuilder;->onVisitFile(Lkotlin/jvm/functions/Function2;)V

    .line 241
    new-instance p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;

    invoke-direct {p0, p2, p3, p4, p5}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;-><init>(Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p6, p0}, Lkotlin/io/path/FileVisitorBuilder;->onVisitFileFailed(Lkotlin/jvm/functions/Function2;)V

    .line 242
    new-instance p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;

    invoke-direct/range {p0 .. p5}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;)V

    invoke-interface {p6, p0}, Lkotlin/io/path/FileVisitorBuilder;->onPostVisitDirectory(Lkotlin/jvm/functions/Function2;)V

    .line 250
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final copyToRecursively$lambda$6$lambda$4$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;
    .locals 4
    .param p0, "$stack"    # Ljava/util/ArrayList;
    .param p1, "$copyAction"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$this_copyToRecursively"    # Lj$/nio/file/Path;
    .param p3, "$target"    # Lj$/nio/file/Path;
    .param p4, "$normalizedTarget"    # Lj$/nio/file/Path;
    .param p5, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p6, "directory"    # Lj$/nio/file/Path;
    .param p7, "attributes"    # Lj$/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$stack",
            "$copyAction",
            "$this_copyToRecursively",
            "$target",
            "$normalizedTarget",
            "$onError",
            "directory",
            "attributes"
        }
    .end annotation

    const-string v0, "directory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-static/range {p0 .. p7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/attribute/BasicFileAttributes;)Lj$/nio/file/FileVisitResult;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Lj$/nio/file/FileVisitResult;
    const/4 v2, 0x0

    .line 237
    .local v2, "$i$a$-also-PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1$1":I
    sget-object v3, Lj$/nio/file/FileVisitResult;->CONTINUE:Lj$/nio/file/FileVisitResult;

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    nop

    .line 236
    .end local v1    # "it":Lj$/nio/file/FileVisitResult;
    .end local v2    # "$i$a$-also-PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1$1":I
    nop

    .line 238
    return-object v0
.end method

.method private static final copyToRecursively$lambda$6$lambda$5$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/io/IOException;)Lj$/nio/file/FileVisitResult;
    .locals 7
    .param p0, "$stack"    # Ljava/util/ArrayList;
    .param p1, "$onError"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$this_copyToRecursively"    # Lj$/nio/file/Path;
    .param p3, "$target"    # Lj$/nio/file/Path;
    .param p4, "$normalizedTarget"    # Lj$/nio/file/Path;
    .param p5, "directory"    # Lj$/nio/file/Path;
    .param p6, "exception"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$stack",
            "$onError",
            "$this_copyToRecursively",
            "$target",
            "$normalizedTarget",
            "directory",
            "exception"
        }
    .end annotation

    const-string v0, "directory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Ljava/util/ArrayList;->removeLast()Ljava/lang/Object;

    .line 244
    if-nez p6, :cond_0

    .line 245
    sget-object v0, Lj$/nio/file/FileVisitResult;->CONTINUE:Lj$/nio/file/FileVisitResult;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    goto :goto_0

    .line 247
    :cond_0
    move-object v6, p6

    check-cast v6, Ljava/lang/Exception;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "$onError":Lkotlin/jvm/functions/Function3;
    .end local p2    # "$this_copyToRecursively":Lj$/nio/file/Path;
    .end local p3    # "$target":Lj$/nio/file/Path;
    .end local p4    # "$normalizedTarget":Lj$/nio/file/Path;
    .end local p5    # "directory":Lj$/nio/file/Path;
    .local v1, "$onError":Lkotlin/jvm/functions/Function3;
    .local v2, "$this_copyToRecursively":Lj$/nio/file/Path;
    .local v3, "$target":Lj$/nio/file/Path;
    .local v4, "$normalizedTarget":Lj$/nio/file/Path;
    .local v5, "directory":Lj$/nio/file/Path;
    invoke-static/range {v1 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Lj$/nio/file/Path;Ljava/lang/Exception;)Lj$/nio/file/FileVisitResult;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0
.end method

.method public static final deleteRecursively(Lj$/nio/file/Path;)V
    .locals 12
    .param p0, "$this$deleteRecursively"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$deleteRecursively"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-static {p0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, "suppressedExceptions":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    new-instance v1, Ljava/nio/file/FileSystemException;

    const-string v2, "Failed to delete one or more files. See suppressed exceptions for details."

    invoke-direct {v1, v2}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .local v2, "$this$deleteRecursively_u24lambda_u248":Ljava/nio/file/FileSystemException;
    const/4 v3, 0x0

    .line 314
    .local v3, "$i$a$-apply-PathsKt__PathRecursiveFunctionsKt$deleteRecursively$1":I
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 532
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Exception;

    .local v8, "it":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 314
    .local v9, "$i$a$-forEach-PathsKt__PathRecursiveFunctionsKt$deleteRecursively$1$1":I
    move-object v10, v2

    check-cast v10, Ljava/lang/Throwable;

    move-object v11, v8

    check-cast v11, Ljava/lang/Throwable;

    invoke-static {v10, v11}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 532
    .end local v8    # "it":Ljava/lang/Exception;
    .end local v9    # "$i$a$-forEach-PathsKt__PathRecursiveFunctionsKt$deleteRecursively$1$1":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 533
    :cond_0
    nop

    .line 315
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    nop

    .line 313
    .end local v2    # "$this$deleteRecursively_u24lambda_u248":Ljava/nio/file/FileSystemException;
    .end local v3    # "$i$a$-apply-PathsKt__PathRecursiveFunctionsKt$deleteRecursively$1":I
    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 317
    :cond_1
    return-void
.end method

.method private static final deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;)Ljava/util/List;
    .locals 12
    .param p0, "$this$deleteRecursivelyImpl"    # Lj$/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$deleteRecursivelyImpl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Lkotlin/io/path/ExceptionsCollector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkotlin/io/path/ExceptionsCollector;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 354
    .local v0, "collector":Lkotlin/io/path/ExceptionsCollector;
    const/4 v1, 0x0

    .local v1, "useInsecure":Z
    const/4 v1, 0x1

    .line 357
    invoke-interface {p0}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v2

    if-eqz v2, :cond_2

    .local v2, "parent":Lj$/nio/file/Path;
    const/4 v4, 0x0

    .line 358
    .local v4, "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1":I
    :try_start_0
    invoke-static {v2}, Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v5, v3

    .line 359
    .local v5, "directoryStream":Ljava/nio/file/DirectoryStream;
    :goto_0
    if-eqz v5, :cond_1

    move-object v6, v5

    check-cast v6, Ljava/io/Closeable;

    :try_start_1
    move-object v7, v6

    check-cast v7, Ljava/nio/file/DirectoryStream;

    .local v7, "stream":Ljava/nio/file/DirectoryStream;
    const/4 v8, 0x0

    .line 360
    .local v8, "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1$1":I
    instance-of v9, v7, Lj$/nio/file/SecureDirectoryStream;

    if-eqz v9, :cond_0

    .line 361
    const/4 v1, 0x0

    .line 362
    invoke-virtual {v0, v2}, Lkotlin/io/path/ExceptionsCollector;->setPath(Lj$/nio/file/Path;)V

    .line 363
    move-object v9, v7

    check-cast v9, Lj$/nio/file/SecureDirectoryStream;

    invoke-interface {p0}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v10

    const-string v11, "getFileName(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v10, v3, v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->handleEntry$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 365
    :cond_0
    nop

    .end local v7    # "stream":Ljava/nio/file/DirectoryStream;
    .end local v8    # "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1$1":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v3

    .end local v0    # "collector":Lkotlin/io/path/ExceptionsCollector;
    .end local v1    # "useInsecure":Z
    .end local v2    # "parent":Lj$/nio/file/Path;
    .end local v4    # "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1":I
    .end local v5    # "directoryStream":Ljava/nio/file/DirectoryStream;
    .end local p0    # "$this$deleteRecursivelyImpl":Lj$/nio/file/Path;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .restart local v0    # "collector":Lkotlin/io/path/ExceptionsCollector;
    .restart local v1    # "useInsecure":Z
    .restart local v2    # "parent":Lj$/nio/file/Path;
    .restart local v4    # "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1":I
    .restart local v5    # "directoryStream":Ljava/nio/file/DirectoryStream;
    .restart local p0    # "$this$deleteRecursivelyImpl":Lj$/nio/file/Path;
    :catchall_2
    move-exception v7

    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7

    .line 365
    :cond_1
    :goto_1
    nop

    .line 357
    .end local v2    # "parent":Lj$/nio/file/Path;
    .end local v4    # "$i$a$-let-PathsKt__PathRecursiveFunctionsKt$deleteRecursivelyImpl$1":I
    .end local v5    # "directoryStream":Ljava/nio/file/DirectoryStream;
    nop

    .line 368
    :cond_2
    if-eqz v1, :cond_3

    .line 369
    invoke-static {p0, v3, v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 372
    :cond_3
    invoke-virtual {v0}, Lkotlin/io/path/ExceptionsCollector;->getCollectedExceptions()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static final enterDirectory$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .locals 10
    .param p0, "$this$enterDirectory"    # Lj$/nio/file/SecureDirectoryStream;
    .param p1, "name"    # Lj$/nio/file/Path;
    .param p2, "collector"    # Lkotlin/io/path/ExceptionsCollector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$enterDirectory",
            "name",
            "collector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/SecureDirectoryStream<",
            "Lj$/nio/file/Path;",
            ">;",
            "Lj$/nio/file/Path;",
            "Lkotlin/io/path/ExceptionsCollector;",
            ")V"
        }
    .end annotation

    .line 418
    const/4 v0, 0x0

    .line 542
    .local v0, "$i$f$collectIfThrows":I
    nop

    .line 543
    const/4 v1, 0x0

    .line 421
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    nop

    .line 419
    const/4 v2, 0x0

    .line 544
    .local v2, "$i$f$tryIgnoreNoSuchFileException":I
    const/4 v3, 0x0

    .line 420
    .local v3, "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1$1":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-array v4, v4, [Lj$/nio/file/LinkOption;

    sget-object v6, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-interface {p0, p1, v4}, Lj$/nio/file/SecureDirectoryStream;->newDirectoryStream(Ljava/lang/Object;[Lj$/nio/file/LinkOption;)Lj$/nio/file/SecureDirectoryStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v3    # "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1$1":I
    goto :goto_0

    .line 545
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    .end local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :catch_0
    move-exception v1

    goto :goto_2

    .line 544
    .restart local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    .restart local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :catch_1
    move-exception v3

    move-object v4, v5

    .line 419
    .end local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :goto_0
    nop

    .line 421
    if-eqz v4, :cond_1

    .line 419
    :try_start_1
    check-cast v4, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 421
    :try_start_2
    move-object v2, v4

    check-cast v2, Lj$/nio/file/SecureDirectoryStream;

    .local v2, "directoryStream":Lj$/nio/file/SecureDirectoryStream;
    const/4 v3, 0x0

    .line 422
    .local v3, "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1$2":I
    invoke-interface {v2}, Lj$/nio/file/SecureDirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-string v7, "iterator(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj$/nio/file/Path;

    .line 423
    .local v7, "entry":Lj$/nio/file/Path;
    invoke-interface {v7}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v8

    const-string v9, "getFileName(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lkotlin/io/path/ExceptionsCollector;->getPath()Lj$/nio/file/Path;

    move-result-object v9

    invoke-static {v2, v8, v9, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->handleEntry$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .end local v7    # "entry":Lj$/nio/file/Path;
    goto :goto_1

    .line 425
    :cond_0
    nop

    .end local v2    # "directoryStream":Lj$/nio/file/SecureDirectoryStream;
    .end local v3    # "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    :try_start_3
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .end local v0    # "$i$f$collectIfThrows":I
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    .end local p0    # "$this$enterDirectory":Lj$/nio/file/SecureDirectoryStream;
    .end local p1    # "name":Lj$/nio/file/Path;
    .end local p2    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v0    # "$i$f$collectIfThrows":I
    .restart local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    .restart local p0    # "$this$enterDirectory":Lj$/nio/file/SecureDirectoryStream;
    .restart local p1    # "name":Lj$/nio/file/Path;
    .restart local p2    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "$i$f$collectIfThrows":I
    .end local p0    # "$this$enterDirectory":Lj$/nio/file/SecureDirectoryStream;
    .end local p1    # "name":Lj$/nio/file/Path;
    .end local p2    # "collector":Lkotlin/io/path/ExceptionsCollector;
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 546
    .restart local v0    # "$i$f$collectIfThrows":I
    .local v1, "exception$iv":Ljava/lang/Exception;
    .restart local p0    # "$this$enterDirectory":Lj$/nio/file/SecureDirectoryStream;
    .restart local p1    # "name":Lj$/nio/file/Path;
    .restart local p2    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :goto_2
    invoke-virtual {p2, v1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    goto :goto_4

    .line 426
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    :cond_1
    :goto_3
    nop

    .line 543
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$enterDirectory$1":I
    nop

    .line 548
    :goto_4
    nop

    .line 427
    .end local v0    # "$i$f$collectIfThrows":I
    return-void
.end method

.method private static final handleEntry$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .locals 5
    .param p0, "$this$handleEntry"    # Lj$/nio/file/SecureDirectoryStream;
    .param p1, "name"    # Lj$/nio/file/Path;
    .param p2, "parent"    # Lj$/nio/file/Path;
    .param p3, "collector"    # Lkotlin/io/path/ExceptionsCollector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$handleEntry",
            "name",
            "parent",
            "collector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/SecureDirectoryStream<",
            "Lj$/nio/file/Path;",
            ">;",
            "Lj$/nio/file/Path;",
            "Lj$/nio/file/Path;",
            "Lkotlin/io/path/ExceptionsCollector;",
            ")V"
        }
    .end annotation

    .line 390
    invoke-virtual {p3, p1}, Lkotlin/io/path/ExceptionsCollector;->enterEntry(Lj$/nio/file/Path;)V

    .line 392
    const/4 v0, 0x0

    .line 534
    .local v0, "$i$f$collectIfThrows":I
    nop

    .line 535
    const/4 v1, 0x0

    .line 393
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$handleEntry$1":I
    if-eqz p2, :cond_0

    .line 395
    :try_start_0
    invoke-virtual {p3}, Lkotlin/io/path/ExceptionsCollector;->getPath()Lj$/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 396
    .local v2, "entry":Lj$/nio/file/Path;
    invoke-static {v2}, Lkotlin/io/path/PathsKt;->checkFileName(Lj$/nio/file/Path;)V

    .line 397
    invoke-static {v2, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lj$/nio/file/Path;)V

    .line 399
    .end local v2    # "entry":Lj$/nio/file/Path;
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lj$/nio/file/LinkOption;

    sget-object v3, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, p1, v2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->isDirectory$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    invoke-virtual {p3}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result v2

    .line 402
    .local v2, "preEnterTotalExceptions":I
    invoke-static {p0, p1, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->enterDirectory$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 406
    invoke-virtual {p3}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v2, v3, :cond_2

    .line 407
    const/4 v3, 0x0

    .line 536
    .local v3, "$i$f$tryIgnoreNoSuchFileException":I
    const/4 v4, 0x0

    .line 407
    .local v4, "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$handleEntry$1$1":I
    :try_start_1
    invoke-interface {p0, p1}, Lj$/nio/file/SecureDirectoryStream;->deleteDirectory(Ljava/lang/Object;)V

    .end local v4    # "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$handleEntry$1$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 536
    goto :goto_0

    :catch_0
    move-exception v4

    .end local v2    # "preEnterTotalExceptions":I
    .end local v3    # "$i$f$tryIgnoreNoSuchFileException":I
    goto :goto_0

    .line 410
    :cond_1
    const/4 v2, 0x0

    .line 537
    .local v2, "$i$f$tryIgnoreNoSuchFileException":I
    const/4 v3, 0x0

    .line 410
    .local v3, "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$handleEntry$1$2":I
    :try_start_2
    invoke-interface {p0, p1}, Lj$/nio/file/SecureDirectoryStream;->deleteFile(Ljava/lang/Object;)V

    .end local v3    # "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$handleEntry$1$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 537
    goto :goto_0

    :catch_1
    move-exception v3

    .line 412
    .end local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :cond_2
    :goto_0
    nop

    .line 535
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$handleEntry$1":I
    goto :goto_1

    .line 538
    :catch_2
    move-exception v1

    .line 539
    .local v1, "exception$iv":Ljava/lang/Exception;
    invoke-virtual {p3, v1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    .line 541
    .end local v1    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 414
    .end local v0    # "$i$f$collectIfThrows":I
    invoke-virtual {p3, p1}, Lkotlin/io/path/ExceptionsCollector;->exitEntry(Lj$/nio/file/Path;)V

    .line 415
    return-void
.end method

.method private static final insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .locals 8
    .param p0, "path"    # Lj$/nio/file/Path;
    .param p1, "collector"    # Lkotlin/io/path/ExceptionsCollector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "collector"
        }
    .end annotation

    .line 461
    const/4 v0, 0x0

    .line 556
    .local v0, "$i$f$collectIfThrows":I
    nop

    .line 557
    const/4 v1, 0x0

    .line 464
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    nop

    .line 462
    const/4 v2, 0x0

    .line 558
    .local v2, "$i$f$tryIgnoreNoSuchFileException":I
    const/4 v3, 0x0

    .line 463
    .local v3, "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1$1":I
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0}, Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v3    # "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1$1":I
    goto :goto_0

    .line 559
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    .end local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :catch_0
    move-exception v1

    goto :goto_2

    .line 558
    .restart local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    .restart local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :catch_1
    move-exception v3

    move-object v5, v4

    .line 462
    .end local v2    # "$i$f$tryIgnoreNoSuchFileException":I
    :goto_0
    nop

    .line 464
    if-eqz v5, :cond_1

    .line 462
    :try_start_1
    check-cast v5, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    :try_start_2
    move-object v2, v5

    check-cast v2, Ljava/nio/file/DirectoryStream;

    .local v2, "directoryStream":Ljava/nio/file/DirectoryStream;
    const/4 v3, 0x0

    .line 465
    .local v3, "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1$2":I
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-string v7, "iterator(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj$/nio/file/Path;

    .line 466
    .local v7, "entry":Lj$/nio/file/Path;
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7, p0, p1}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .end local v7    # "entry":Lj$/nio/file/Path;
    goto :goto_1

    .line 468
    :cond_0
    nop

    .end local v2    # "directoryStream":Ljava/nio/file/DirectoryStream;
    .end local v3    # "$i$a$-use-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    :try_start_3
    invoke-static {v5, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .end local v0    # "$i$f$collectIfThrows":I
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    .end local p0    # "path":Lj$/nio/file/Path;
    .end local p1    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v0    # "$i$f$collectIfThrows":I
    .restart local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    .restart local p0    # "path":Lj$/nio/file/Path;
    .restart local p1    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "$i$f$collectIfThrows":I
    .end local p0    # "path":Lj$/nio/file/Path;
    .end local p1    # "collector":Lkotlin/io/path/ExceptionsCollector;
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 560
    .restart local v0    # "$i$f$collectIfThrows":I
    .local v1, "exception$iv":Ljava/lang/Exception;
    .restart local p0    # "path":Lj$/nio/file/Path;
    .restart local p1    # "collector":Lkotlin/io/path/ExceptionsCollector;
    :goto_2
    invoke-virtual {p1, v1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    goto :goto_4

    .line 469
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    :cond_1
    :goto_3
    nop

    .line 557
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureEnterDirectory$1":I
    nop

    .line 562
    :goto_4
    nop

    .line 470
    .end local v0    # "$i$f$collectIfThrows":I
    return-void
.end method

.method private static final insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .locals 6
    .param p0, "entry"    # Lj$/nio/file/Path;
    .param p1, "parent"    # Lj$/nio/file/Path;
    .param p2, "collector"    # Lkotlin/io/path/ExceptionsCollector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "parent",
            "collector"
        }
    .end annotation

    .line 438
    const/4 v0, 0x0

    .line 550
    .local v0, "$i$f$collectIfThrows":I
    nop

    .line 551
    const/4 v1, 0x0

    .line 439
    .local v1, "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureHandleEntry$1":I
    if-eqz p1, :cond_0

    .line 441
    :try_start_0
    invoke-static {p0}, Lkotlin/io/path/PathsKt;->checkFileName(Lj$/nio/file/Path;)V

    .line 442
    invoke-static {p0, p1}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lj$/nio/file/Path;)V

    .line 444
    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Lj$/nio/file/LinkOption;

    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj$/nio/file/LinkOption;

    invoke-static {p0, v2}, Lj$/nio/file/Files;->isDirectory(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    invoke-virtual {p2}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result v2

    .line 447
    .local v2, "preEnterTotalExceptions":I
    invoke-static {p0, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 451
    invoke-virtual {p2}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 452
    invoke-static {p0}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z

    goto :goto_0

    .line 455
    .end local v2    # "preEnterTotalExceptions":I
    :cond_1
    invoke-static {p0}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_2
    :goto_0
    nop

    .line 551
    .end local v1    # "$i$a$-collectIfThrows-PathsKt__PathRecursiveFunctionsKt$insecureHandleEntry$1":I
    goto :goto_1

    .line 552
    :catch_0
    move-exception v1

    .line 553
    .local v1, "exception$iv":Ljava/lang/Exception;
    invoke-virtual {p2, v1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    .line 555
    .end local v1    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 458
    .end local v0    # "$i$f$collectIfThrows":I
    return-void
.end method

.method private static final varargs isDirectory$PathsKt__PathRecursiveFunctionsKt(Lj$/nio/file/SecureDirectoryStream;Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z
    .locals 4
    .param p0, "$this$isDirectory"    # Lj$/nio/file/SecureDirectoryStream;
    .param p1, "entryName"    # Lj$/nio/file/Path;
    .param p2, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$isDirectory",
            "entryName",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/SecureDirectoryStream<",
            "Lj$/nio/file/Path;",
            ">;",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/LinkOption;",
            ")Z"
        }
    .end annotation

    .line 430
    const/4 v0, 0x0

    .line 549
    .local v0, "$i$f$tryIgnoreNoSuchFileException":I
    const/4 v1, 0x0

    .line 431
    .local v1, "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$isDirectory$1":I
    :try_start_0
    const-class v2, Lj$/nio/file/attribute/BasicFileAttributeView;

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lj$/nio/file/LinkOption;

    invoke-interface {p0, p1, v2, v3}, Lj$/nio/file/SecureDirectoryStream;->getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/FileAttributeView;

    move-result-object v2

    check-cast v2, Lj$/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v2}, Lj$/nio/file/attribute/BasicFileAttributeView;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v2

    invoke-interface {v2}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v2

    .end local v1    # "$i$a$-tryIgnoreNoSuchFileException-PathsKt__PathRecursiveFunctionsKt$isDirectory$1":I
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "<unused var>$iv":Ljava/nio/file/NoSuchFileException;
    const/4 v2, 0x0

    move-object v1, v2

    .line 430
    .end local v0    # "$i$f$tryIgnoreNoSuchFileException":I
    .end local v1    # "<unused var>$iv":Ljava/nio/file/NoSuchFileException;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 432
    :cond_0
    const/4 v0, 0x0

    .line 430
    :goto_1
    return v0
.end method

.method private static final toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/CopyActionResult;)Lj$/nio/file/FileVisitResult;
    .locals 2
    .param p0, "$this$toFileVisitResult"    # Lkotlin/io/path/CopyActionResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toFileVisitResult"
        }
    .end annotation

    .line 271
    sget-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lkotlin/io/path/CopyActionResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 274
    :pswitch_0
    sget-object v0, Lj$/nio/file/FileVisitResult;->SKIP_SUBTREE:Lj$/nio/file/FileVisitResult;

    goto :goto_0

    .line 273
    :pswitch_1
    sget-object v0, Lj$/nio/file/FileVisitResult;->TERMINATE:Lj$/nio/file/FileVisitResult;

    goto :goto_0

    .line 272
    :pswitch_2
    sget-object v0, Lj$/nio/file/FileVisitResult;->CONTINUE:Lj$/nio/file/FileVisitResult;

    .line 275
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/OnErrorResult;)Lj$/nio/file/FileVisitResult;
    .locals 2
    .param p0, "$this$toFileVisitResult"    # Lkotlin/io/path/OnErrorResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toFileVisitResult"
        }
    .end annotation

    .line 278
    sget-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lkotlin/io/path/OnErrorResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 280
    :pswitch_0
    sget-object v0, Lj$/nio/file/FileVisitResult;->SKIP_SUBTREE:Lj$/nio/file/FileVisitResult;

    goto :goto_0

    .line 279
    :pswitch_1
    sget-object v0, Lj$/nio/file/FileVisitResult;->TERMINATE:Lj$/nio/file/FileVisitResult;

    .line 281
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final tryIgnoreNoSuchFileException$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .param p0, "function"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 384
    .local v0, "$i$f$tryIgnoreNoSuchFileException":I
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "<unused var>":Ljava/nio/file/NoSuchFileException;
    const/4 v2, 0x0

    move-object v1, v2

    .end local v1    # "<unused var>":Ljava/nio/file/NoSuchFileException;
    :goto_0
    return-object v1
.end method

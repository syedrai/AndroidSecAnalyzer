.class public final Landroidx/collection/FloatListKt;
.super Ljava/lang/Object;
.source "FloatList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatList.kt\nandroidx/collection/FloatListKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FloatList.kt\nandroidx/collection/MutableFloatList\n*L\n1#1,976:1\n1#2:977\n675#3,2:978\n715#3,2:980\n715#3,2:982\n715#3,2:984\n715#3,2:986\n715#3,2:988\n715#3,2:990\n675#3,2:992\n*S KotlinDebug\n*F\n+ 1 FloatList.kt\nandroidx/collection/FloatListKt\n*L\n909#1:978,2\n917#1:980,2\n924#1:982,2\n925#1:984,2\n935#1:986,2\n936#1:988,2\n937#1:990,2\n943#1:992,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0006\u0010\u0003\u001a\u00020\u0001\u001a\u000e\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0016\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u001e\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005\u001a\u0012\u0010\u0003\u001a\u00020\u00012\n\u0010\u0008\u001a\u00020\t\"\u00020\u0005\u001a\t\u0010\n\u001a\u00020\u000bH\u0086\u0008\u001a\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005\u001a\u0015\u0010\n\u001a\u00020\u000b2\n\u0010\u0008\u001a\u00020\t\"\u00020\u0005H\u0086\u0008\u001a2\u0010\u000c\u001a\u00020\u00012\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0002\u0008\u0010H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u001a:\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0002\u0008\u0010H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0013"
    }
    d2 = {
        "EmptyFloatList",
        "Landroidx/collection/FloatList;",
        "emptyFloatList",
        "floatListOf",
        "element1",
        "",
        "element2",
        "element3",
        "elements",
        "",
        "mutableFloatListOf",
        "Landroidx/collection/MutableFloatList;",
        "buildFloatList",
        "builderAction",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "initialCapacity",
        "",
        "collection"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EmptyFloatList:Landroidx/collection/FloatList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 885
    new-instance v0, Landroidx/collection/MutableFloatList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    check-cast v0, Landroidx/collection/FloatList;

    sput-object v0, Landroidx/collection/FloatListKt;->EmptyFloatList:Landroidx/collection/FloatList;

    return-void
.end method

.method public static final buildFloatList(ILkotlin/jvm/functions/Function1;)Landroidx/collection/FloatList;
    .locals 2
    .param p0, "initialCapacity"    # I
    .param p1, "builderAction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/collection/MutableFloatList;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatList;"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 974
    .local v0, "$i$f$buildFloatList":I
    new-instance v1, Landroidx/collection/MutableFloatList;

    invoke-direct {v1, p0}, Landroidx/collection/MutableFloatList;-><init>(I)V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/collection/FloatList;

    return-object v1
.end method

.method public static final buildFloatList(Lkotlin/jvm/functions/Function1;)Landroidx/collection/FloatList;
    .locals 5
    .param p0, "builderAction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/collection/MutableFloatList;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatList;"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 957
    .local v0, "$i$f$buildFloatList":I
    new-instance v1, Landroidx/collection/MutableFloatList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroidx/collection/MutableFloatList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/collection/FloatList;

    return-object v1
.end method

.method public static final emptyFloatList()Landroidx/collection/FloatList;
    .locals 1

    .line 888
    sget-object v0, Landroidx/collection/FloatListKt;->EmptyFloatList:Landroidx/collection/FloatList;

    return-object v0
.end method

.method public static final floatListOf()Landroidx/collection/FloatList;
    .locals 1

    .line 891
    sget-object v0, Landroidx/collection/FloatListKt;->EmptyFloatList:Landroidx/collection/FloatList;

    return-object v0
.end method

.method public static final floatListOf(F)Landroidx/collection/FloatList;
    .locals 1
    .param p0, "element1"    # F

    .line 894
    invoke-static {p0}, Landroidx/collection/FloatListKt;->mutableFloatListOf(F)Landroidx/collection/MutableFloatList;

    move-result-object v0

    check-cast v0, Landroidx/collection/FloatList;

    return-object v0
.end method

.method public static final floatListOf(FF)Landroidx/collection/FloatList;
    .locals 1
    .param p0, "element1"    # F
    .param p1, "element2"    # F

    .line 898
    invoke-static {p0, p1}, Landroidx/collection/FloatListKt;->mutableFloatListOf(FF)Landroidx/collection/MutableFloatList;

    move-result-object v0

    check-cast v0, Landroidx/collection/FloatList;

    return-object v0
.end method

.method public static final floatListOf(FFF)Landroidx/collection/FloatList;
    .locals 1
    .param p0, "element1"    # F
    .param p1, "element2"    # F
    .param p2, "element3"    # F

    .line 905
    invoke-static {p0, p1, p2}, Landroidx/collection/FloatListKt;->mutableFloatListOf(FFF)Landroidx/collection/MutableFloatList;

    move-result-object v0

    check-cast v0, Landroidx/collection/FloatList;

    return-object v0
.end method

.method public static final varargs floatListOf([F)Landroidx/collection/FloatList;
    .locals 6
    .param p0, "elements"    # [F

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    new-instance v0, Landroidx/collection/MutableFloatList;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    move-object v1, v0

    .line 977
    .local v1, "$this$floatListOf_u24lambda_u240":Landroidx/collection/MutableFloatList;
    const/4 v2, 0x0

    .line 909
    .local v2, "$i$a$-apply-FloatListKt$floatListOf$1":I
    move-object v3, v1

    .local v3, "this_$iv":Landroidx/collection/MutableFloatList;
    const/4 v4, 0x0

    .line 978
    .local v4, "$i$f$plusAssign":I
    iget v5, v3, Landroidx/collection/MutableFloatList;->_size:I

    invoke-virtual {v3, v5, p0}, Landroidx/collection/MutableFloatList;->addAll(I[F)Z

    .line 979
    nop

    .line 909
    .end local v3    # "this_$iv":Landroidx/collection/MutableFloatList;
    .end local v4    # "$i$f$plusAssign":I
    nop

    .end local v1    # "$this$floatListOf_u24lambda_u240":Landroidx/collection/MutableFloatList;
    .end local v2    # "$i$a$-apply-FloatListKt$floatListOf$1":I
    check-cast v0, Landroidx/collection/FloatList;

    return-object v0
.end method

.method public static final mutableFloatListOf()Landroidx/collection/MutableFloatList;
    .locals 5

    const/4 v0, 0x0

    .line 912
    .local v0, "$i$f$mutableFloatListOf":I
    new-instance v1, Landroidx/collection/MutableFloatList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroidx/collection/MutableFloatList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public static final mutableFloatListOf(F)Landroidx/collection/MutableFloatList;
    .locals 3
    .param p0, "element1"    # F

    .line 916
    new-instance v0, Landroidx/collection/MutableFloatList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 917
    .local v0, "list":Landroidx/collection/MutableFloatList;
    move-object v1, v0

    .local v1, "this_$iv":Landroidx/collection/MutableFloatList;
    const/4 v2, 0x0

    .line 980
    .local v2, "$i$f$plusAssign":I
    invoke-virtual {v1, p0}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 981
    nop

    .line 918
    .end local v1    # "this_$iv":Landroidx/collection/MutableFloatList;
    .end local v2    # "$i$f$plusAssign":I
    return-object v0
.end method

.method public static final mutableFloatListOf(FF)Landroidx/collection/MutableFloatList;
    .locals 3
    .param p0, "element1"    # F
    .param p1, "element2"    # F

    .line 923
    new-instance v0, Landroidx/collection/MutableFloatList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 924
    .local v0, "list":Landroidx/collection/MutableFloatList;
    move-object v1, v0

    .local v1, "this_$iv":Landroidx/collection/MutableFloatList;
    const/4 v2, 0x0

    .line 982
    .local v2, "$i$f$plusAssign":I
    invoke-virtual {v1, p0}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 983
    nop

    .line 925
    .end local v1    # "this_$iv":Landroidx/collection/MutableFloatList;
    .end local v2    # "$i$f$plusAssign":I
    nop

    .restart local v1    # "this_$iv":Landroidx/collection/MutableFloatList;
    const/4 v2, 0x0

    .line 984
    .restart local v2    # "$i$f$plusAssign":I
    invoke-virtual {v1, p1}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 985
    nop

    .line 926
    .end local v1    # "this_$iv":Landroidx/collection/MutableFloatList;
    .end local v2    # "$i$f$plusAssign":I
    return-object v0
.end method

.method public static final mutableFloatListOf(FFF)Landroidx/collection/MutableFloatList;
    .locals 3
    .param p0, "element1"    # F
    .param p1, "element2"    # F
    .param p2, "element3"    # F

    .line 934
    new-instance v0, Landroidx/collection/MutableFloatList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 935
    .local v0, "list":Landroidx/collection/MutableFloatList;
    move-object v1, v0

    .local v1, "this_$iv":Landroidx/collection/MutableFloatList;
    const/4 v2, 0x0

    .line 986
    .local v2, "$i$f$plusAssign":I
    invoke-virtual {v1, p0}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 987
    nop

    .line 936
    .end local v1    # "this_$iv":Landroidx/collection/MutableFloatList;
    .end local v2    # "$i$f$plusAssign":I
    nop

    .restart local v1    # "this_$iv":Landroidx/collection/MutableFloatList;
    const/4 v2, 0x0

    .line 988
    .restart local v2    # "$i$f$plusAssign":I
    invoke-virtual {v1, p1}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 989
    nop

    .line 937
    .end local v1    # "this_$iv":Landroidx/collection/MutableFloatList;
    .end local v2    # "$i$f$plusAssign":I
    nop

    .restart local v1    # "this_$iv":Landroidx/collection/MutableFloatList;
    const/4 v2, 0x0

    .line 990
    .restart local v2    # "$i$f$plusAssign":I
    invoke-virtual {v1, p2}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 991
    nop

    .line 938
    .end local v1    # "this_$iv":Landroidx/collection/MutableFloatList;
    .end local v2    # "$i$f$plusAssign":I
    return-object v0
.end method

.method public static final varargs mutableFloatListOf([F)Landroidx/collection/MutableFloatList;
    .locals 7
    .param p0, "elements"    # [F

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 943
    .local v0, "$i$f$mutableFloatListOf":I
    new-instance v1, Landroidx/collection/MutableFloatList;

    array-length v2, p0

    invoke-direct {v1, v2}, Landroidx/collection/MutableFloatList;-><init>(I)V

    move-object v2, v1

    .line 977
    .local v2, "$this$mutableFloatListOf_u24lambda_u241":Landroidx/collection/MutableFloatList;
    const/4 v3, 0x0

    .line 943
    .local v3, "$i$a$-apply-FloatListKt$mutableFloatListOf$1":I
    move-object v4, v2

    .local v4, "this_$iv":Landroidx/collection/MutableFloatList;
    const/4 v5, 0x0

    .line 992
    .local v5, "$i$f$plusAssign":I
    iget v6, v4, Landroidx/collection/MutableFloatList;->_size:I

    invoke-virtual {v4, v6, p0}, Landroidx/collection/MutableFloatList;->addAll(I[F)Z

    .line 993
    nop

    .line 943
    .end local v4    # "this_$iv":Landroidx/collection/MutableFloatList;
    .end local v5    # "$i$f$plusAssign":I
    nop

    .end local v2    # "$this$mutableFloatListOf_u24lambda_u241":Landroidx/collection/MutableFloatList;
    .end local v3    # "$i$a$-apply-FloatListKt$mutableFloatListOf$1":I
    return-object v1
.end method

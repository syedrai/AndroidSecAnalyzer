.class public final Landroidx/collection/FloatSetKt;
.super Ljava/lang/Object;
.source "FloatSet.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatSet.kt\nandroidx/collection/FloatSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,886:1\n1#2:887\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0006\u0010\u0008\u001a\u00020\u0007\u001a\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n\u001a\u0016\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n\u001a\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n\u001a\u0012\u0010\u0008\u001a\u00020\u00072\n\u0010\r\u001a\u00020\u0003\"\u00020\n\u001a\u0006\u0010\u000e\u001a\u00020\u0001\u001a\u000e\u0010\u000e\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n\u001a\u0016\u0010\u000e\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n\u001a\u001e\u0010\u000e\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n\u001a\u0012\u0010\u000e\u001a\u00020\u00012\n\u0010\r\u001a\u00020\u0003\"\u00020\n\u001a2\u0010\u000f\u001a\u00020\u00072\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0002\u0008\u0013H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u001a:\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0002\u0008\u0013H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u001a\u0011\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\nH\u0080\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0018"
    }
    d2 = {
        "EmptyFloatSet",
        "Landroidx/collection/MutableFloatSet;",
        "EmptyFloatArray",
        "",
        "getEmptyFloatArray",
        "()[F",
        "emptyFloatSet",
        "Landroidx/collection/FloatSet;",
        "floatSetOf",
        "element1",
        "",
        "element2",
        "element3",
        "elements",
        "mutableFloatSetOf",
        "buildFloatSet",
        "builderAction",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "initialCapacity",
        "",
        "hash",
        "k",
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
.field private static final EmptyFloatArray:[F

.field private static final EmptyFloatSet:Landroidx/collection/MutableFloatSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Landroidx/collection/MutableFloatSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    sput-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatSet:Landroidx/collection/MutableFloatSet;

    .line 52
    new-array v0, v1, [F

    sput-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatArray:[F

    return-void
.end method

.method public static final buildFloatSet(ILkotlin/jvm/functions/Function1;)Landroidx/collection/FloatSet;
    .locals 2
    .param p0, "initialCapacity"    # I
    .param p1, "builderAction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/collection/MutableFloatSet;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatSet;"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 134
    .local v0, "$i$f$buildFloatSet":I
    new-instance v1, Landroidx/collection/MutableFloatSet;

    invoke-direct {v1, p0}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/collection/FloatSet;

    return-object v1
.end method

.method public static final buildFloatSet(Lkotlin/jvm/functions/Function1;)Landroidx/collection/FloatSet;
    .locals 5
    .param p0, "builderAction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/collection/MutableFloatSet;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatSet;"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 117
    .local v0, "$i$f$buildFloatSet":I
    new-instance v1, Landroidx/collection/MutableFloatSet;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroidx/collection/MutableFloatSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/collection/FloatSet;

    return-object v1
.end method

.method public static final emptyFloatSet()Landroidx/collection/FloatSet;
    .locals 1

    .line 55
    sget-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatSet:Landroidx/collection/MutableFloatSet;

    check-cast v0, Landroidx/collection/FloatSet;

    return-object v0
.end method

.method public static final floatSetOf()Landroidx/collection/FloatSet;
    .locals 1

    .line 58
    sget-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatSet:Landroidx/collection/MutableFloatSet;

    check-cast v0, Landroidx/collection/FloatSet;

    return-object v0
.end method

.method public static final floatSetOf(F)Landroidx/collection/FloatSet;
    .locals 1
    .param p0, "element1"    # F

    .line 62
    invoke-static {p0}, Landroidx/collection/FloatSetKt;->mutableFloatSetOf(F)Landroidx/collection/MutableFloatSet;

    move-result-object v0

    check-cast v0, Landroidx/collection/FloatSet;

    return-object v0
.end method

.method public static final floatSetOf(FF)Landroidx/collection/FloatSet;
    .locals 1
    .param p0, "element1"    # F
    .param p1, "element2"    # F

    .line 67
    invoke-static {p0, p1}, Landroidx/collection/FloatSetKt;->mutableFloatSetOf(FF)Landroidx/collection/MutableFloatSet;

    move-result-object v0

    check-cast v0, Landroidx/collection/FloatSet;

    return-object v0
.end method

.method public static final floatSetOf(FFF)Landroidx/collection/FloatSet;
    .locals 1
    .param p0, "element1"    # F
    .param p1, "element2"    # F
    .param p2, "element3"    # F

    .line 72
    invoke-static {p0, p1, p2}, Landroidx/collection/FloatSetKt;->mutableFloatSetOf(FFF)Landroidx/collection/MutableFloatSet;

    move-result-object v0

    check-cast v0, Landroidx/collection/FloatSet;

    return-object v0
.end method

.method public static final varargs floatSetOf([F)Landroidx/collection/FloatSet;
    .locals 3
    .param p0, "elements"    # [F

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroidx/collection/MutableFloatSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    move-object v1, v0

    .line 887
    .local v1, "$this$floatSetOf_u24lambda_u240":Landroidx/collection/MutableFloatSet;
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$a$-apply-FloatSetKt$floatSetOf$1":I
    invoke-virtual {v1, p0}, Landroidx/collection/MutableFloatSet;->plusAssign([F)V

    .end local v1    # "$this$floatSetOf_u24lambda_u240":Landroidx/collection/MutableFloatSet;
    .end local v2    # "$i$a$-apply-FloatSetKt$floatSetOf$1":I
    check-cast v0, Landroidx/collection/FloatSet;

    return-object v0
.end method

.method public static final getEmptyFloatArray()[F
    .locals 1

    .line 52
    sget-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatArray:[F

    return-object v0
.end method

.method public static final hash(F)I
    .locals 3
    .param p0, "k"    # F

    const/4 v0, 0x0

    .line 882
    .local v0, "$i$f$hash":I
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const v2, -0x3361d2af    # -8.2930312E7f

    mul-int v1, v1, v2

    .line 884
    .local v1, "hash":I
    shl-int/lit8 v2, v1, 0x10

    xor-int/2addr v2, v1

    return v2
.end method

.method public static final mutableFloatSetOf()Landroidx/collection/MutableFloatSet;
    .locals 4

    .line 80
    new-instance v0, Landroidx/collection/MutableFloatSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableFloatSetOf(F)Landroidx/collection/MutableFloatSet;
    .locals 3
    .param p0, "element1"    # F

    .line 84
    new-instance v0, Landroidx/collection/MutableFloatSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    move-object v1, v0

    .line 887
    .local v1, "$this$mutableFloatSetOf_u24lambda_u241":Landroidx/collection/MutableFloatSet;
    const/4 v2, 0x0

    .line 84
    .local v2, "$i$a$-apply-FloatSetKt$mutableFloatSetOf$1":I
    invoke-virtual {v1, p0}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    .end local v1    # "$this$mutableFloatSetOf_u24lambda_u241":Landroidx/collection/MutableFloatSet;
    .end local v2    # "$i$a$-apply-FloatSetKt$mutableFloatSetOf$1":I
    return-object v0
.end method

.method public static final mutableFloatSetOf(FF)Landroidx/collection/MutableFloatSet;
    .locals 3
    .param p0, "element1"    # F
    .param p1, "element2"    # F

    .line 88
    new-instance v0, Landroidx/collection/MutableFloatSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    move-object v1, v0

    .local v1, "$this$mutableFloatSetOf_u24lambda_u242":Landroidx/collection/MutableFloatSet;
    const/4 v2, 0x0

    .line 89
    .local v2, "$i$a$-apply-FloatSetKt$mutableFloatSetOf$2":I
    invoke-virtual {v1, p0}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    .line 90
    invoke-virtual {v1, p1}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    .line 91
    nop

    .line 88
    .end local v1    # "$this$mutableFloatSetOf_u24lambda_u242":Landroidx/collection/MutableFloatSet;
    .end local v2    # "$i$a$-apply-FloatSetKt$mutableFloatSetOf$2":I
    nop

    .line 91
    return-object v0
.end method

.method public static final mutableFloatSetOf(FFF)Landroidx/collection/MutableFloatSet;
    .locals 3
    .param p0, "element1"    # F
    .param p1, "element2"    # F
    .param p2, "element3"    # F

    .line 95
    new-instance v0, Landroidx/collection/MutableFloatSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    move-object v1, v0

    .local v1, "$this$mutableFloatSetOf_u24lambda_u243":Landroidx/collection/MutableFloatSet;
    const/4 v2, 0x0

    .line 96
    .local v2, "$i$a$-apply-FloatSetKt$mutableFloatSetOf$3":I
    invoke-virtual {v1, p0}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    .line 97
    invoke-virtual {v1, p1}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    .line 98
    invoke-virtual {v1, p2}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    .line 99
    nop

    .line 95
    .end local v1    # "$this$mutableFloatSetOf_u24lambda_u243":Landroidx/collection/MutableFloatSet;
    .end local v2    # "$i$a$-apply-FloatSetKt$mutableFloatSetOf$3":I
    nop

    .line 99
    return-object v0
.end method

.method public static final varargs mutableFloatSetOf([F)Landroidx/collection/MutableFloatSet;
    .locals 3
    .param p0, "elements"    # [F

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Landroidx/collection/MutableFloatSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    move-object v1, v0

    .line 887
    .local v1, "$this$mutableFloatSetOf_u24lambda_u244":Landroidx/collection/MutableFloatSet;
    const/4 v2, 0x0

    .line 103
    .local v2, "$i$a$-apply-FloatSetKt$mutableFloatSetOf$4":I
    invoke-virtual {v1, p0}, Landroidx/collection/MutableFloatSet;->plusAssign([F)V

    .end local v1    # "$this$mutableFloatSetOf_u24lambda_u244":Landroidx/collection/MutableFloatSet;
    .end local v2    # "$i$a$-apply-FloatSetKt$mutableFloatSetOf$4":I
    return-object v0
.end method

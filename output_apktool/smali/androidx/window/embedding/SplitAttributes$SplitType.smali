.class public final Landroidx/window/embedding/SplitAttributes$SplitType;
.super Ljava/lang/Object;
.source "SplitAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SplitType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/SplitAttributes$SplitType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/window/embedding/SplitAttributes$SplitType;",
        "",
        "description",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;F)V",
        "getDescription$window_release",
        "()Ljava/lang/String;",
        "getValue$window_release",
        "()F",
        "toString",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

.field public static final SPLIT_TYPE_EQUAL:Landroidx/window/embedding/SplitAttributes$SplitType;

.field public static final SPLIT_TYPE_EXPAND:Landroidx/window/embedding/SplitAttributes$SplitType;

.field public static final SPLIT_TYPE_HINGE:Landroidx/window/embedding/SplitAttributes$SplitType;


# instance fields
.field private final description:Ljava/lang/String;

.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    .line 167
    new-instance v0, Landroidx/window/embedding/SplitAttributes$SplitType;

    const-string v1, "expandContainers"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$SplitType;-><init>(Ljava/lang/String;F)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EXPAND:Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 175
    sget-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;->ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object v0

    sput-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EQUAL:Landroidx/window/embedding/SplitAttributes$SplitType;

    .line 208
    new-instance v0, Landroidx/window/embedding/SplitAttributes$SplitType;

    const-string v1, "hinge"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$SplitType;-><init>(Ljava/lang/String;F)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_HINGE:Landroidx/window/embedding/SplitAttributes$SplitType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "value"    # F

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    .line 90
    iput p2, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    .line 80
    return-void
.end method

.method public static final ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;
    .locals 1
    .param p0, "ratio"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;->ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object v0

    .line 154
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/SplitAttributes$SplitType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 109
    :cond_1
    iget v1, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/SplitAttributes$SplitType;

    iget v3, v3, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/SplitAttributes$SplitType;

    iget-object v3, v3, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final getDescription$window_release()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue$window_release()F
    .locals 1

    .line 90
    iget v0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 117
    iget-object v0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/window/embedding/SplitAttributes$SplitType;->description:Ljava/lang/String;

    return-object v0
.end method

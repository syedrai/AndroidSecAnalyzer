.class public final Landroidx/window/embedding/SplitAttributes$LayoutDirection;
.super Ljava/lang/Object;
.source "SplitAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutDirection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/window/embedding/SplitAttributes$LayoutDirection;",
        "",
        "description",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "getValue$window_release",
        "()I",
        "toString",
        "equals",
        "",
        "other",
        "hashCode",
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
.field public static final BOTTOM_TO_TOP:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field public static final Companion:Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;

.field public static final LEFT_TO_RIGHT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field public static final LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field public static final RIGHT_TO_LEFT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field public static final TOP_TO_BOTTOM:Landroidx/window/embedding/SplitAttributes$LayoutDirection;


# instance fields
.field private final description:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->Companion:Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;

    .line 263
    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    const-string v1, "LOCALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 276
    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LEFT_TO_RIGHT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 289
    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    const-string v1, "RIGHT_TO_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->RIGHT_TO_LEFT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 306
    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    const-string v1, "TOP_TO_BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->TOP_TO_BOTTOM:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 323
    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    const-string v1, "BOTTOM_TO_TOP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->BOTTOM_TO_TOP:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->description:Ljava/lang/String;

    .line 232
    iput p2, p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->value:I

    .line 226
    return-void
.end method

.method public static final getLayoutDirectionFromValue$window_release(I)Landroidx/window/embedding/SplitAttributes$LayoutDirection;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->Companion:Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;->getLayoutDirectionFromValue$window_release(I)Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    move-result-object v0

    .line 335
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 243
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 244
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 245
    :cond_1
    iget-object v1, p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->description:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iget-object v3, v3, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->value:I

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iget v3, v3, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->value:I

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getValue$window_release()I
    .locals 1

    .line 232
    iget v0, p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 249
    iget-object v0, p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 250
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->value:I

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->description:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;
.super Ljava/lang/Enum;
.source "ConstraintSetParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/ConstraintSetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MotionLayoutDebugFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

.field public static final enum NONE:Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

.field public static final enum SHOW_ALL:Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;


# direct methods
.method private static synthetic $values()[Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;
    .locals 3

    .line 254
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    sget-object v1, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;->NONE:Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;->SHOW_ALL:Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;->UNKNOWN:Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 255
    new-instance v0, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;->NONE:Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    .line 256
    new-instance v0, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    const-string v1, "SHOW_ALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;->SHOW_ALL:Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    .line 257
    new-instance v0, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;->UNKNOWN:Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    .line 254
    invoke-static {}, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;->$values()[Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;->$VALUES:[Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 254
    const-class v0, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;
    .locals 1

    .line 254
    sget-object v0, Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;->$VALUES:[Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;

    return-object v0
.end method

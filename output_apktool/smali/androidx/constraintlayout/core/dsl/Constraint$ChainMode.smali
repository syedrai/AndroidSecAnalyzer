.class public final enum Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;
.super Ljava/lang/Enum;
.source "Constraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/dsl/Constraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChainMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

.field public static final enum PACKED:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

.field public static final enum SPREAD:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

.field public static final enum SPREAD_INSIDE:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;


# direct methods
.method private static synthetic $values()[Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;
    .locals 3

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    sget-object v1, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->SPREAD:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->SPREAD_INSIDE:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->PACKED:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    const-string v1, "SPREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->SPREAD:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 108
    new-instance v0, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    const-string v1, "SPREAD_INSIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->SPREAD_INSIDE:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 109
    new-instance v0, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    const-string v1, "PACKED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->PACKED:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 106
    invoke-static {}, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->$values()[Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->$VALUES:[Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

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

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;
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

    .line 106
    const-class v0, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;
    .locals 1

    .line 106
    sget-object v0, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->$VALUES:[Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    return-object v0
.end method

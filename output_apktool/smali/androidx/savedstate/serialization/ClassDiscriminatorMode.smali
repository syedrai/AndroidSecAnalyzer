.class public final Landroidx/savedstate/serialization/ClassDiscriminatorMode;
.super Ljava/lang/Object;
.source "ClassDiscriminatorMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/serialization/ClassDiscriminatorMode$Definition;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0007B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/savedstate/serialization/ClassDiscriminatorMode;",
        "",
        "<init>",
        "()V",
        "ALL_OBJECTS",
        "",
        "POLYMORPHIC",
        "Definition",
        "savedstate_release"
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
.field public static final ALL_OBJECTS:I = 0x1

.field public static final INSTANCE:Landroidx/savedstate/serialization/ClassDiscriminatorMode;

.field public static final POLYMORPHIC:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/savedstate/serialization/ClassDiscriminatorMode;

    invoke-direct {v0}, Landroidx/savedstate/serialization/ClassDiscriminatorMode;-><init>()V

    sput-object v0, Landroidx/savedstate/serialization/ClassDiscriminatorMode;->INSTANCE:Landroidx/savedstate/serialization/ClassDiscriminatorMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

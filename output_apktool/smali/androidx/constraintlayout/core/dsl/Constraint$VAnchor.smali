.class public Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;
.super Landroidx/constraintlayout/core/dsl/Constraint$Anchor;
.source "Constraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/dsl/Constraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VAnchor"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/core/dsl/Constraint;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/core/dsl/Constraint;Landroidx/constraintlayout/core/dsl/Constraint$VSide;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/constraintlayout/core/dsl/Constraint;
    .param p2, "side"    # Landroidx/constraintlayout/core/dsl/Constraint$VSide;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;->this$0:Landroidx/constraintlayout/core/dsl/Constraint;

    .line 37
    invoke-virtual {p2}, Landroidx/constraintlayout/core/dsl/Constraint$VSide;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/constraintlayout/core/dsl/Constraint$Side;->valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/dsl/Constraint$Side;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;-><init>(Landroidx/constraintlayout/core/dsl/Constraint;Landroidx/constraintlayout/core/dsl/Constraint$Side;)V

    .line 38
    return-void
.end method

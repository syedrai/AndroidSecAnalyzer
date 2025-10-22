.class public Landroidx/constraintlayout/core/dsl/KeyPosition;
.super Landroidx/constraintlayout/core/dsl/Keys;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/dsl/KeyPosition$Type;
    }
.end annotation


# instance fields
.field private mFrame:I

.field private mPercentHeight:F

.field private mPercentWidth:F

.field private mPercentX:F

.field private mPercentY:F

.field private mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

.field private mTarget:Ljava/lang/String;

.field private mTransitionEasing:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "firstTarget"    # Ljava/lang/String;
    .param p2, "frame"    # I

    .line 40
    invoke-direct {p0}, Landroidx/constraintlayout/core/dsl/Keys;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTarget:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mFrame:I

    .line 28
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentWidth:F

    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentHeight:F

    .line 30
    iput v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentX:F

    .line 31
    iput v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentY:F

    .line 32
    sget-object v0, Landroidx/constraintlayout/core/dsl/KeyPosition$Type;->CARTESIAN:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTarget:Ljava/lang/String;

    .line 43
    iput p2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mFrame:I

    .line 44
    return-void
.end method


# virtual methods
.method public getFrames()I
    .locals 1

    .line 55
    iget v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mFrame:I

    return v0
.end method

.method public getPercentHeight()F
    .locals 1

    .line 71
    iget v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentHeight:F

    return v0
.end method

.method public getPercentWidth()F
    .locals 1

    .line 63
    iget v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentWidth:F

    return v0
.end method

.method public getPercentX()F
    .locals 1

    .line 79
    iget v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentX:F

    return v0
.end method

.method public getPercentY()F
    .locals 1

    .line 87
    iget v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentY:F

    return v0
.end method

.method public getPositionType()Landroidx/constraintlayout/core/dsl/KeyPosition$Type;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitionEasing()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    return-object v0
.end method

.method public setFrames(I)V
    .locals 0
    .param p1, "frames"    # I

    .line 59
    iput p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mFrame:I

    .line 60
    return-void
.end method

.method public setPercentHeight(F)V
    .locals 0
    .param p1, "percentHeight"    # F

    .line 75
    iput p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentHeight:F

    .line 76
    return-void
.end method

.method public setPercentWidth(F)V
    .locals 0
    .param p1, "percentWidth"    # F

    .line 67
    iput p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentWidth:F

    .line 68
    return-void
.end method

.method public setPercentX(F)V
    .locals 0
    .param p1, "percentX"    # F

    .line 83
    iput p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentX:F

    .line 84
    return-void
.end method

.method public setPercentY(F)V
    .locals 0
    .param p1, "percentY"    # F

    .line 91
    iput p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentY:F

    .line 92
    return-void
.end method

.method public setPositionType(Landroidx/constraintlayout/core/dsl/KeyPosition$Type;)V
    .locals 0
    .param p1, "positionType"    # Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    .line 99
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    .line 100
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTarget:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setTransitionEasing(Ljava/lang/String;)V
    .locals 0
    .param p1, "transitionEasing"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "ret":Ljava/lang/StringBuilder;
    const-string v1, "KeyPositions:{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, "target"

    iget-object v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTarget:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/KeyPosition;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "frame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    if-eqz v1, :cond_0

    .line 119
    const-string/jumbo v1, "type:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    const-string v1, "easing"

    iget-object v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/KeyPosition;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "percentX"

    iget v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentX:F

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/KeyPosition;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 124
    const-string v1, "percentY"

    iget v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentY:F

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/KeyPosition;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 125
    const-string v1, "percentWidth"

    iget v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentWidth:F

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/KeyPosition;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 126
    const-string v1, "percentHeight"

    iget v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentHeight:F

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/KeyPosition;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 128
    const-string/jumbo v1, "},\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

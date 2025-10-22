.class public Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;
.super Ljava/lang/Object;
.source "StateListSizeChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/StateListSizeChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeChangeAmount"
.end annotation


# instance fields
.field amount:F

.field type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;F)V
    .locals 0
    .param p1, "type"    # Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
    .param p2, "amount"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "amount"
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    .line 244
    iput p2, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    .line 245
    return-void
.end method


# virtual methods
.method public getChange(I)I
    .locals 2
    .param p1, "baseSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseSize"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    sget-object v1, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    if-ne v0, v1, :cond_0

    .line 249
    iget v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    int-to-float v1, p1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    sget-object v1, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    if-ne v0, v1, :cond_1

    .line 252
    iget v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    float-to-int v0, v0

    return v0

    .line 254
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.class Landroidx/transition/VelocityTracker1D;
.super Ljava/lang/Object;
.source "VelocityTracker1D.java"


# static fields
.field private static final ASSUME_POINTER_MOVE_STOPPED_MILLIS:I = 0x28

.field private static final HISTORY_SIZE:I = 0x14

.field private static final HORIZON_MILLIS:I = 0x64


# instance fields
.field private mDataSamples:[F

.field private mIndex:I

.field private mTimeSamples:[J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x14

    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    .line 31
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    .line 35
    iget-object v0, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 36
    return-void
.end method

.method private kineticEnergyToVelocity(F)F
    .locals 4
    .param p1, "kineticEnergy"    # F

    .line 139
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public addDataPoint(JF)V
    .locals 2
    .param p1, "timeMillis"    # J
    .param p3, "data"    # F

    .line 47
    iget v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    .line 48
    iget-object v0, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    iget v1, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    aput-wide p1, v0, v1

    .line 49
    iget-object v0, p0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    iget v1, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    aput p3, v0, v1

    .line 50
    return-void
.end method

.method calculateVelocity()F
    .locals 24

    .line 66
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 67
    .local v1, "sampleCount":I
    iget v2, v0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    .line 69
    .local v2, "index":I
    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    if-nez v2, :cond_0

    iget-object v6, v0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v7, v6, v2

    cmp-long v6, v7, v3

    if-nez v6, :cond_0

    .line 70
    return v5

    .line 74
    :cond_0
    iget-object v6, v0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v7, v6, v2

    .line 76
    .local v7, "newestTime":J
    move-wide v9, v7

    .line 81
    .local v9, "previousTime":J
    :cond_1
    iget-object v6, v0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v11, v6, v2

    .line 82
    .local v11, "sampleTime":J
    const/16 v6, 0x14

    cmp-long v13, v11, v3

    if-nez v13, :cond_2

    .line 83
    goto :goto_1

    .line 85
    :cond_2
    sub-long v13, v7, v11

    long-to-float v13, v13

    .line 86
    .local v13, "age":F
    sub-long v14, v11, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    long-to-float v14, v14

    .line 87
    .local v14, "delta":F
    move-wide v9, v11

    .line 89
    const/high16 v15, 0x42c80000    # 100.0f

    cmpl-float v15, v13, v15

    if-gtz v15, :cond_5

    const/high16 v15, 0x42200000    # 40.0f

    cmpl-float v15, v14, v15

    if-lez v15, :cond_3

    .line 90
    goto :goto_1

    .line 93
    :cond_3
    if-nez v2, :cond_4

    const/16 v15, 0x14

    goto :goto_0

    :cond_4
    move v15, v2

    :goto_0
    add-int/lit8 v2, v15, -0x1

    .line 94
    nop

    .end local v11    # "sampleTime":J
    .end local v13    # "age":F
    .end local v14    # "delta":F
    add-int/lit8 v1, v1, 0x1

    .line 95
    if-lt v1, v6, :cond_1

    .line 97
    :cond_5
    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_6

    .line 98
    return v5

    .line 101
    :cond_6
    const/high16 v4, 0x447a0000    # 1000.0f

    if-ne v1, v3, :cond_9

    .line 103
    iget v3, v0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    if-nez v3, :cond_7

    const/16 v3, 0x13

    goto :goto_2

    :cond_7
    iget v3, v0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    add-int/lit8 v3, v3, -0x1

    .line 104
    .local v3, "prevIndex":I
    :goto_2
    iget-object v6, v0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    iget v11, v0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    aget-wide v11, v6, v11

    iget-object v6, v0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v13, v6, v3

    sub-long/2addr v11, v13

    long-to-float v6, v11

    .line 105
    .local v6, "timeDiff":F
    cmpl-float v11, v6, v5

    if-nez v11, :cond_8

    .line 106
    return v5

    .line 108
    :cond_8
    iget-object v5, v0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    iget v11, v0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    aget v5, v5, v11

    iget-object v11, v0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    aget v11, v11, v3

    sub-float/2addr v5, v11

    .line 109
    .local v5, "dataDiff":F
    div-float v11, v5, v6

    mul-float v11, v11, v4

    return v11

    .line 112
    .end local v3    # "prevIndex":I
    .end local v5    # "dataDiff":F
    .end local v6    # "timeDiff":F
    :cond_9
    const/4 v3, 0x0

    .line 113
    .local v3, "work":F
    iget v11, v0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    sub-int/2addr v11, v1

    add-int/2addr v11, v6

    add-int/lit8 v11, v11, 0x1

    rem-int/2addr v11, v6

    .line 114
    .local v11, "startIndex":I
    iget v12, v0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v12, v6

    rem-int/2addr v12, v6

    .line 115
    .local v12, "endIndex":I
    iget-object v13, v0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v9, v13, v11

    .line 116
    iget-object v13, v0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    aget v13, v13, v11

    .line 117
    .local v13, "previousData":F
    add-int/lit8 v14, v11, 0x1

    rem-int/2addr v14, v6

    .local v14, "i":I
    :goto_3
    if-eq v14, v12, :cond_c

    .line 118
    iget-object v15, v0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v16, v15, v14

    .line 119
    .local v16, "time":J
    const/4 v15, 0x0

    const/high16 v18, 0x447a0000    # 1000.0f

    sub-long v4, v16, v9

    .line 120
    .local v4, "timeDelta":J
    const/16 v19, 0x14

    long-to-float v6, v4

    cmpl-float v6, v6, v15

    if-nez v6, :cond_a

    .line 121
    move/from16 v22, v1

    goto :goto_4

    .line 123
    :cond_a
    iget-object v6, v0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    aget v6, v6, v14

    .line 124
    .local v6, "data":F
    invoke-direct {v0, v3}, Landroidx/transition/VelocityTracker1D;->kineticEnergyToVelocity(F)F

    move-result v20

    .line 125
    .local v20, "vPrev":F
    sub-float v21, v6, v13

    .line 127
    .local v21, "dataPointsDelta":F
    long-to-float v15, v4

    div-float v15, v21, v15

    .line 128
    .local v15, "vCurr":F
    sub-float v22, v15, v20

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v23

    mul-float v22, v22, v23

    add-float v3, v3, v22

    .line 129
    move/from16 v22, v1

    .end local v1    # "sampleCount":I
    .local v22, "sampleCount":I
    add-int/lit8 v1, v11, 0x1

    if-ne v14, v1, :cond_b

    .line 130
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v3, v3, v1

    .line 132
    :cond_b
    move-wide/from16 v9, v16

    .line 133
    move v1, v6

    move v13, v1

    .line 117
    .end local v4    # "timeDelta":J
    .end local v6    # "data":F
    .end local v15    # "vCurr":F
    .end local v16    # "time":J
    .end local v20    # "vPrev":F
    .end local v21    # "dataPointsDelta":F
    :goto_4
    add-int/lit8 v1, v14, 0x1

    rem-int/lit8 v14, v1, 0x14

    move/from16 v1, v22

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    const/16 v6, 0x14

    goto :goto_3

    .end local v22    # "sampleCount":I
    .restart local v1    # "sampleCount":I
    :cond_c
    move/from16 v22, v1

    const/high16 v18, 0x447a0000    # 1000.0f

    .line 135
    .end local v1    # "sampleCount":I
    .end local v14    # "i":I
    .restart local v22    # "sampleCount":I
    invoke-direct {v0, v3}, Landroidx/transition/VelocityTracker1D;->kineticEnergyToVelocity(F)F

    move-result v1

    mul-float v1, v1, v18

    return v1
.end method

.method public resetTracking()V
    .locals 3

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    .line 54
    iget-object v0, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 55
    iget-object v0, p0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 56
    return-void
.end method

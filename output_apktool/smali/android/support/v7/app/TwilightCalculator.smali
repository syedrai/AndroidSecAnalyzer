.class Landroid/support/v7/app/TwilightCalculator;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# static fields
.field private static final ALTIDUTE_CORRECTION_CIVIL_TWILIGHT:F = -0.10471976f

.field private static final C1:F = 0.0334196f

.field private static final C2:F = 3.49066E-4f

.field private static final C3:F = 5.236E-6f

.field public static final DAY:I = 0x0

.field private static final DEGREES_TO_RADIANS:F = 0.017453292f

.field private static final J0:F = 9.0E-4f

.field public static final NIGHT:I = 0x1

.field private static final OBLIQUITY:F = 0.4092797f

.field private static final UTC_2000:J = 0xdc6d62da00L

.field private static sInstance:Landroid/support/v7/app/TwilightCalculator;


# instance fields
.field public state:I

.field public sunrise:J

.field public sunset:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Landroid/support/v7/app/TwilightCalculator;
    .locals 1

    .line 31
    sget-object v0, Landroid/support/v7/app/TwilightCalculator;->sInstance:Landroid/support/v7/app/TwilightCalculator;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/support/v7/app/TwilightCalculator;

    invoke-direct {v0}, Landroid/support/v7/app/TwilightCalculator;-><init>()V

    sput-object v0, Landroid/support/v7/app/TwilightCalculator;->sInstance:Landroid/support/v7/app/TwilightCalculator;

    .line 34
    :cond_0
    sget-object v0, Landroid/support/v7/app/TwilightCalculator;->sInstance:Landroid/support/v7/app/TwilightCalculator;

    return-object v0
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .locals 31
    .param p1, "time"    # J
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D

    .line 89
    move-object/from16 v0, p0

    const-wide v1, 0xdc6d62da00L

    sub-long v3, p1, v1

    long-to-float v3, v3

    const v4, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v3, v4

    .line 92
    .local v3, "daysSince2000":F
    const v4, 0x3c8ceb25

    mul-float v4, v4, v3

    const v5, 0x40c7ae92

    add-float/2addr v4, v5

    .line 95
    .local v4, "meanAnomaly":F
    float-to-double v5, v4

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v9, 0x3fa11c5fc0000000L    # 0.03341960161924362

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v4

    float-to-double v7, v7

    .line 96
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v9, 0x3f36e05b00000000L    # 3.4906598739326E-4

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v7, v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v9, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    .line 99
    .local v5, "trueAnomaly":D
    const-wide v7, 0x3ffcbed85e1ce332L    # 1.796593063

    add-double/2addr v7, v5

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v7, v9

    .line 102
    .local v7, "solarLng":D
    move-wide/from16 v9, p5

    neg-double v11, v9

    const-wide v13, 0x4076800000000000L    # 360.0

    div-double/2addr v11, v13

    .line 103
    .local v11, "arcLongitude":D
    const v13, 0x3a6bedfa    # 9.0E-4f

    sub-float v14, v3, v13

    float-to-double v14, v14

    sub-double/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v14, v14

    .line 104
    .local v14, "n":F
    add-float/2addr v13, v14

    move-wide v15, v1

    float-to-double v1, v13

    add-double/2addr v1, v11

    move-wide/from16 v17, v1

    float-to-double v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide v19, 0x3f75b573eab367a1L    # 0.0053

    mul-double v1, v1, v19

    add-double v1, v17, v1

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v17, v17, v7

    .line 105
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    const-wide v19, -0x4083bcd35a858794L    # -0.0069

    mul-double v17, v17, v19

    add-double v1, v1, v17

    .line 108
    .local v1, "solarTransitJ2000":D
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    const-wide v19, 0x3fda31a380000000L    # 0.4092797040939331

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->asin(D)D

    move-result-wide v17

    .line 110
    .local v17, "solarDec":D
    const-wide v19, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v19, v19, p3

    .line 112
    .local v19, "latRad":D
    const-wide v21, -0x4045311600000000L    # -0.10471975803375244

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    .line 113
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    div-double v21, v21, v23

    .line 116
    .local v21, "cosHourAngle":D
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    move/from16 v25, v14

    .end local v14    # "n":F
    .local v25, "n":F
    const-wide/16 v13, -0x1

    cmpl-double v27, v21, v23

    if-ltz v27, :cond_0

    .line 117
    const/4 v15, 0x1

    iput v15, v0, Landroid/support/v7/app/TwilightCalculator;->state:I

    .line 118
    iput-wide v13, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 119
    iput-wide v13, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    .line 120
    return-void

    .line 121
    :cond_0
    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    move-wide/from16 v27, v15

    const/4 v15, 0x0

    cmpg-double v16, v21, v23

    if-gtz v16, :cond_1

    .line 122
    iput v15, v0, Landroid/support/v7/app/TwilightCalculator;->state:I

    .line 123
    iput-wide v13, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 124
    iput-wide v13, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    .line 125
    return-void

    .line 128
    :cond_1
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    const-wide v23, 0x401921fb54442d18L    # 6.283185307179586

    div-double v13, v13, v23

    double-to-float v13, v13

    .line 130
    .local v13, "hourAngle":F
    move-wide/from16 v23, v1

    .end local v1    # "solarTransitJ2000":D
    .local v23, "solarTransitJ2000":D
    float-to-double v1, v13

    add-double v1, v23, v1

    const-wide v29, 0x4194997000000000L    # 8.64E7

    mul-double v1, v1, v29

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    add-long v1, v1, v27

    iput-wide v1, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    .line 131
    float-to-double v1, v13

    sub-double v1, v23, v1

    mul-double v1, v1, v29

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    add-long v1, v1, v27

    iput-wide v1, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    .line 133
    iget-wide v1, v0, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    cmp-long v14, v1, p1

    if-gez v14, :cond_2

    iget-wide v1, v0, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    cmp-long v14, v1, p1

    if-lez v14, :cond_2

    .line 134
    iput v15, v0, Landroid/support/v7/app/TwilightCalculator;->state:I

    goto :goto_0

    .line 136
    :cond_2
    const/4 v15, 0x1

    iput v15, v0, Landroid/support/v7/app/TwilightCalculator;->state:I

    .line 138
    :goto_0
    return-void
.end method

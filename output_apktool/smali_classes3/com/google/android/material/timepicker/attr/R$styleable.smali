.class public final Lcom/google/android/material/timepicker/attr/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/attr/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ClockFaceView:[I

.field public static final ClockFaceView_clockFaceBackgroundColor:I = 0x0

.field public static final ClockFaceView_clockNumberTextColor:I = 0x1

.field public static final ClockHandView:[I

.field public static final ClockHandView_clockHandColor:I = 0x0

.field public static final ClockHandView_materialCircleRadius:I = 0x1

.field public static final ClockHandView_selectorSize:I = 0x2

.field public static final MaterialTimePicker:[I

.field public static final MaterialTimePicker_backgroundTint:I = 0x0

.field public static final MaterialTimePicker_clockIcon:I = 0x1

.field public static final MaterialTimePicker_keyboardIcon:I = 0x2

.field public static final RadialViewGroup:[I

.field public static final RadialViewGroup_materialCircleRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x7f0400e9

    const v1, 0x7f0400ec

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/attr/R$styleable;->ClockFaceView:[I

    const v0, 0x7f040466

    const v1, 0x7f0400ea

    const v2, 0x7f04037e

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/attr/R$styleable;->ClockHandView:[I

    const v0, 0x7f0400eb

    const v1, 0x7f0402d6

    const v3, 0x7f040059

    filled-new-array {v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/attr/R$styleable;->MaterialTimePicker:[I

    filled-new-array {v2}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/attr/R$styleable;->RadialViewGroup:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

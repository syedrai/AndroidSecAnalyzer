.class public final Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
.super Ljava/lang/Object;
.source "StaticLayoutBuilderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
    }
.end annotation


# static fields
.field static final DEFAULT_HYPHENATION_FREQUENCY:I

.field static final DEFAULT_LINE_SPACING_ADD:F = 0.0f

.field static final DEFAULT_LINE_SPACING_MULTIPLIER:F = 1.0f

.field private static constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static textDirection:Ljava/lang/Object;


# instance fields
.field private alignment:Landroid/text/Layout$Alignment;

.field private ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private end:I

.field private hyphenationFrequency:I

.field private includePad:Z

.field private isRtl:Z

.field private lineSpacingAdd:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private final paint:Landroid/text/TextPaint;

.field private source:Ljava/lang/CharSequence;

.field private start:I

.field private staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "paint",
            "width"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    .line 87
    iput-object p2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    .line 88
    iput p3, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->width:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    .line 91
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    .line 92
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    .line 95
    sget v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 98
    return-void
.end method

.method private createConstructorWithReflection()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
        }
    .end annotation

    .line 330
    sget-boolean v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->initialized:Z

    if-eqz v0, :cond_0

    .line 331
    return-void

    .line 336
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 337
    .local v0, "useRtl":Z
    :goto_0
    const-class v3, Landroid/text/TextDirectionHeuristic;

    .line 338
    .local v3, "textDirClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_2
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_1
    sput-object v4, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->textDirection:Ljava/lang/Object;

    .line 340
    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v4, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const-class v1, Landroid/text/TextPaint;

    const/4 v5, 0x3

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v1, v4, v5

    const-class v1, Landroid/text/Layout$Alignment;

    const/4 v5, 0x5

    aput-object v1, v4, v5

    const/4 v1, 0x6

    aput-object v3, v4, v1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x7

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x8

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x9

    aput-object v1, v4, v5

    const-class v1, Landroid/text/TextUtils$TruncateAt;

    const/16 v5, 0xa

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v5, 0xb

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v5, 0xc

    aput-object v1, v4, v5

    .line 357
    .local v4, "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v1, Landroid/text/StaticLayout;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->constructor:Ljava/lang/reflect/Constructor;

    .line 358
    sget-object v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 359
    sput-boolean v2, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->initialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v0    # "useRtl":Z
    .end local v3    # "textDirClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    nop

    .line 363
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;

    invoke-direct {v1, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "paint",
            "width"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/text/StaticLayout;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
        }
    .end annotation

    .line 242
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 243
    const-string v0, ""

    iput-object v0, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    .line 247
    :cond_0
    iget v0, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 248
    .local v3, "availableWidth":I
    iget-object v0, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    .line 249
    .local v0, "textToDraw":Ljava/lang/CharSequence;
    iget v4, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 250
    iget-object v4, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    iget-object v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    int-to-float v7, v3

    iget-object v8, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v6, v7, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 249
    :cond_1
    move-object v4, v0

    .line 253
    .end local v0    # "textToDraw":Ljava/lang/CharSequence;
    .local v4, "textToDraw":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-lt v0, v6, :cond_9

    .line 255
    iget-boolean v0, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    if-eqz v0, :cond_2

    iget v0, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    if-ne v0, v5, :cond_2

    .line 256
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v0, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    .line 260
    :cond_2
    iget v0, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    iget v2, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    iget-object v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    .line 261
    invoke-static {v4, v0, v2, v6, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 263
    .local v0, "builder":Landroid/text/StaticLayout$Builder;
    iget-object v2, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 264
    iget-boolean v2, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 265
    iget-boolean v2, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    if-eqz v2, :cond_3

    .line 266
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 267
    :cond_3
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_1
    nop

    .line 268
    .local v2, "textDirectionHeuristic":Landroid/text/TextDirectionHeuristic;
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 269
    iget-object v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v6, :cond_4

    .line 270
    iget-object v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 272
    :cond_4
    iget v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 273
    iget v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_5

    iget v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    .line 275
    :cond_5
    iget v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    iget v7, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    invoke-virtual {v0, v6, v7}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 277
    :cond_6
    iget v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    if-le v6, v5, :cond_7

    .line 278
    iget v5, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 280
    :cond_7
    iget-object v5, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    if-eqz v5, :cond_8

    .line 281
    iget-object v5, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    invoke-interface {v5, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;->configure(Landroid/text/StaticLayout$Builder;)V

    .line 283
    :cond_8
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v5

    return-object v5

    .line 286
    .end local v0    # "builder":Landroid/text/StaticLayout$Builder;
    .end local v2    # "textDirectionHeuristic":Landroid/text/TextDirectionHeuristic;
    :cond_9
    invoke-direct {v1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->createConstructorWithReflection()V

    .line 289
    :try_start_0
    sget-object v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->constructor:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    iget v6, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    .line 292
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v9, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    .line 293
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    .line 295
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    sget-object v13, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->textDirection:Ljava/lang/Object;

    .line 297
    invoke-static {v13}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 298
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 299
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-boolean v14, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    .line 300
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    iget v2, v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    .line 303
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v17, 0x1

    const/16 v5, 0xd

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v16

    aput-object v6, v5, v17

    const/4 v6, 0x2

    aput-object v9, v5, v6

    const/4 v6, 0x3

    aput-object v10, v5, v6

    const/4 v6, 0x4

    aput-object v11, v5, v6

    const/4 v6, 0x5

    aput-object v12, v5, v6

    const/4 v6, 0x6

    aput-object v13, v5, v6

    const/4 v6, 0x7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    aput-object v8, v5, v6

    const/16 v6, 0x9

    aput-object v14, v5, v6

    const/16 v6, 0xa

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/16 v6, 0xb

    aput-object v15, v5, v6

    const/16 v6, 0xc

    aput-object v2, v5, v6

    .line 290
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    return-object v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v2, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;

    invoke-direct {v2, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alignment"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    .line 124
    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ellipsize"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 224
    return-object p0
.end method

.method public setEnd(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end"
        }
    .end annotation

    .line 163
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    .line 164
    return-object p0
.end method

.method public setHyphenationFrequency(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "hyphenationFrequency"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hyphenationFrequency"
        }
    .end annotation

    .line 208
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    .line 209
    return-object p0
.end method

.method public setIncludePad(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "includePad"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "includePad"
        }
    .end annotation

    .line 138
    iput-boolean p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    .line 139
    return-object p0
.end method

.method public setIsRtl(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "isRtl"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRtl"
        }
    .end annotation

    .line 367
    iput-boolean p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    .line 368
    return-object p0
.end method

.method public setLineSpacing(FF)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "spacingAdd"    # F
    .param p2, "lineSpacingMultiplier"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "spacingAdd",
            "lineSpacingMultiplier"
        }
    .end annotation

    .line 193
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    .line 194
    iput p2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    .line 195
    return-object p0
.end method

.method public setMaxLines(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "maxLines"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxLines"
        }
    .end annotation

    .line 178
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    .line 179
    return-object p0
.end method

.method public setStart(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    .line 150
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    .line 151
    return-object p0
.end method

.method public setStaticLayoutBuilderConfigurer(Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "staticLayoutBuilderConfigurer"    # Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "staticLayoutBuilderConfigurer"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    .line 236
    return-object p0
.end method

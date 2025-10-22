.class Landroid/support/v7/widget/DrawableUtils$Api18Impl;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/DrawableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# static fields
.field private static final sBottom:Ljava/lang/reflect/Field;

.field private static final sGetOpticalInsets:Ljava/lang/reflect/Method;

.field private static final sLeft:Ljava/lang/reflect/Field;

.field private static final sReflectionSuccessful:Z

.field private static final sRight:Ljava/lang/reflect/Field;

.field private static final sTop:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "getOpticalInsets":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 150
    .local v1, "left":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 151
    .local v2, "top":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 152
    .local v3, "right":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 153
    .local v4, "bottom":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .line 156
    .local v5, "success":Z
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "android.graphics.Insets"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 157
    .local v7, "insets":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Landroid/graphics/drawable/Drawable;

    const-string v9, "getOpticalInsets"

    new-array v10, v6, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v0, v8

    .line 158
    const-string v8, "left"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move-object v1, v8

    .line 159
    const-string/jumbo v8, "top"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move-object v2, v8

    .line 160
    const-string v8, "right"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move-object v3, v8

    .line 161
    const-string v8, "bottom"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 162
    const/4 v5, 0x1

    .end local v7    # "insets":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 167
    :catch_0
    move-exception v7

    goto :goto_1

    .line 165
    :catch_1
    move-exception v7

    goto :goto_0

    .line 163
    :catch_2
    move-exception v7

    .line 169
    :goto_0
    nop

    .line 171
    :goto_1
    if-eqz v5, :cond_0

    .line 172
    sput-object v0, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    .line 173
    sput-object v1, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    .line 174
    sput-object v2, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    .line 175
    sput-object v3, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    .line 176
    sput-object v4, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    .line 177
    const/4 v6, 0x1

    sput-boolean v6, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    goto :goto_2

    .line 179
    :cond_0
    const/4 v7, 0x0

    sput-object v7, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    .line 180
    sput-object v7, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    .line 181
    sput-object v7, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    .line 182
    sput-object v7, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    .line 183
    sput-object v7, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    .line 184
    sput-boolean v6, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    .line 186
    .end local v0    # "getOpticalInsets":Ljava/lang/reflect/Method;
    .end local v1    # "left":Ljava/lang/reflect/Field;
    .end local v2    # "top":Ljava/lang/reflect/Field;
    .end local v3    # "right":Ljava/lang/reflect/Field;
    .end local v4    # "bottom":Ljava/lang/reflect/Field;
    .end local v5    # "success":Z
    :goto_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method static getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    sget-boolean v0, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    if-eqz v0, :cond_1

    .line 196
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    .local v0, "insets":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 198
    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    .line 199
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sget-object v4, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    .line 201
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sget-object v5, Landroid/support/v7/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    .line 202
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return-object v1

    .line 197
    .end local v0    # "insets":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    goto :goto_1

    .line 205
    :catch_1
    move-exception v0

    .line 209
    :goto_0
    nop

    .line 211
    :cond_1
    :goto_1
    sget-object v0, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    return-object v0
.end method

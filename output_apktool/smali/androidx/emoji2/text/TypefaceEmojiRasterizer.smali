.class public Landroidx/emoji2/text/TypefaceEmojiRasterizer;
.super Ljava/lang/Object;
.source "TypefaceEmojiRasterizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/TypefaceEmojiRasterizer$HasGlyph;
    }
.end annotation


# static fields
.field static final HAS_GLYPH_ABSENT:I = 0x1

.field static final HAS_GLYPH_EXISTS:I = 0x2

.field static final HAS_GLYPH_UNKNOWN:I

.field private static final sMetadataItem:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/emoji2/text/flatbuffer/MetadataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mCache:I

.field private final mIndex:I

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->sMetadataItem:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;I)V
    .locals 1
    .param p1, "metadataRepo"    # Landroidx/emoji2/text/MetadataRepo;
    .param p2, "index"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    .line 109
    iput-object p1, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 110
    iput p2, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mIndex:I

    .line 111
    return-void
.end method

.method private getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 3

    .line 146
    sget-object v0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->sMetadataItem:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    .line 147
    .local v0, "result":Landroidx/emoji2/text/flatbuffer/MetadataItem;
    if-nez v0, :cond_0

    .line 148
    new-instance v1, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    invoke-direct {v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    move-object v0, v1

    .line 149
    sget-object v1, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->sMetadataItem:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 159
    :cond_0
    iget-object v1, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getMetadataList()Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v1

    iget v2, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mIndex:I

    invoke-virtual {v1, v0, v2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->list(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    .line 160
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 124
    .local v0, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p4}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 125
    .local v1, "oldTypeface":Landroid/graphics/Typeface;
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 130
    iget v2, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mIndex:I

    mul-int/lit8 v5, v2, 0x2

    .line 131
    .local v5, "charArrayStartIndex":I
    iget-object v2, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v2}, Landroidx/emoji2/text/MetadataRepo;->getEmojiCharArray()[C

    move-result-object v4

    const/4 v6, 0x2

    move-object v3, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "paint":Landroid/graphics/Paint;
    .local v3, "canvas":Landroid/graphics/Canvas;
    .local v7, "x":F
    .local v8, "y":F
    .local v9, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 132
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 133
    return-void
.end method

.method public getCodepointAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 292
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepoints(I)I

    move-result v0

    return v0
.end method

.method public getCodepointsLength()I
    .locals 1

    .line 299
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepointsLength()I

    move-result v0

    return v0
.end method

.method public getCompatAdded()S
    .locals 1

    .line 192
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->compatAdded()S

    move-result v0

    return v0
.end method

.method public getHasGlyph()I
    .locals 1

    .line 216
    iget v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 184
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->height()S

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 170
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->id()I

    move-result v0

    return v0
.end method

.method public getSdkAdded()S
    .locals 1

    .line 200
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->sdkAdded()S

    move-result v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 177
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->width()S

    move-result v0

    return v0
.end method

.method public isDefaultEmoji()Z
    .locals 1

    .line 283
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->emojiStyle()Z

    move-result v0

    return v0
.end method

.method public isPreferredSystemRender()Z
    .locals 1

    .line 275
    iget v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetHasGlyphCache()V
    .locals 2

    .line 228
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->isPreferredSystemRender()Z

    move-result v0

    .line 229
    .local v0, "willExclude":Z
    if-eqz v0, :cond_0

    .line 230
    const/4 v1, 0x4

    iput v1, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    goto :goto_0

    .line 232
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    .line 234
    :goto_0
    return-void
.end method

.method public setExclusion(Z)V
    .locals 2
    .param p1, "exclude"    # Z

    .line 261
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getHasGlyph()I

    move-result v0

    .line 262
    .local v0, "hasGlyphBits":I
    if-eqz p1, :cond_0

    .line 263
    or-int/lit8 v1, v0, 0x4

    iput v1, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    goto :goto_0

    .line 265
    :cond_0
    iput v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    .line 267
    :goto_0
    return-void
.end method

.method public setHasGlyph(Z)V
    .locals 1
    .param p1, "hasGlyph"    # Z

    .line 245
    iget v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    and-int/lit8 v0, v0, 0x4

    .line 246
    .local v0, "newValue":I
    if-eqz p1, :cond_0

    .line 247
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 249
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 251
    :goto_0
    iput v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    .line 252
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, ", codepoints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCodepointsLength()I

    move-result v1

    .line 310
    .local v1, "codepointsLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 311
    invoke-virtual {p0, v2}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCodepointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.class final Landroidx/emoji2/text/EmojiProcessor;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;,
        Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;,
        Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;,
        Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;,
        Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;,
        Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;
    }
.end annotation


# static fields
.field private static final ACTION_ADVANCE_BOTH:I = 0x1

.field private static final ACTION_ADVANCE_END:I = 0x2

.field private static final ACTION_FLUSH:I = 0x3

.field private static final MAX_LOOK_AROUND_CHARACTER:I = 0x10


# instance fields
.field private final mEmojiAsDefaultStyleExceptions:[I

.field private mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

.field private final mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$SpanFactory;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[ILjava/util/Set;)V
    .locals 0
    .param p1, "metadataRepo"    # Landroidx/emoji2/text/MetadataRepo;
    .param p2, "spanFactory"    # Landroidx/emoji2/text/EmojiCompat$SpanFactory;
    .param p3, "glyphChecker"    # Landroidx/emoji2/text/EmojiCompat$GlyphChecker;
    .param p4, "useEmojiAsDefaultStyle"    # Z
    .param p5, "emojiAsDefaultStyleExceptions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/emoji2/text/MetadataRepo;",
            "Landroidx/emoji2/text/EmojiCompat$SpanFactory;",
            "Landroidx/emoji2/text/EmojiCompat$GlyphChecker;",
            "Z[I",
            "Ljava/util/Set<",
            "[I>;)V"
        }
    .end annotation

    .line 128
    .local p6, "emojiExclusions":Ljava/util/Set;, "Ljava/util/Set<[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    .line 130
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 131
    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 132
    iput-boolean p4, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    .line 133
    iput-object p5, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    .line 134
    invoke-direct {p0, p6}, Landroidx/emoji2/text/EmojiProcessor;->initExclusions(Ljava/util/Set;)V

    .line 135
    return-void
.end method

.method private static delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 9
    .param p0, "content"    # Landroid/text/Editable;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "forwardDelete"    # Z

    .line 456
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor;->hasModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 457
    return v1

    .line 460
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 461
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 462
    .local v2, "end":I
    invoke-static {v0, v2}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 463
    return v1

    .line 466
    :cond_1
    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p0, v0, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/emoji2/text/EmojiSpan;

    .line 467
    .local v3, "spans":[Landroidx/emoji2/text/EmojiSpan;
    if-eqz v3, :cond_6

    array-length v4, v3

    if-lez v4, :cond_6

    .line 468
    array-length v4, v3

    .line 469
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 470
    aget-object v6, v3, v5

    .line 471
    .local v6, "span":Landroidx/emoji2/text/EmojiSpan;
    invoke-interface {p0, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 472
    .local v7, "spanStart":I
    invoke-interface {p0, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 473
    .local v8, "spanEnd":I
    if-eqz p2, :cond_2

    if-eq v7, v0, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v8, v0, :cond_4

    :cond_3
    if-le v0, v7, :cond_5

    if-ge v0, v8, :cond_5

    .line 476
    :cond_4
    invoke-interface {p0, v7, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 477
    const/4 v1, 0x1

    return v1

    .line 469
    .end local v6    # "span":Landroidx/emoji2/text/EmojiSpan;
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 482
    .end local v4    # "length":I
    .end local v5    # "index":I
    :cond_6
    return v1
.end method

.method static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 11
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "inCodePoints"    # Z

    .line 505
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 509
    :cond_0
    if-ltz p2, :cond_8

    if-gez p3, :cond_1

    goto/16 :goto_1

    .line 513
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 514
    .local v1, "selectionStart":I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 516
    .local v2, "selectionEnd":I
    invoke-static {v1, v2}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 517
    return v0

    .line 522
    :cond_2
    if-eqz p4, :cond_4

    .line 524
    nop

    .line 525
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 524
    invoke-static {p1, v1, v3}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 526
    .local v3, "start":I
    nop

    .line 527
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 526
    invoke-static {p1, v2, v4}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result v4

    .line 529
    .local v4, "end":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    if-ne v4, v5, :cond_5

    .line 531
    :cond_3
    return v0

    .line 534
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_4
    sub-int v3, v1, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 535
    .restart local v3    # "start":I
    add-int v4, v2, p3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 538
    .restart local v4    # "end":I
    :cond_5
    const-class v5, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/emoji2/text/EmojiSpan;

    .line 539
    .local v5, "spans":[Landroidx/emoji2/text/EmojiSpan;
    if-eqz v5, :cond_7

    array-length v6, v5

    if-lez v6, :cond_7

    .line 540
    array-length v6, v5

    .line 541
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    if-ge v7, v6, :cond_6

    .line 542
    aget-object v8, v5, v7

    .line 543
    .local v8, "span":Landroidx/emoji2/text/EmojiSpan;
    invoke-interface {p1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 544
    .local v9, "spanStart":I
    invoke-interface {p1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 545
    .local v10, "spanEnd":I
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 546
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 541
    .end local v8    # "span":Landroidx/emoji2/text/EmojiSpan;
    .end local v9    # "spanStart":I
    .end local v10    # "spanEnd":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 549
    .end local v7    # "index":I
    :cond_6
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 550
    .end local v3    # "start":I
    .local v0, "start":I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 552
    .end local v4    # "end":I
    .local v3, "end":I
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 553
    invoke-interface {p1, v0, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 554
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 555
    const/4 v4, 0x1

    return v4

    .line 558
    .end local v0    # "start":I
    .end local v6    # "length":I
    .local v3, "start":I
    .restart local v4    # "end":I
    :cond_7
    return v0

    .line 510
    .end local v1    # "selectionStart":I
    .end local v2    # "selectionEnd":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "spans":[Landroidx/emoji2/text/EmojiSpan;
    :cond_8
    :goto_1
    return v0

    .line 506
    :cond_9
    :goto_2
    return v0
.end method

.method static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 434
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 442
    const/4 v2, 0x0

    .local v2, "handled":Z
    goto :goto_0

    .line 439
    .end local v2    # "handled":Z
    :sswitch_0
    invoke-static {p0, p2, v0}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result v2

    .line 440
    .restart local v2    # "handled":Z
    goto :goto_0

    .line 436
    .end local v2    # "handled":Z
    :sswitch_1
    invoke-static {p0, p2, v1}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result v2

    .line 437
    .restart local v2    # "handled":Z
    nop

    .line 446
    :goto_0
    if-eqz v2, :cond_0

    .line 447
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 448
    return v0

    .line 451
    :cond_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "rasterizer"    # Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 584
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getHasGlyph()I

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 586
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getSdkAdded()S

    move-result v1

    .line 585
    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/emoji2/text/EmojiCompat$GlyphChecker;->hasGlyph(Ljava/lang/CharSequence;III)Z

    move-result v0

    .line 587
    .local v0, "hasGlyph":Z
    invoke-virtual {p4, v0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->setHasGlyph(Z)V

    .line 590
    .end local v0    # "hasGlyph":Z
    :cond_0
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getHasGlyph()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static hasInvalidSelection(II)Z
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 562
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static hasModifiers(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .line 566
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private initExclusions(Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "[I>;)V"
        }
    .end annotation

    .line 138
    .local p1, "emojiExclusions":Ljava/util/Set;, "Ljava/util/Set<[I>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 142
    .local v1, "codepoints":[I
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([III)V

    move-object v6, v2

    .line 143
    .local v6, "emoji":Ljava/lang/String;
    new-instance v11, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;

    invoke-direct {v11, v6}, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;-><init>(Ljava/lang/String;)V

    .line 144
    .local v11, "callback":Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v7, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    .line 145
    .end local v1    # "codepoints":[I
    .end local v6    # "emoji":Ljava/lang/String;
    .end local v11    # "callback":Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;
    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method

.method private process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;
    .locals 7
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "maxEmojiCount"    # I
    .param p5, "processAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "IIIZ",
            "Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 360
    .local p6, "emojiProcessCallback":Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;, "Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback<TT;>;"
    const/4 v0, 0x0

    .line 361
    .local v0, "addedCount":I
    new-instance v1, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    iget-object v2, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v2}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iget-object v4, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    invoke-direct {v1, v2, v3, v4}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    .line 364
    .local v1, "sm":Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
    move v2, p2

    .line 365
    .local v2, "currentOffset":I
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 366
    .local v3, "codePoint":I
    const/4 v4, 0x1

    .line 368
    .local v4, "keepProcessing":Z
    :goto_0
    if-ge v2, p3, :cond_3

    if-ge v0, p4, :cond_3

    if-eqz v4, :cond_3

    .line 369
    invoke-virtual {v1, v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    move-result v5

    .line 371
    .local v5, "action":I
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 386
    :pswitch_0
    if-nez p5, :cond_0

    .line 387
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v6

    .line 386
    invoke-direct {p0, p1, p2, v2, v6}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 388
    :cond_0
    nop

    .line 389
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v6

    .line 388
    invoke-interface {p6, p1, p2, v2, v6}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    move-result v4

    .line 390
    add-int/lit8 v0, v0, 0x1

    .line 392
    :cond_1
    move p2, v2

    goto :goto_1

    .line 380
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 381
    if-ge v2, p3, :cond_2

    .line 382
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    goto :goto_1

    .line 373
    :pswitch_2
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr p2, v6

    .line 374
    move v2, p2

    .line 375
    if-ge v2, p3, :cond_2

    .line 376
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 395
    .end local v5    # "action":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 401
    :cond_3
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    move-result v5

    if-eqz v5, :cond_5

    if-ge v0, p4, :cond_5

    if-eqz v4, :cond_5

    .line 402
    if-nez p5, :cond_4

    .line 403
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v5

    .line 402
    invoke-direct {p0, p1, p2, v2, v5}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 404
    :cond_4
    nop

    .line 405
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v5

    .line 404
    invoke-interface {p6, p1, p2, v2, v5}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 410
    :cond_5
    invoke-interface {p6}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->getResult()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getEmojiEnd(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 242
    if-ltz p2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    move-object v3, p1

    goto :goto_0

    .line 246
    :cond_0
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 247
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 248
    .local v0, "spanned":Landroid/text/Spanned;
    add-int/lit8 v2, p2, 0x1

    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v0, p2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/EmojiSpan;

    .line 249
    .local v2, "spans":[Landroidx/emoji2/text/EmojiSpan;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 250
    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 255
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroidx/emoji2/text/EmojiSpan;
    :cond_1
    add-int/lit8 v0, p2, -0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 256
    .local v4, "start":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 257
    .local v5, "end":I
    new-instance v8, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    invoke-direct {v8, p2}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;-><init>(I)V

    const v6, 0x7fffffff

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    .local v3, "charSequence":Ljava/lang/CharSequence;
    invoke-direct/range {v2 .. v8}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    iget p1, p1, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->end:I

    return p1

    .line 242
    .end local v3    # "charSequence":Ljava/lang/CharSequence;
    .end local v4    # "start":I
    .end local v5    # "end":I
    .restart local p1    # "charSequence":Ljava/lang/CharSequence;
    :cond_2
    move-object v3, p1

    .line 243
    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    .restart local v3    # "charSequence":Ljava/lang/CharSequence;
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method getEmojiMatch(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 150
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getMetadataVersion()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/EmojiProcessor;->getEmojiMatch(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method getEmojiMatch(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "metadataVersion"    # I

    .line 156
    new-instance v0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iget-object v3, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    .line 158
    .local v0, "sm":Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 159
    .local v1, "end":I
    const/4 v2, 0x0

    .line 160
    .local v2, "currentOffset":I
    const/4 v3, 0x0

    .line 161
    .local v3, "potentialSubsequenceMatch":I
    const/4 v4, 0x0

    .line 163
    .local v4, "subsequenceMatch":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 164
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 165
    .local v5, "codePoint":I
    invoke-virtual {v0, v5}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    move-result v6

    .line 166
    .local v6, "action":I
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v7

    .line 167
    .local v7, "currentNode":Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 171
    :pswitch_0
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v7

    .line 172
    invoke-virtual {v7}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCompatAdded()S

    move-result v8

    if-gt v8, p2, :cond_0

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 183
    :pswitch_1
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v2, v8

    goto :goto_1

    .line 178
    :pswitch_2
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v2, v8

    .line 180
    const/4 v3, 0x0

    .line 181
    nop

    .line 187
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCompatAdded()S

    move-result v8

    if-gt v8, p2, :cond_1

    .line 188
    add-int/lit8 v3, v3, 0x1

    .line 190
    .end local v5    # "codePoint":I
    .end local v6    # "action":I
    .end local v7    # "currentNode":Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    :cond_1
    goto :goto_0

    .line 192
    :cond_2
    const/4 v5, 0x2

    if-eqz v4, :cond_3

    .line 195
    return v5

    .line 198
    :cond_3
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 201
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v6

    .line 202
    .local v6, "exactMatch":Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    invoke-virtual {v6}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCompatAdded()S

    move-result v7

    if-gt v7, p2, :cond_4

    .line 203
    const/4 v5, 0x1

    return v5

    .line 207
    .end local v6    # "exactMatch":Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    :cond_4
    if-nez v3, :cond_5

    .line 208
    const/4 v5, 0x0

    return v5

    .line 210
    :cond_5
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getEmojiStart(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 219
    if-ltz p2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    move-object v3, p1

    goto :goto_0

    .line 223
    :cond_0
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 224
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 225
    .local v0, "spanned":Landroid/text/Spanned;
    add-int/lit8 v2, p2, 0x1

    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v0, p2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/EmojiSpan;

    .line 226
    .local v2, "spans":[Landroidx/emoji2/text/EmojiSpan;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 227
    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 232
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroidx/emoji2/text/EmojiSpan;
    :cond_1
    add-int/lit8 v0, p2, -0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 233
    .local v4, "start":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 234
    .local v5, "end":I
    new-instance v8, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    invoke-direct {v8, p2}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;-><init>(I)V

    const v6, 0x7fffffff

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    .local v3, "charSequence":Ljava/lang/CharSequence;
    invoke-direct/range {v2 .. v8}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    iget p1, p1, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->start:I

    return p1

    .line 219
    .end local v3    # "charSequence":Ljava/lang/CharSequence;
    .end local v4    # "start":I
    .end local v5    # "end":I
    .restart local p1    # "charSequence":Ljava/lang/CharSequence;
    :cond_2
    move-object v3, p1

    .line 220
    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    .restart local v3    # "charSequence":Ljava/lang/CharSequence;
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "maxEmojiCount"    # I
    .param p5, "replaceAll"    # Z

    .line 285
    instance-of v1, p1, Landroidx/emoji2/text/SpannableBuilder;

    .line 286
    .local v1, "isSpannableBuilder":Z
    if-eqz v1, :cond_0

    .line 287
    move-object v0, p1

    check-cast v0, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v0}, Landroidx/emoji2/text/SpannableBuilder;->beginBatchEdit()V

    .line 291
    :cond_0
    const/4 v0, 0x0

    .line 295
    .local v0, "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    if-nez v1, :cond_2

    :try_start_0
    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 297
    :cond_1
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    .line 300
    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x1

    const-class v5, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 303
    .local v2, "nextSpanTransition":I
    if-gt v2, p3, :cond_3

    .line 304
    new-instance v3, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    invoke-direct {v3, p1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_1

    .line 351
    .end local v0    # "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    .end local v2    # "nextSpanTransition":I
    :catchall_0
    move-exception v0

    move-object v3, p1

    move v7, p5

    goto/16 :goto_6

    .line 296
    .restart local v0    # "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    :cond_2
    :goto_0
    :try_start_1
    new-instance v2, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    invoke-direct {v2, v3}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Landroid/text/Spannable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v0, v2

    .line 308
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 309
    :try_start_2
    const-class v2, Landroidx/emoji2/text/EmojiSpan;

    invoke-virtual {v0, p2, p3, v2}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/EmojiSpan;

    .line 310
    .local v2, "spans":[Landroidx/emoji2/text/EmojiSpan;
    if-eqz v2, :cond_6

    array-length v3, v2

    if-lez v3, :cond_6

    .line 313
    array-length v3, v2

    .line 314
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    if-ge v4, v3, :cond_5

    .line 315
    aget-object v5, v2, v4

    .line 316
    .local v5, "span":Landroidx/emoji2/text/EmojiSpan;
    invoke-virtual {v0, v5}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 317
    .local v6, "spanStart":I
    invoke-virtual {v0, v5}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 322
    .local v7, "spanEnd":I
    if-eq v6, p3, :cond_4

    .line 323
    invoke-virtual {v0, v5}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->removeSpan(Ljava/lang/Object;)V

    .line 325
    :cond_4
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    move p2, v8

    .line 326
    invoke-static {v7, p3}, Ljava/lang/Math;->max(II)I

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p3, v8

    .line 314
    .end local v5    # "span":Landroidx/emoji2/text/EmojiSpan;
    .end local v6    # "spanStart":I
    .end local v7    # "spanEnd":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v4, p2

    move v5, p3

    goto :goto_3

    .line 331
    .end local v2    # "spans":[Landroidx/emoji2/text/EmojiSpan;
    .end local v3    # "length":I
    .end local v4    # "index":I
    :cond_6
    move v4, p2

    move v5, p3

    .end local p2    # "start":I
    .end local p3    # "end":I
    .local v4, "start":I
    .local v5, "end":I
    :goto_3
    if-eq v4, v5, :cond_c

    :try_start_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-lt v4, p2, :cond_7

    move-object v3, p1

    move v7, p5

    goto/16 :goto_5

    .line 337
    :cond_7
    const p2, 0x7fffffff

    if-eq p4, p2, :cond_8

    if-eqz v0, :cond_8

    .line 338
    :try_start_4
    invoke-virtual {v0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->length()I

    move-result p2

    const-class p3, Landroidx/emoji2/text/EmojiSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2, p3}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/emoji2/text/EmojiSpan;

    array-length p2, p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sub-int/2addr p4, p2

    move v6, p4

    goto :goto_4

    .line 351
    .end local v0    # "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v7, p5

    move p2, v4

    move p3, v5

    goto/16 :goto_6

    .line 341
    .restart local v0    # "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    :cond_8
    move v6, p4

    .end local p4    # "maxEmojiCount":I
    .local v6, "maxEmojiCount":I
    :goto_4
    :try_start_5
    new-instance v8, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;

    iget-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    invoke-direct {v8, v0, p2}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;-><init>(Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;Landroidx/emoji2/text/EmojiCompat$SpanFactory;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v2, p0

    move-object v3, p1

    move v7, p5

    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    .end local p5    # "replaceAll":Z
    .local v3, "charSequence":Ljava/lang/CharSequence;
    .local v7, "replaceAll":Z
    :try_start_6
    invoke-direct/range {v2 .. v8}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    .line 345
    .end local v0    # "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    .local p1, "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    if-eqz p1, :cond_a

    .line 346
    invoke-virtual {p1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getUnwrappedSpannable()Landroid/text/Spannable;

    move-result-object p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 351
    if-eqz v1, :cond_9

    .line 352
    move-object p3, v3

    check-cast p3, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p3}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 346
    :cond_9
    return-object p2

    .line 348
    :cond_a
    nop

    .line 351
    if-eqz v1, :cond_b

    .line 352
    move-object p2, v3

    check-cast p2, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p2}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 348
    :cond_b
    return-object v3

    .line 351
    .end local p1    # "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    :catchall_2
    move-exception v0

    move p2, v4

    move p3, v5

    move p4, v6

    goto :goto_6

    .end local v3    # "charSequence":Ljava/lang/CharSequence;
    .end local v7    # "replaceAll":Z
    .local p1, "charSequence":Ljava/lang/CharSequence;
    .restart local p5    # "replaceAll":Z
    :catchall_3
    move-exception v0

    move-object v3, p1

    move v7, p5

    move p2, v4

    move p3, v5

    move p4, v6

    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    .end local p5    # "replaceAll":Z
    .restart local v3    # "charSequence":Ljava/lang/CharSequence;
    .restart local v7    # "replaceAll":Z
    goto :goto_6

    .end local v3    # "charSequence":Ljava/lang/CharSequence;
    .end local v6    # "maxEmojiCount":I
    .end local v7    # "replaceAll":Z
    .restart local p1    # "charSequence":Ljava/lang/CharSequence;
    .restart local p4    # "maxEmojiCount":I
    .restart local p5    # "replaceAll":Z
    :catchall_4
    move-exception v0

    move-object v3, p1

    move v7, p5

    move p2, v4

    move p3, v5

    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    .end local p5    # "replaceAll":Z
    .restart local v3    # "charSequence":Ljava/lang/CharSequence;
    .restart local v7    # "replaceAll":Z
    goto :goto_6

    .line 331
    .end local v3    # "charSequence":Ljava/lang/CharSequence;
    .end local v7    # "replaceAll":Z
    .restart local v0    # "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    .restart local p1    # "charSequence":Ljava/lang/CharSequence;
    .restart local p5    # "replaceAll":Z
    :cond_c
    move-object v3, p1

    move v7, p5

    .line 332
    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    .end local p5    # "replaceAll":Z
    .restart local v3    # "charSequence":Ljava/lang/CharSequence;
    .restart local v7    # "replaceAll":Z
    :goto_5
    nop

    .line 351
    if-eqz v1, :cond_d

    .line 352
    move-object p1, v3

    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 332
    :cond_d
    return-object v3

    .line 351
    .end local v0    # "spannable":Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    .end local v3    # "charSequence":Ljava/lang/CharSequence;
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v7    # "replaceAll":Z
    .restart local p1    # "charSequence":Ljava/lang/CharSequence;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    .restart local p5    # "replaceAll":Z
    :catchall_5
    move-exception v0

    move-object v3, p1

    move v7, p5

    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    .end local p5    # "replaceAll":Z
    .restart local v3    # "charSequence":Ljava/lang/CharSequence;
    .restart local v7    # "replaceAll":Z
    :goto_6
    if-eqz v1, :cond_e

    .line 352
    move-object p1, v3

    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 354
    :cond_e
    throw v0
.end method

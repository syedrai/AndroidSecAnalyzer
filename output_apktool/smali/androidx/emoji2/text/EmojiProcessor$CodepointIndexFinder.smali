.class final Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodepointIndexFinder"
.end annotation


# static fields
.field private static final INVALID_INDEX:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 797
    move v0, p1

    .line 798
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 799
    .local v1, "waitingHighSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 800
    .local v2, "length":I
    const/4 v3, -0x1

    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 803
    :cond_0
    if-gez p2, :cond_1

    .line 804
    return v3

    .line 806
    :cond_1
    move v4, p2

    .line 808
    .local v4, "remainingCodePoints":I
    :goto_0
    if-nez v4, :cond_2

    .line 809
    return v0

    .line 812
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 813
    if-gez v0, :cond_4

    .line 814
    if-eqz v1, :cond_3

    .line 815
    return v3

    .line 817
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 820
    :cond_4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 821
    .local v5, "c":C
    if-eqz v1, :cond_6

    .line 822
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 823
    return v3

    .line 825
    :cond_5
    const/4 v1, 0x0

    .line 826
    add-int/lit8 v4, v4, -0x1

    .line 827
    goto :goto_0

    .line 829
    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 830
    add-int/lit8 v4, v4, -0x1

    .line 831
    goto :goto_0

    .line 833
    :cond_7
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 834
    return v3

    .line 836
    :cond_8
    const/4 v1, 0x1

    .line 837
    .end local v5    # "c":C
    goto :goto_0

    .line 801
    .end local v4    # "remainingCodePoints":I
    :cond_9
    :goto_1
    return v3
.end method

.method static findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 853
    move v0, p1

    .line 854
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 855
    .local v1, "waitingLowSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 856
    .local v2, "length":I
    const/4 v3, -0x1

    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 859
    :cond_0
    if-gez p2, :cond_1

    .line 860
    return v3

    .line 862
    :cond_1
    move v4, p2

    .line 865
    .local v4, "remainingCodePoints":I
    :goto_0
    if-nez v4, :cond_2

    .line 866
    return v0

    .line 869
    :cond_2
    if-lt v0, v2, :cond_4

    .line 870
    if-eqz v1, :cond_3

    .line 871
    return v3

    .line 873
    :cond_3
    return v2

    .line 876
    :cond_4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 877
    .local v5, "c":C
    if-eqz v1, :cond_6

    .line 878
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 879
    return v3

    .line 881
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 882
    const/4 v1, 0x0

    .line 883
    add-int/lit8 v0, v0, 0x1

    .line 884
    goto :goto_0

    .line 886
    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 887
    add-int/lit8 v4, v4, -0x1

    .line 888
    add-int/lit8 v0, v0, 0x1

    .line 889
    goto :goto_0

    .line 891
    :cond_7
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 892
    return v3

    .line 894
    :cond_8
    const/4 v1, 0x1

    .line 895
    nop

    .end local v5    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 896
    goto :goto_0

    .line 857
    .end local v4    # "remainingCodePoints":I
    :cond_9
    :goto_1
    return v3
.end method

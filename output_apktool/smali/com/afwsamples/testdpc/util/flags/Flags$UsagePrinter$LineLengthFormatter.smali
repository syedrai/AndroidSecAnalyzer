.class final Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LineLengthFormatter"
.end annotation


# static fields
.field private static final LINE_LENGTH_LIMIT_CHARS:I = 0x50


# instance fields
.field private final lineWrapSeparator:Ljava/lang/String;

.field private final paddingOnAdditionalLine:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mprintText(Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;->printText(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "paddingOnAdditionalLine"    # Ljava/lang/String;
    .param p2, "lineWrapSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paddingOnAdditionalLine",
            "lineWrapSeparator"
        }
    .end annotation

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;->paddingOnAdditionalLine:Ljava/lang/String;

    .line 740
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;->lineWrapSeparator:Ljava/lang/String;

    .line 741
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private printText(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p1, "printWriter"    # Ljava/io/PrintWriter;
    .param p2, "text"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "printWriter",
            "text"
        }
    .end annotation

    .line 744
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 746
    .local v0, "textLength":I
    const/16 v1, 0x50

    if-le v0, v1, :cond_8

    .line 747
    add-int/lit8 v1, v0, -0x1

    .line 748
    .local v1, "textLastCharIndex":I
    const/16 v2, 0x4f

    .line 750
    .local v2, "lineLastCharIndex":I
    const/4 v3, 0x0

    .line 751
    .local v3, "currentLineStartIndex":I
    move v4, v2

    .line 753
    .local v4, "currentLineEndIndex":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .local v5, "multiLineBuilder":Ljava/lang/StringBuilder;
    :goto_0
    if-ge v3, v0, :cond_7

    .line 756
    const/4 v6, -0x1

    .line 758
    .local v6, "cutOffIndex":I
    if-lt v4, v1, :cond_0

    .line 759
    move v6, v0

    goto :goto_4

    .line 761
    :cond_0
    iget-object v7, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;->lineWrapSeparator:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v4, v7

    .line 763
    move v7, v3

    .line 764
    .local v7, "currentCharIndex":I
    :goto_1
    add-int/lit8 v8, v4, 0x1

    if-gt v7, v8, :cond_2

    .line 766
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 767
    move v6, v7

    .line 765
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 771
    .end local v7    # "currentCharIndex":I
    :cond_2
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 772
    move v8, v4

    .line 773
    .local v8, "currentCharIndex":I
    :goto_2
    if-ge v8, v0, :cond_4

    .line 775
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 776
    move v6, v8

    .line 777
    goto :goto_3

    .line 774
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 782
    .end local v8    # "currentCharIndex":I
    :cond_4
    :goto_3
    if-ne v6, v7, :cond_5

    .line 783
    move v6, v0

    .line 787
    :cond_5
    :goto_4
    invoke-virtual {v5, p2, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 789
    add-int/lit8 v3, v6, 0x1

    .line 790
    add-int v7, v3, v2

    iget-object v8, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;->paddingOnAdditionalLine:Ljava/lang/String;

    .line 793
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    .line 791
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 795
    if-ge v6, v1, :cond_6

    .line 796
    iget-object v7, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;->lineWrapSeparator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 798
    iget-object v7, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;->paddingOnAdditionalLine:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .end local v6    # "cutOffIndex":I
    :cond_6
    goto :goto_0

    .line 802
    :cond_7
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 803
    .end local v1    # "textLastCharIndex":I
    .end local v2    # "lineLastCharIndex":I
    .end local v3    # "currentLineStartIndex":I
    .end local v4    # "currentLineEndIndex":I
    .end local v5    # "multiLineBuilder":Ljava/lang/StringBuilder;
    goto :goto_5

    .line 804
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 806
    :goto_5
    return-void
.end method

.class final Lj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringLiteralPrinterParser"
.end annotation


# instance fields
.field private final literal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;

    .line 2600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2601
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    .line 2602
    return-void
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2606
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 7
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2612
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2613
    .local v0, "length":I
    if-gt p3, v0, :cond_1

    if-ltz p3, :cond_1

    .line 2616
    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .local v1, "context":Lj$/time/format/DateTimeParseContext;
    .local v2, "text":Ljava/lang/CharSequence;
    .local v3, "position":I
    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2617
    not-int p1, v3

    return p1

    .line 2619
    :cond_0
    iget-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int p3, v3, p1

    return p3

    .line 2613
    .end local v1    # "context":Lj$/time/format/DateTimeParseContext;
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "position":I
    .restart local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .restart local p2    # "text":Ljava/lang/CharSequence;
    .restart local p3    # "position":I
    :cond_1
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2614
    .end local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "position":I
    .restart local v1    # "context":Lj$/time/format/DateTimeParseContext;
    .restart local v2    # "text":Ljava/lang/CharSequence;
    .restart local v3    # "position":I
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2624
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    const-string v1, "\'\'"

    const-string v2, "\'"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2625
    .local v0, "converted":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

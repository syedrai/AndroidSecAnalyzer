.class final Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
.super Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FractionPrinterParser"
.end annotation


# instance fields
.field private final decimalPoint:Z


# direct methods
.method constructor <init>(Lj$/time/temporal/TemporalField;IIZ)V
    .locals 6
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .line 3090
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "field":Lj$/time/temporal/TemporalField;
    .end local p2    # "minWidth":I
    .end local p3    # "maxWidth":I
    .end local p4    # "decimalPoint":Z
    .local v1, "field":Lj$/time/temporal/TemporalField;
    .local v2, "minWidth":I
    .local v3, "maxWidth":I
    .local v4, "decimalPoint":Z
    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIZI)V

    .line 3091
    const-string p1, "field"

    invoke-static {v1, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3092
    invoke-interface {v1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/ValueRange;->isFixed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3095
    if-ltz v2, :cond_2

    const/16 p1, 0x9

    if-gt v2, p1, :cond_2

    .line 3098
    const/4 p2, 0x1

    if-lt v3, p2, :cond_1

    if-gt v3, p1, :cond_1

    .line 3101
    if-lt v3, v2, :cond_0

    .line 3105
    return-void

    .line 3102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " < "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3099
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3096
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3093
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Field must have a fixed set of values: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lj$/time/temporal/TemporalField;IIZI)V
    .locals 6
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z
    .param p5, "subsequentWidth"    # I

    .line 3117
    sget-object v4, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    .end local p1    # "field":Lj$/time/temporal/TemporalField;
    .end local p2    # "minWidth":I
    .end local p3    # "maxWidth":I
    .end local p5    # "subsequentWidth":I
    .local v1, "field":Lj$/time/temporal/TemporalField;
    .local v2, "minWidth":I
    .local v3, "maxWidth":I
    .local v5, "subsequentWidth":I
    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    .line 3118
    iput-boolean p4, v0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    .line 3119
    return-void
.end method

.method private convertFromFraction(Ljava/math/BigDecimal;)J
    .locals 6
    .param p1, "fraction"    # Ljava/math/BigDecimal;

    .line 3274
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-interface {v0}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 3275
    .local v0, "range":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3276
    .local v1, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3277
    .local v2, "rangeBD":Ljava/math/BigDecimal;
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3278
    .local v3, "valueBD":Ljava/math/BigDecimal;
    invoke-virtual {v3}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v4

    return-wide v4
.end method

.method private convertToFraction(J)Ljava/math/BigDecimal;
    .locals 6
    .param p1, "value"    # J

    .line 3247
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-interface {v0}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 3248
    .local v0, "range":Lj$/time/temporal/ValueRange;
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {v0, p1, p2, v1}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    .line 3249
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3250
    .local v1, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3251
    .local v2, "rangeBD":Ljava/math/BigDecimal;
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3252
    .local v3, "valueBD":Ljava/math/BigDecimal;
    const/16 v4, 0x9

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v3, v2, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 3254
    .local v4, "fraction":Ljava/math/BigDecimal;
    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    :goto_0
    return-object v5
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 6
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3162
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3163
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 3164
    const/4 v1, 0x0

    return v1

    .line 3166
    :cond_0
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v1

    .line 3167
    .local v1, "decimalStyle":Lj$/time/format/DecimalStyle;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertToFraction(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3168
    .local v2, "fraction":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    if-nez v3, :cond_3

    .line 3169
    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-lez v3, :cond_5

    .line 3170
    iget-boolean v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v3, :cond_1

    .line 3171
    invoke-virtual {v1}, Lj$/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3173
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-ge v3, v4, :cond_2

    .line 3174
    invoke-virtual {v1}, Lj$/time/format/DecimalStyle;->getZeroDigit()C

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_2
    goto :goto_1

    .line 3178
    :cond_3
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3179
    .local v3, "outputScale":I
    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3180
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3181
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lj$/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3182
    iget-boolean v5, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v5, :cond_4

    .line 3183
    invoke-virtual {v1}, Lj$/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3185
    :cond_4
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3187
    .end local v3    # "outputScale":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_5
    :goto_1
    const/4 v3, 0x1

    return v3
.end method

.method isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z
    .locals 2
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;

    .line 3154
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-nez v0, :cond_0

    .line 3155
    const/4 v0, 0x1

    return v0

    .line 3157
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 12
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3192
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    .line 3193
    .local v0, "effectiveMin":I
    :goto_1
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->isFixedWidth(Lj$/time/format/DateTimeParseContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    goto :goto_3

    :cond_3
    :goto_2
    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    .line 3194
    .local v1, "effectiveMax":I
    :goto_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 3195
    .local v2, "length":I
    if-ne p3, v2, :cond_5

    .line 3197
    if-lez v0, :cond_4

    not-int v3, p3

    goto :goto_4

    :cond_4
    move v3, p3

    :goto_4
    return v3

    .line 3199
    :cond_5
    iget-boolean v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v3, :cond_8

    .line 3200
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v4

    if-eq v3, v4, :cond_7

    .line 3202
    if-lez v0, :cond_6

    not-int v3, p3

    goto :goto_5

    :cond_6
    move v3, p3

    :goto_5
    return v3

    .line 3204
    :cond_7
    add-int/lit8 p3, p3, 0x1

    move v7, p3

    goto :goto_6

    .line 3199
    :cond_8
    move v7, p3

    .line 3206
    .end local p3    # "position":I
    .local v7, "position":I
    :goto_6
    add-int p3, v7, v0

    .line 3207
    .local p3, "minEndPos":I
    if-le p3, v2, :cond_9

    .line 3208
    not-int v3, v7

    return v3

    .line 3210
    :cond_9
    add-int v3, v7, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 3211
    .local v9, "maxEndPos":I
    const/4 v3, 0x0

    .line 3212
    .local v3, "total":I
    move v4, v7

    move v10, v3

    .line 3213
    .end local v3    # "total":I
    .local v4, "pos":I
    .local v10, "total":I
    :goto_7
    if-ge v4, v9, :cond_c

    .line 3214
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .local v3, "pos":I
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 3215
    .local v4, "ch":C
    invoke-virtual {p1}, Lj$/time/format/DateTimeParseContext;->getDecimalStyle()Lj$/time/format/DecimalStyle;

    move-result-object v5

    invoke-virtual {v5, v4}, Lj$/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v5

    .line 3216
    .local v5, "digit":I
    if-gez v5, :cond_b

    .line 3217
    if-ge v3, p3, :cond_a

    .line 3218
    not-int v6, v7

    return v6

    .line 3220
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 3221
    move v8, v3

    goto :goto_8

    .line 3223
    :cond_b
    mul-int/lit8 v6, v10, 0xa

    add-int v10, v6, v5

    .line 3224
    .end local v4    # "ch":C
    .end local v5    # "digit":I
    move v4, v3

    goto :goto_7

    .line 3213
    .end local v3    # "pos":I
    .local v4, "pos":I
    :cond_c
    move v8, v4

    .line 3225
    .end local v4    # "pos":I
    .local v8, "pos":I
    :goto_8
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v10}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int v4, v8, v7

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v11

    .line 3226
    .local v11, "fraction":Ljava/math/BigDecimal;
    invoke-direct {p0, v11}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertFromFraction(Ljava/math/BigDecimal;)J

    move-result-wide v5

    .line 3227
    .local v5, "value":J
    iget-object v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    move-object v3, p1

    .end local p1    # "context":Lj$/time/format/DateTimeParseContext;
    .local v3, "context":Lj$/time/format/DateTimeParseContext;
    invoke-virtual/range {v3 .. v8}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 3283
    iget-boolean v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v0, :cond_0

    const-string v0, ",DecimalPoint"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3284
    .local v0, "decimal":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fraction("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    .locals 8

    .line 3128
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3129
    return-object p0

    .line 3131
    :cond_0
    new-instance v2, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    iget-boolean v6, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIZI)V

    return-object v2
.end method

.method bridge synthetic withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 1

    .line 3078
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    .locals 6
    .param p1, "subsequentWidth"    # I

    .line 3142
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lj$/time/temporal/TemporalField;

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    iget v3, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    iget-boolean v4, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    iget v5, p0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->subsequentWidth:I

    add-int/2addr v5, p1

    invoke-direct/range {v0 .. v5}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIZI)V

    return-object v0
.end method

.method bridge synthetic withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 0

    .line 3078
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    move-result-object p1

    return-object p1
.end method

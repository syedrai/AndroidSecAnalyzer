.class public Lorg/bouncycastle/math/ec/tools/TraceOptimizer;
.super Ljava/lang/Object;
.source "TraceOptimizer.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final R:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/tools/TraceOptimizer;->ONE:Ljava/math/BigInteger;

    .line 24
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/tools/TraceOptimizer;->R:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateTrace(Lorg/bouncycastle/math/ec/ECFieldElement;)I
    .locals 6
    .param p0, "fe"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fe"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    .line 141
    .local v0, "m":I
    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    .line 142
    .local v1, "k":I
    const/4 v2, 0x1

    .line 144
    .local v2, "mk":I
    move-object v3, p0

    .line 145
    .local v3, "tr":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 147
    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 148
    add-int/lit8 v1, v1, -0x1

    ushr-int v2, v0, v1

    .line 149
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    const/4 v4, 0x0

    return v4

    .line 159
    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    const/4 v4, 0x1

    return v4

    .line 163
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Internal error in trace calculation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static enumToList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 2
    .param p0, "en"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "en"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "rv":Ljava/util/List;
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_0
    return-object v0
.end method

.method public static implPrintNonZeroTraceBits(Lorg/bouncycastle/math/ec/ECCurve;)V
    .locals 10
    .param p0, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    .line 67
    .local v0, "m":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "nonZeroTraceBits":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 77
    and-int/lit8 v3, v2, 0x1

    const-string v4, " "

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 79
    ushr-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_0
    sget-object v3, Lorg/bouncycastle/math/ec/tools/TraceOptimizer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 89
    .local v3, "zi":Ljava/math/BigInteger;
    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 90
    .local v5, "fe":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-static {v5}, Lorg/bouncycastle/math/ec/tools/TraceOptimizer;->calculateTrace(Lorg/bouncycastle/math/ec/ECFieldElement;)I

    move-result v6

    .line 91
    .local v6, "tr":I
    if-eqz v6, :cond_1

    .line 94
    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 75
    .end local v3    # "zi":Ljava/math/BigInteger;
    .end local v5    # "fe":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "tr":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 107
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_6

    .line 109
    new-instance v3, Ljava/math/BigInteger;

    sget-object v4, Lorg/bouncycastle/math/ec/tools/TraceOptimizer;->R:Ljava/security/SecureRandom;

    invoke-direct {v3, v0, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 110
    .local v3, "x":Ljava/math/BigInteger;
    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 111
    .local v4, "fe":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-static {v4}, Lorg/bouncycastle/math/ec/tools/TraceOptimizer;->calculateTrace(Lorg/bouncycastle/math/ec/ECFieldElement;)I

    move-result v5

    .line 113
    .local v5, "check":I
    const/4 v6, 0x0

    .line 114
    .restart local v6    # "tr":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 116
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 117
    .local v8, "bit":I
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 119
    xor-int/lit8 v6, v6, 0x1

    .line 114
    .end local v8    # "bit":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 123
    .end local v7    # "j":I
    :cond_4
    if-ne v5, v6, :cond_5

    .line 107
    .end local v3    # "x":Ljava/math/BigInteger;
    .end local v4    # "fe":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "check":I
    .end local v6    # "tr":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
    .restart local v3    # "x":Ljava/math/BigInteger;
    .restart local v4    # "fe":Lorg/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "check":I
    .restart local v6    # "tr":I
    :cond_5
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Optimized-trace sanity check failed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 129
    .end local v2    # "i":I
    .end local v3    # "x":Ljava/math/BigInteger;
    .end local v4    # "fe":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "check":I
    .end local v6    # "tr":I
    :cond_6
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/tools/TraceOptimizer;->enumToList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 29
    .local v0, "names":Ljava/util/SortedSet;
    invoke-static {}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/tools/TraceOptimizer;->enumToList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 32
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByNameLazy(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v3

    .line 36
    .local v3, "x9":Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v3, :cond_0

    .line 38
    invoke-static {v2}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByNameLazy(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v3

    .line 40
    :cond_0
    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 43
    .local v4, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-static {v4}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 47
    invoke-static {v4}, Lorg/bouncycastle/math/ec/tools/TraceOptimizer;->implPrintNonZeroTraceBits(Lorg/bouncycastle/math/ec/ECCurve;)V

    .line 50
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "x9":Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
    .end local v4    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    :cond_1
    goto :goto_0

    .line 51
    :cond_2
    return-void
.end method

.method public static printNonZeroTraceBits(Lorg/bouncycastle/math/ec/ECCurve;)V
    .locals 2
    .param p0, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0}, Lorg/bouncycastle/math/ec/tools/TraceOptimizer;->implPrintNonZeroTraceBits(Lorg/bouncycastle/math/ec/ECCurve;)V

    .line 61
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trace only defined over characteristic-2 fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

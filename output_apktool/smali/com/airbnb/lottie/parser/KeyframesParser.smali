.class Lcom/airbnb/lottie/parser/KeyframesParser;
.super Ljava/lang/Object;
.source "KeyframesParser.java"


# static fields
.field static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "k"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/KeyframesParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;
    .locals 9
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "scale"    # F
    .param p4, "multiDimensional"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "composition",
            "scale",
            "valueParser",
            "multiDimensional"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    .local p3, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<TT;>;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_0

    .line 24
    const-string v1, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 25
    return-object v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    sget-object v1, Lcom/airbnb/lottie/parser/KeyframesParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 49
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    .end local p0    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .end local p1    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .end local p2    # "scale":F
    .end local p3    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .end local p4    # "multiDimensional":Z
    .local v1, "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .local v2, "composition":Lcom/airbnb/lottie/LottieComposition;
    .local v3, "scale":F
    .local v4, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .local v6, "multiDimensional":Z
    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 32
    .end local v1    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .end local v2    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .end local v3    # "scale":F
    .end local v4    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .end local v6    # "multiDimensional":Z
    .restart local p0    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .restart local p1    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .restart local p2    # "scale":F
    .restart local p3    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .restart local p4    # "multiDimensional":Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_1

    .line 37
    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v8, p4

    .end local p0    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .end local p1    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .end local p2    # "scale":F
    .end local p3    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .end local p4    # "multiDimensional":Z
    .local v3, "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .local v4, "composition":Lcom/airbnb/lottie/LottieComposition;
    .local v5, "scale":F
    .local v6, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .local v8, "multiDimensional":Z
    invoke-static/range {v3 .. v8}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object p0

    move-object v1, v3

    move-object v2, v4

    move v3, v5

    move-object v4, v6

    move v6, v8

    .end local v5    # "scale":F
    .end local v8    # "multiDimensional":Z
    .restart local v1    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .restart local v2    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .local v3, "scale":F
    .local v4, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .local v6, "multiDimensional":Z
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    .end local v1    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .end local v2    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .end local v3    # "scale":F
    .end local v4    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .end local v6    # "multiDimensional":Z
    .restart local p0    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .restart local p1    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .restart local p2    # "scale":F
    .restart local p3    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .restart local p4    # "multiDimensional":Z
    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    .line 39
    .end local p0    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .end local p1    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .end local p2    # "scale":F
    .end local p3    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .end local p4    # "multiDimensional":Z
    .restart local v1    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .restart local v2    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .restart local v3    # "scale":F
    .restart local v4    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .restart local v6    # "multiDimensional":Z
    :goto_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 40
    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_2
    :goto_2
    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    move-object p0, v1

    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move p4, v6

    goto :goto_0

    .line 45
    .end local v1    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .end local v2    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .end local v3    # "scale":F
    .end local v4    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .end local v6    # "multiDimensional":Z
    .restart local p0    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .restart local p1    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .restart local p2    # "scale":F
    .restart local p3    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .restart local p4    # "multiDimensional":Z
    :cond_3
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    .end local p0    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .end local p1    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .end local p2    # "scale":F
    .end local p3    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .end local p4    # "multiDimensional":Z
    .restart local v1    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .restart local v2    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .restart local v3    # "scale":F
    .restart local v4    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .restart local v6    # "multiDimensional":Z
    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    move-object p0, v1

    goto :goto_0

    .line 52
    .end local v1    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .end local v2    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .end local v3    # "scale":F
    .end local v4    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .end local v6    # "multiDimensional":Z
    .restart local p0    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .restart local p1    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .restart local p2    # "scale":F
    .restart local p3    # "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    .restart local p4    # "multiDimensional":Z
    :cond_4
    move-object v1, p0

    .end local p0    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .restart local v1    # "reader":Lcom/airbnb/lottie/parser/moshi/JsonReader;
    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 54
    invoke-static {v0}, Lcom/airbnb/lottie/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    .line 55
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static setEndFrames(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyframes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/value/Keyframe<TT;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    .line 66
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 67
    .local v2, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/value/Keyframe;

    .line 68
    .local v3, "nextKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    iget v4, v3, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 69
    iget-object v4, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 70
    iget-object v4, v3, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object v4, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 71
    instance-of v4, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    if-eqz v4, :cond_0

    .line 72
    move-object v4, v2

    check-cast v4, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->createPath()V

    .line 64
    .end local v2    # "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    .end local v3    # "nextKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 77
    .local v1, "lastKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<*>;"
    iget-object v2, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v2, :cond_3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 80
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    :cond_3
    return-void
.end method

.class public Lj$/sun/nio/cs/UTF_16BE;
.super Lj$/sun/nio/cs/Unicode;
.source "UTF_16BE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/UTF_16BE$Decoder;,
        Lj$/sun/nio/cs/UTF_16BE$Encoder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    const-string v0, "UTF-16BE"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_UTF_16BE()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/sun/nio/cs/Unicode;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/nio/charset/Charset;)Z
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lj$/sun/nio/cs/Unicode;->contains(Ljava/nio/charset/Charset;)Z

    move-result p1

    return p1
.end method

.method public historicalName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "UnicodeBigUnmarked"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .line 44
    new-instance v0, Lj$/sun/nio/cs/UTF_16BE$Decoder;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/UTF_16BE$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 48
    new-instance v0, Lj$/sun/nio/cs/UTF_16BE$Encoder;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/UTF_16BE$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

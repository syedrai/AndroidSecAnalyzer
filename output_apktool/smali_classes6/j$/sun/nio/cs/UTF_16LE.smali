.class public Lj$/sun/nio/cs/UTF_16LE;
.super Lj$/sun/nio/cs/Unicode;
.source "UTF_16LE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/UTF_16LE$Decoder;,
        Lj$/sun/nio/cs/UTF_16LE$Encoder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    const-string v0, "UTF-16LE"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_UTF_16LE()[Ljava/lang/String;

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
    const-string v0, "UnicodeLittleUnmarked"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .line 44
    new-instance v0, Lj$/sun/nio/cs/UTF_16LE$Decoder;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/UTF_16LE$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 48
    new-instance v0, Lj$/sun/nio/cs/UTF_16LE$Encoder;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/UTF_16LE$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

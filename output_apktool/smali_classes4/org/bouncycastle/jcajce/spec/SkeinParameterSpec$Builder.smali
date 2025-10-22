.class public Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
.super Ljava/lang/Object;
.source "SkeinParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    .line 157
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;)V
    .locals 4
    .param p1, "params"    # Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    .line 161
    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->-$$Nest$fgetparameters(Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    .local v0, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 165
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->-$$Nest$fgetparameters(Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;
    .locals 3

    .line 324
    new-instance v0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;-><init>(Ljava/util/Map;Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec-IA;)V

    return-object v0
.end method

.method public set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    .line 185
    if-eqz p2, :cond_3

    .line 189
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    if-le p1, v0, :cond_0

    const/16 v1, 0x3f

    if-ge p1, v1, :cond_0

    const/16 v1, 0x30

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter types must be in the range 0,5..47,49..62."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    :goto_0
    if-eq p1, v0, :cond_2

    .line 199
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-object p0

    .line 196
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter type 4 is reserved for internal use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter value must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKey([B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setKeyIdentifier([B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 1
    .param p1, "keyIdentifier"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyIdentifier"
        }
    .end annotation

    .line 305
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNonce([B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 1
    .param p1, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonce"
        }
    .end annotation

    .line 315
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "distinguisher"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "date",
            "emailAddress",
            "distinguisher"
        }
    .end annotation

    .line 236
    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 238
    .local v2, "out":Ljava/io/OutputStreamWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 239
    .local v3, "format":Ljava/text/DateFormat;
    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v2, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 245
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 247
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/OutputStreamWriter;
    .end local v3    # "format":Ljava/text/DateFormat;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Byte I/O failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "dateLocale"    # Ljava/util/Locale;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "distinguisher"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "date",
            "dateLocale",
            "emailAddress",
            "distinguisher"
        }
    .end annotation

    .line 271
    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 272
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 273
    .local v2, "out":Ljava/io/OutputStreamWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v3, v4, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 274
    .local v3, "format":Ljava/text/DateFormat;
    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2, p4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 280
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 282
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/OutputStreamWriter;
    .end local v3    # "format":Ljava/text/DateFormat;
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Byte I/O failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPersonalisation([B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 1
    .param p1, "personalisation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "personalisation"
        }
    .end annotation

    .line 216
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPublicKey([B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 1
    .param p1, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 295
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method

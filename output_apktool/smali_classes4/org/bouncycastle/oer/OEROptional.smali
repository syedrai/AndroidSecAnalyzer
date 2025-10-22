.class public Lorg/bouncycastle/oer/OEROptional;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "OEROptional.java"


# static fields
.field public static final ABSENT:Lorg/bouncycastle/oer/OEROptional;


# instance fields
.field private final defined:Z

.field private final value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static bridge synthetic -$$Nest$fgetvalue(Lorg/bouncycastle/oer/OEROptional;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lorg/bouncycastle/oer/OEROptional;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OEROptional;-><init>(ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    return-void
.end method

.method private constructor <init>(ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "defined"    # Z
    .param p2, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defined",
            "value"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    .line 26
    iput-object p2, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 27
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 31
    instance-of v0, p0, Lorg/bouncycastle/oer/OEROptional;

    if-eqz v0, :cond_0

    .line 33
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/OEROptional;

    return-object v0

    .line 35
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lorg/bouncycastle/oer/OEROptional;

    const/4 v1, 0x1

    move-object v2, p0

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OEROptional;-><init>(ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 39
    :cond_1
    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    return-object v0
.end method

.method public static getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 44
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v0

    .line 45
    .local v0, "o":Lorg/bouncycastle/oer/OEROptional;
    iget-boolean v1, v0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x0

    return-object v1

    .line 49
    :cond_0
    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OEROptional;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 130
    return v0

    .line 132
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    return v1

    .line 141
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/oer/OEROptional;

    .line 143
    .local v2, "that":Lorg/bouncycastle/oer/OEROptional;
    iget-boolean v3, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    iget-boolean v4, v2, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-eq v3, v4, :cond_3

    .line 145
    return v1

    .line 147
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, v2, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    .end local v2    # "that":Lorg/bouncycastle/oer/OEROptional;
    :cond_6
    :goto_1
    return v1
.end method

.method public get()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 63
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/OEROptional$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/oer/OEROptional$1;-><init>(Lorg/bouncycastle/oer/OEROptional;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 152
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    .line 153
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    add-int/2addr v1, v2

    .line 154
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 155
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isDefined()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 102
    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Absent;->INSTANCE:Lorg/bouncycastle/asn1/ASN1Absent;

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 116
    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPTIONAL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    const-string v0, "ABSENT"

    return-object v0
.end method

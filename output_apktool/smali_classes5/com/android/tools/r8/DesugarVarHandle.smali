.class public final synthetic Lcom/android/tools/r8/DesugarVarHandle;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic U:Lsun/misc/Unsafe;

.field public final synthetic arrayIndexScale:J

.field public final synthetic offset:J

.field public final synthetic recv:Ljava/lang/Class;

.field public final synthetic type:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->getUnsafeField()Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    iput-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Using a VarHandle for an array of type \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->arrayRequiringNativeSupport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using a VarHandle for a multidimensional array "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->arrayRequiringNativeSupport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not an array "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->getUnsafeField()Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    iput-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iput-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_1

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Using a VarHandle for a field of type \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' requires native VarHandle support available from Android 13. VarHandle desugaring only supports primitive types int and long and reference types."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    return-void
.end method


# virtual methods
.method public synthetic arrayRequiringNativeSupport()Ljava/lang/String;
    .locals 1

    const-string v0, "requires native VarHandle support available from Android 13. VarHandle desugaring only supports single dimensional arrays of primitive typesint and long and reference types."

    return-object v0
.end method

.method public synthetic boxIntIfPossible(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_0

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->desugarWrongMethodTypeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic boxLongIfPossible(JLjava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-class v0, Ljava/lang/Float;

    if-ne p3, v0, :cond_0

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    const-class v0, Ljava/lang/Double;

    if-ne p3, v0, :cond_1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->desugarWrongMethodTypeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic compareAndSet(Ljava/lang/Object;II)Z
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1

    :cond_0
    move-object v1, p1

    move v6, p2

    move v7, p3

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v4, v6

    int-to-long v6, v7

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic compareAndSet(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 12

    move-object/from16 v5, p4

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v6, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v6

    add-long v6, v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v0, [I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result v8

    invoke-virtual {p0, v5, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result v9

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1

    :cond_0
    const-class v0, [J

    if-ne p2, v0, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v8

    invoke-virtual {p0, v5, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v10

    move-object v5, p1

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    move-object v1, p1

    move-object v4, p3

    move-wide v2, v6

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic compareAndSet(Ljava/lang/Object;JJ)Z
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    move-object v3, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_0
    move-object v3, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {p0, p2, v2}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result v7

    invoke-virtual {p0, p3, v2}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1

    :cond_0
    move-object v1, p1

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    const/4 p1, 0x0

    iget-wide v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v4

    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic compareAndSet([IIII)Z
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    move-object v5, p1

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic compareAndSet([JIJJ)Z
    .locals 12

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [J

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    move-object v5, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic desugarWrongMethodTypeException()Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "java.lang.invoke.WrongMethodTypeException"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic get(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->desugarWrongMethodTypeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic get([II)I
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic get(Ljava/lang/Object;)J
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic get([JI)J
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [J

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic get(Ljava/lang/Object;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/DesugarVarHandle;->boxIntIfPossible(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/DesugarVarHandle;->boxLongIfPossible(JLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    const-class p2, Ljava/lang/Integer;

    if-eq p3, p2, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/DesugarVarHandle;->boxIntIfPossible(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_3

    const-class p2, Ljava/lang/Long;

    if-eq p3, p2, :cond_3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/DesugarVarHandle;->boxLongIfPossible(JLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic get(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->boxIntIfPossible(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->boxLongIfPossible(JLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getUnsafeField()Ljava/lang/reflect/Field;
    .locals 7

    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Lsun/misc/Unsafe;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Couldn\'t find the Unsafe"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic getVolatile(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->desugarWrongMethodTypeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic getVolatile([II)I
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic getVolatile(Ljava/lang/Object;)J
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getVolatile([JI)J
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [J

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic getVolatile(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getVolatile(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic getVolatile(Ljava/lang/Object;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/DesugarVarHandle;->boxIntIfPossible(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/DesugarVarHandle;->boxLongIfPossible(JLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    const-class p2, Ljava/lang/Integer;

    if-eq p3, p2, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/DesugarVarHandle;->boxIntIfPossible(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_3

    const-class p2, Ljava/lang/Long;

    if-eq p3, p2, :cond_3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/DesugarVarHandle;->boxLongIfPossible(JLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic getVolatile(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->boxIntIfPossible(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->boxLongIfPossible(JLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v6, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void

    :cond_1
    move-object v3, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/DesugarVarHandle;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic set(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long v6, v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v0, [I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result p3

    invoke-virtual {p2, p1, v6, v7, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    const-class v0, [J

    if-ne p2, v0, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void

    :cond_1
    move-object v5, p1

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p1, v5, v6, v7, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic set(Ljava/lang/Object;J)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void

    :cond_0
    move-object v3, p1

    move-wide v6, p2

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v3, p2, p3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->desugarWrongMethodTypeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, v2}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->set(Ljava/lang/Object;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2, v2}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/DesugarVarHandle;->set(Ljava/lang/Object;J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public synthetic set([III)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic set([JIJ)V
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [J

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    move-object v5, p1

    move-wide v8, p3

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic setRelease(Ljava/lang/Object;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v6, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void

    :cond_1
    move-object v3, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/DesugarVarHandle;->setRelease(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic setRelease(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long v6, v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v0, [I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result p3

    invoke-virtual {p2, p1, v6, v7, p3}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    const-class v0, [J

    if-ne p2, v0, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void

    :cond_1
    move-object v5, p1

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p1, v5, v6, v7, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic setRelease(Ljava/lang/Object;J)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void

    :cond_0
    move-object v3, p1

    move-wide v6, p2

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v3, p2, p3, v0}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->desugarWrongMethodTypeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic setRelease(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, v2}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->setRelease(Ljava/lang/Object;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2, v2}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/DesugarVarHandle;->setRelease(Ljava/lang/Object;J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public synthetic setRelease([III)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic setRelease([JIJ)V
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [J

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    move-object v5, p1

    move-wide v8, p3

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic setVolatile(Ljava/lang/Object;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v6, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void

    :cond_1
    move-object v3, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/DesugarVarHandle;->setVolatile(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic setVolatile(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long v6, v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v0, [I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result p3

    invoke-virtual {p2, p1, v6, v7, p3}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    const-class v0, [J

    if-ne p2, v0, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void

    :cond_1
    move-object v5, p1

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p1, v5, v6, v7, p3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic setVolatile(Ljava/lang/Object;J)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void

    :cond_0
    move-object v3, p1

    move-wide v6, p2

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v3, p2, p3, v0}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->desugarWrongMethodTypeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic setVolatile(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, v2}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->setVolatile(Ljava/lang/Object;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2, v2}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/DesugarVarHandle;->setVolatile(Ljava/lang/Object;J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public synthetic setVolatile([III)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic setVolatile([JIJ)V
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [J

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    move-object v5, p1

    move-wide v8, p3

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic toIntIfPossible(Ljava/lang/Object;Z)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    :cond_3
    if-eqz p2, :cond_4

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/DesugarVarHandle;->desugarWrongMethodTypeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic toLongIfPossible(Ljava/lang/Object;Z)J
    .locals 1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public synthetic weakCompareAndSet(Ljava/lang/Object;II)Z
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1

    :cond_0
    move-object v1, p1

    move v6, p2

    move v7, p3

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v4, v6

    int-to-long v6, v7

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic weakCompareAndSet(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 12

    move-object/from16 v5, p4

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v6, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v6

    add-long v6, v0, v2

    iget-object p2, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v0, [I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result v8

    invoke-virtual {p0, v5, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result v9

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1

    :cond_0
    const-class v0, [J

    if-ne p2, v0, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v8

    invoke-virtual {p0, v5, v1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v10

    move-object v5, p1

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    move-object v1, p1

    move-object v4, p3

    move-wide v2, v6

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    move-object v3, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_0
    move-object v3, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/tools/r8/DesugarVarHandle;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {p0, p2, v2}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result v7

    invoke-virtual {p0, p3, v2}, Lcom/android/tools/r8/DesugarVarHandle;->toIntIfPossible(Ljava/lang/Object;Z)I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1

    :cond_0
    move-object v1, p1

    iget-object p1, p0, Lcom/android/tools/r8/DesugarVarHandle;->type:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    const/4 p1, 0x0

    iget-wide v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v4

    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/DesugarVarHandle;->toLongIfPossible(Ljava/lang/Object;Z)J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic weakCompareAndSet([IIII)Z
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    move-object v5, p1

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic weakCompareAndSet([JIJJ)Z
    .locals 12

    iget-object v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->recv:Ljava/lang/Class;

    const-class v1, [J

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/DesugarVarHandle;->offset:J

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->arrayIndexScale:J

    mul-long v2, v2, v4

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/tools/r8/DesugarVarHandle;->U:Lsun/misc/Unsafe;

    move-object v5, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

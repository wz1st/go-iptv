.class public Lcom/g/a/t;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/g/a/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/t;->b:Z

    sput-boolean v1, Lcom/g/a/t;->a:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/g/a/i;Lcom/g/a/h;)V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/g/a/i;->j()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0}, Lcom/g/a/i;->f()Lcom/g/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/g/a/h;->l()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v0, p0, p1}, Lcom/g/a/a/c;->a(Lcom/g/a/i;Lcom/g/a/h;)V

    invoke-virtual {p1}, Lcom/g/a/h;->l()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lcom/g/a/i;->f()Lcom/g/a/a/c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/g/a/i;->j()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handler: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/g/a/h;->k()V

    sget-boolean v0, Lcom/g/a/t;->a:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/g/a/t;->b:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mDataHandler failed to consume data, yet remains the mDataHandler."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Lcom/g/a/h;->l()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/g/a/i;->j()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handler: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "emitter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/g/a/h;->k()V

    sget-boolean v0, Lcom/g/a/t;->a:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/g/a/t;->b:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all data was consumed by Util.emitAllData"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/g/a/k;Lcom/g/a/h;Lcom/g/a/a/a;)V
    .locals 1

    new-instance v0, Lcom/g/a/ak;

    invoke-direct {v0, p0, p1, p2}, Lcom/g/a/ak;-><init>(Lcom/g/a/k;Lcom/g/a/h;Lcom/g/a/a/a;)V

    invoke-interface {p0, v0}, Lcom/g/a/k;->a(Lcom/g/a/a/e;)V

    invoke-interface {v0}, Lcom/g/a/a/e;->a()V

    return-void
.end method

.method public static a(Lcom/g/a/k;[BLcom/g/a/a/a;)V
    .locals 2

    array-length v0, p1

    invoke-static {v0}, Lcom/g/a/h;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v1, Lcom/g/a/h;

    invoke-direct {v1}, Lcom/g/a/h;-><init>()V

    invoke-virtual {v1, v0}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    invoke-static {p0, v1, p2}, Lcom/g/a/t;->a(Lcom/g/a/k;Lcom/g/a/h;Lcom/g/a/a/a;)V

    return-void
.end method

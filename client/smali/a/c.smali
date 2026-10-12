.class public final La/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:La/a/a/e;

.field private final b:La/a/a/d;


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, La/c;->b:La/a/a/d;

    invoke-virtual {v0}, La/a/a/d;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, La/c;->b:La/a/a/d;

    invoke-virtual {v0}, La/a/a/d;->flush()V

    return-void
.end method

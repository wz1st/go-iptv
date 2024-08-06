.class Lcom/b/a/c/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/b/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/b/u",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private c:Lcom/b/a/c/b/o$a;

.field private d:Lcom/b/a/c/h;

.field private e:I

.field private f:Z

.field private final g:Lcom/b/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/u",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/b/a/c/b/u;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<TZ;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/u;

    iput-object v0, p0, Lcom/b/a/c/b/o;->g:Lcom/b/a/c/b/u;

    iput-boolean p2, p0, Lcom/b/a/c/b/o;->a:Z

    iput-boolean p3, p0, Lcom/b/a/c/b/o;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/b/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/c/b/u",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/o;->g:Lcom/b/a/c/b/u;

    return-object v0
.end method

.method a(Lcom/b/a/c/h;Lcom/b/a/c/b/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/c/b/o;->d:Lcom/b/a/c/h;

    iput-object p2, p0, Lcom/b/a/c/b/o;->c:Lcom/b/a/c/b/o$a;

    return-void
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/c/b/o;->a:Z

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/o;->g:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/o;->g:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/o;->g:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->e()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    iget v0, p0, Lcom/b/a/c/b/o;->e:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/c/b/o;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/b/o;->f:Z

    iget-boolean v0, p0, Lcom/b/a/c/b/o;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/c/b/o;->g:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->f()V

    :cond_2
    return-void
.end method

.method g()V
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/c/b/o;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/b/a/c/b/o;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/c/b/o;->e:I

    return-void
.end method

.method h()V
    .locals 2

    iget v0, p0, Lcom/b/a/c/b/o;->e:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/b/a/c/b/o;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/c/b/o;->e:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/c/b/o;->c:Lcom/b/a/c/b/o$a;

    iget-object v1, p0, Lcom/b/a/c/b/o;->d:Lcom/b/a/c/h;

    invoke-interface {v0, v1, p0}, Lcom/b/a/c/b/o$a;->a(Lcom/b/a/c/h;Lcom/b/a/c/b/o;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineResource{isCacheable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/b/a/c/b/o;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/o;->c:Lcom/b/a/c/b/o$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/o;->d:Lcom/b/a/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/b/a/c/b/o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/b/a/c/b/o;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/o;->g:Lcom/b/a/c/b/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

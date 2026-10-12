.class final Lcom/b/a/c/b/a$b;
.super Ljava/lang/ref/WeakReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/b/a/c/b/o",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/b/a/c/h;

.field final b:Z

.field c:Lcom/b/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/u",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/b/a/c/h;Lcom/b/a/c/b/o;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/h;",
            "Lcom/b/a/c/b/o",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/b/a/c/b/o",
            "<*>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/h;

    iput-object v0, p0, Lcom/b/a/c/b/a$b;->a:Lcom/b/a/c/h;

    invoke-virtual {p2}, Lcom/b/a/c/b/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/b/a/c/b/o;->a()Lcom/b/a/c/b/u;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/u;

    :goto_0
    iput-object v0, p0, Lcom/b/a/c/b/a$b;->c:Lcom/b/a/c/b/u;

    invoke-virtual {p2}, Lcom/b/a/c/b/o;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/c/b/a$b;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/c/b/a$b;->c:Lcom/b/a/c/b/u;

    invoke-virtual {p0}, Lcom/b/a/c/b/a$b;->clear()V

    return-void
.end method

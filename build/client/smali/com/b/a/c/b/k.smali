.class Lcom/b/a/c/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/g$a;
.implements Lcom/b/a/i/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/b/k$b;,
        Lcom/b/a/c/b/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/b/g$a",
        "<TR;>;",
        "Lcom/b/a/i/a/a$c;"
    }
.end annotation


# static fields
.field private static final a:Lcom/b/a/c/b/k$a;

.field private static final b:Landroid/os/Handler;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/g/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/b/a/i/a/c;

.field private final e:Landroid/support/v4/e/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l$a",
            "<",
            "Lcom/b/a/c/b/k",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/b/a/c/b/k$a;

.field private final g:Lcom/b/a/c/b/l;

.field private final h:Lcom/b/a/c/b/c/a;

.field private final i:Lcom/b/a/c/b/c/a;

.field private final j:Lcom/b/a/c/b/c/a;

.field private final k:Lcom/b/a/c/b/c/a;

.field private l:Lcom/b/a/c/h;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/b/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/u",
            "<*>;"
        }
    .end annotation
.end field

.field private r:Lcom/b/a/c/a;

.field private s:Z

.field private t:Lcom/b/a/c/b/p;

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/g/f;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/b/a/c/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/o",
            "<*>;"
        }
    .end annotation
.end field

.field private x:Lcom/b/a/c/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/g",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/b/a/c/b/k$a;

    invoke-direct {v0}, Lcom/b/a/c/b/k$a;-><init>()V

    sput-object v0, Lcom/b/a/c/b/k;->a:Lcom/b/a/c/b/k$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/b/a/c/b/k$b;

    invoke-direct {v2}, Lcom/b/a/c/b/k$b;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/b/a/c/b/k;->b:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/l;Landroid/support/v4/e/l$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/c/a;",
            "Lcom/b/a/c/b/c/a;",
            "Lcom/b/a/c/b/c/a;",
            "Lcom/b/a/c/b/c/a;",
            "Lcom/b/a/c/b/l;",
            "Landroid/support/v4/e/l$a",
            "<",
            "Lcom/b/a/c/b/k",
            "<*>;>;)V"
        }
    .end annotation

    sget-object v7, Lcom/b/a/c/b/k;->a:Lcom/b/a/c/b/k$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/b/a/c/b/k;-><init>(Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/l;Landroid/support/v4/e/l$a;Lcom/b/a/c/b/k$a;)V

    return-void
.end method

.method constructor <init>(Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/l;Landroid/support/v4/e/l$a;Lcom/b/a/c/b/k$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/c/a;",
            "Lcom/b/a/c/b/c/a;",
            "Lcom/b/a/c/b/c/a;",
            "Lcom/b/a/c/b/c/a;",
            "Lcom/b/a/c/b/l;",
            "Landroid/support/v4/e/l$a",
            "<",
            "Lcom/b/a/c/b/k",
            "<*>;>;",
            "Lcom/b/a/c/b/k$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/c/b/k;->c:Ljava/util/List;

    invoke-static {}, Lcom/b/a/i/a/c;->a()Lcom/b/a/i/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/k;->d:Lcom/b/a/i/a/c;

    iput-object p1, p0, Lcom/b/a/c/b/k;->h:Lcom/b/a/c/b/c/a;

    iput-object p2, p0, Lcom/b/a/c/b/k;->i:Lcom/b/a/c/b/c/a;

    iput-object p3, p0, Lcom/b/a/c/b/k;->j:Lcom/b/a/c/b/c/a;

    iput-object p4, p0, Lcom/b/a/c/b/k;->k:Lcom/b/a/c/b/c/a;

    iput-object p5, p0, Lcom/b/a/c/b/k;->g:Lcom/b/a/c/b/l;

    iput-object p6, p0, Lcom/b/a/c/b/k;->e:Landroid/support/v4/e/l$a;

    iput-object p7, p0, Lcom/b/a/c/b/k;->f:Lcom/b/a/c/b/k$a;

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/b/a/i/j;->a()V

    iget-object v0, p0, Lcom/b/a/c/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/b/a/c/b/k;->l:Lcom/b/a/c/h;

    iput-object v1, p0, Lcom/b/a/c/b/k;->w:Lcom/b/a/c/b/o;

    iput-object v1, p0, Lcom/b/a/c/b/k;->q:Lcom/b/a/c/b/u;

    iget-object v0, p0, Lcom/b/a/c/b/k;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/k;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-boolean v2, p0, Lcom/b/a/c/b/k;->u:Z

    iput-boolean v2, p0, Lcom/b/a/c/b/k;->y:Z

    iput-boolean v2, p0, Lcom/b/a/c/b/k;->s:Z

    iget-object v0, p0, Lcom/b/a/c/b/k;->x:Lcom/b/a/c/b/g;

    invoke-virtual {v0, p1}, Lcom/b/a/c/b/g;->a(Z)V

    iput-object v1, p0, Lcom/b/a/c/b/k;->x:Lcom/b/a/c/b/g;

    iput-object v1, p0, Lcom/b/a/c/b/k;->t:Lcom/b/a/c/b/p;

    iput-object v1, p0, Lcom/b/a/c/b/k;->r:Lcom/b/a/c/a;

    iget-object v0, p0, Lcom/b/a/c/b/k;->e:Landroid/support/v4/e/l$a;

    invoke-interface {v0, p0}, Landroid/support/v4/e/l$a;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(Lcom/b/a/g/f;)V
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/b/k;->v:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/c/b/k;->v:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/b/k;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/b/k;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private d(Lcom/b/a/g/f;)Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/k;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/k;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Lcom/b/a/c/b/c/a;
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/k;->j:Lcom/b/a/c/b/c/a;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/c/b/k;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/b/k;->k:Lcom/b/a/c/b/c/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/b/a/c/b/k;->i:Lcom/b/a/c/b/c/a;

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/b/a/c/h;ZZZZ)Lcom/b/a/c/b/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/h;",
            "ZZZZ)",
            "Lcom/b/a/c/b/k",
            "<TR;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/c/b/k;->l:Lcom/b/a/c/h;

    iput-boolean p2, p0, Lcom/b/a/c/b/k;->m:Z

    iput-boolean p3, p0, Lcom/b/a/c/b/k;->n:Z

    iput-boolean p4, p0, Lcom/b/a/c/b/k;->o:Z

    iput-boolean p5, p0, Lcom/b/a/c/b/k;->p:Z

    return-object p0
.end method

.method public a(Lcom/b/a/c/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/g",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/b/a/c/b/k;->g()Lcom/b/a/c/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/c/b/c/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/b/a/c/b/p;)V
    .locals 2

    iput-object p1, p0, Lcom/b/a/c/b/k;->t:Lcom/b/a/c/b/p;

    sget-object v0, Lcom/b/a/c/b/k;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/b/a/c/b/u;Lcom/b/a/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<TR;>;",
            "Lcom/b/a/c/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/c/b/k;->q:Lcom/b/a/c/b/u;

    iput-object p2, p0, Lcom/b/a/c/b/k;->r:Lcom/b/a/c/a;

    sget-object v0, Lcom/b/a/c/b/k;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method a(Lcom/b/a/g/f;)V
    .locals 2

    invoke-static {}, Lcom/b/a/i/j;->a()V

    iget-object v0, p0, Lcom/b/a/c/b/k;->d:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/k;->w:Lcom/b/a/c/b/o;

    iget-object v1, p0, Lcom/b/a/c/b/k;->r:Lcom/b/a/c/a;

    invoke-interface {p1, v0, v1}, Lcom/b/a/g/f;->a(Lcom/b/a/c/b/u;Lcom/b/a/c/a;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/c/b/k;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/b/k;->t:Lcom/b/a/c/b/p;

    invoke-interface {p1, v0}, Lcom/b/a/g/f;->a(Lcom/b/a/c/b/p;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/b/a/c/b/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->p:Z

    return v0
.end method

.method b()V
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->y:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/b/k;->y:Z

    iget-object v0, p0, Lcom/b/a/c/b/k;->x:Lcom/b/a/c/b/g;

    invoke-virtual {v0}, Lcom/b/a/c/b/g;->b()V

    iget-object v0, p0, Lcom/b/a/c/b/k;->g:Lcom/b/a/c/b/l;

    iget-object v1, p0, Lcom/b/a/c/b/k;->l:Lcom/b/a/c/h;

    invoke-interface {v0, p0, v1}, Lcom/b/a/c/b/l;->a(Lcom/b/a/c/b/k;Lcom/b/a/c/h;)V

    goto :goto_0
.end method

.method public b(Lcom/b/a/c/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/g",
            "<TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/c/b/k;->x:Lcom/b/a/c/b/g;

    invoke-virtual {p1}, Lcom/b/a/c/b/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/k;->h:Lcom/b/a/c/b/c/a;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/b/a/c/b/c/a;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/b/a/c/b/k;->g()Lcom/b/a/c/b/c/a;

    move-result-object v0

    goto :goto_0
.end method

.method b(Lcom/b/a/g/f;)V
    .locals 1

    invoke-static {}, Lcom/b/a/i/j;->a()V

    iget-object v0, p0, Lcom/b/a/c/b/k;->d:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->u:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/b/a/c/b/k;->c(Lcom/b/a/g/f;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/b/a/c/b/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/b/a/c/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/c/b/k;->b()V

    goto :goto_0
.end method

.method c()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/c/b/k;->d:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/k;->q:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->f()V

    invoke-direct {p0, v2}, Lcom/b/a/c/b/k;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/b/a/c/b/k;->s:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/b/a/c/b/k;->f:Lcom/b/a/c/b/k$a;

    iget-object v1, p0, Lcom/b/a/c/b/k;->q:Lcom/b/a/c/b/u;

    iget-boolean v3, p0, Lcom/b/a/c/b/k;->m:Z

    invoke-virtual {v0, v1, v3}, Lcom/b/a/c/b/k$a;->a(Lcom/b/a/c/b/u;Z)Lcom/b/a/c/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/k;->w:Lcom/b/a/c/b/o;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/b/k;->s:Z

    iget-object v0, p0, Lcom/b/a/c/b/k;->w:Lcom/b/a/c/b/o;

    invoke-virtual {v0}, Lcom/b/a/c/b/o;->g()V

    iget-object v0, p0, Lcom/b/a/c/b/k;->g:Lcom/b/a/c/b/l;

    iget-object v1, p0, Lcom/b/a/c/b/k;->l:Lcom/b/a/c/h;

    iget-object v3, p0, Lcom/b/a/c/b/k;->w:Lcom/b/a/c/b/o;

    invoke-interface {v0, p0, v1, v3}, Lcom/b/a/c/b/l;->a(Lcom/b/a/c/b/k;Lcom/b/a/c/h;Lcom/b/a/c/b/o;)V

    iget-object v0, p0, Lcom/b/a/c/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v0, p0, Lcom/b/a/c/b/k;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/f;

    invoke-direct {p0, v0}, Lcom/b/a/c/b/k;->d(Lcom/b/a/g/f;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/b/a/c/b/k;->w:Lcom/b/a/c/b/o;

    invoke-virtual {v4}, Lcom/b/a/c/b/o;->g()V

    iget-object v4, p0, Lcom/b/a/c/b/k;->w:Lcom/b/a/c/b/o;

    iget-object v5, p0, Lcom/b/a/c/b/k;->r:Lcom/b/a/c/a;

    invoke-interface {v0, v4, v5}, Lcom/b/a/g/f;->a(Lcom/b/a/c/b/u;Lcom/b/a/c/a;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/b/a/c/b/k;->w:Lcom/b/a/c/b/o;

    invoke-virtual {v0}, Lcom/b/a/c/b/o;->h()V

    invoke-direct {p0, v2}, Lcom/b/a/c/b/k;->a(Z)V

    goto :goto_0
.end method

.method public c_()Lcom/b/a/i/a/c;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/k;->d:Lcom/b/a/i/a/c;

    return-object v0
.end method

.method e()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/b/k;->d:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->y:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/b/k;->g:Lcom/b/a/c/b/l;

    iget-object v1, p0, Lcom/b/a/c/b/k;->l:Lcom/b/a/c/h;

    invoke-interface {v0, p0, v1}, Lcom/b/a/c/b/l;->a(Lcom/b/a/c/b/k;Lcom/b/a/c/h;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/c/b/k;->a(Z)V

    return-void
.end method

.method f()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/b/a/c/b/k;->d:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    iget-boolean v0, p0, Lcom/b/a/c/b/k;->y:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/b/a/c/b/k;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/b/a/c/b/k;->u:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/b/k;->u:Z

    iget-object v0, p0, Lcom/b/a/c/b/k;->g:Lcom/b/a/c/b/l;

    iget-object v1, p0, Lcom/b/a/c/b/k;->l:Lcom/b/a/c/h;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/b/a/c/b/l;->a(Lcom/b/a/c/b/k;Lcom/b/a/c/h;Lcom/b/a/c/b/o;)V

    iget-object v0, p0, Lcom/b/a/c/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/g/f;

    invoke-direct {p0, v0}, Lcom/b/a/c/b/k;->d(Lcom/b/a/g/f;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/b/a/c/b/k;->t:Lcom/b/a/c/b/p;

    invoke-interface {v0, v2}, Lcom/b/a/g/f;->a(Lcom/b/a/c/b/p;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/b/a/c/b/k;->a(Z)V

    goto :goto_0
.end method

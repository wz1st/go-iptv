.class Lcom/b/a/c/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/e$a;
.implements Lcom/b/a/i/a/a$c;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/b/g$g;,
        Lcom/b/a/c/b/g$f;,
        Lcom/b/a/c/b/g$d;,
        Lcom/b/a/c/b/g$a;,
        Lcom/b/a/c/b/g$c;,
        Lcom/b/a/c/b/g$e;,
        Lcom/b/a/c/b/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/b/e$a;",
        "Lcom/b/a/i/a/a$c;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/b/a/c/b/g",
        "<*>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private A:Lcom/b/a/c/a;

.field private B:Lcom/b/a/c/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/a/d",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile C:Lcom/b/a/c/b/e;

.field private volatile D:Z

.field private volatile E:Z

.field private final a:Lcom/b/a/c/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/f",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/i/a/c;

.field private final d:Lcom/b/a/c/b/g$d;

.field private final e:Landroid/support/v4/e/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l$a",
            "<",
            "Lcom/b/a/c/b/g",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/b/a/c/b/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/g$c",
            "<*>;"
        }
    .end annotation
.end field

.field private final g:Lcom/b/a/c/b/g$e;

.field private h:Lcom/b/a/e;

.field private i:Lcom/b/a/c/h;

.field private j:Lcom/b/a/g;

.field private k:Lcom/b/a/c/b/m;

.field private l:I

.field private m:I

.field private n:Lcom/b/a/c/b/i;

.field private o:Lcom/b/a/c/j;

.field private p:Lcom/b/a/c/b/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/g$a",
            "<TR;>;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Lcom/b/a/c/b/g$g;

.field private s:Lcom/b/a/c/b/g$f;

.field private t:J

.field private u:Z

.field private v:Ljava/lang/Object;

.field private w:Ljava/lang/Thread;

.field private x:Lcom/b/a/c/h;

.field private y:Lcom/b/a/c/h;

.field private z:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/b/a/c/b/g$d;Landroid/support/v4/e/l$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/g$d;",
            "Landroid/support/v4/e/l$a",
            "<",
            "Lcom/b/a/c/b/g",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/b/a/c/b/f;

    invoke-direct {v0}, Lcom/b/a/c/b/f;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/g;->b:Ljava/util/List;

    invoke-static {}, Lcom/b/a/i/a/c;->a()Lcom/b/a/i/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/g;->c:Lcom/b/a/i/a/c;

    new-instance v0, Lcom/b/a/c/b/g$c;

    invoke-direct {v0}, Lcom/b/a/c/b/g$c;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/g;->f:Lcom/b/a/c/b/g$c;

    new-instance v0, Lcom/b/a/c/b/g$e;

    invoke-direct {v0}, Lcom/b/a/c/b/g$e;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/b/g;->g:Lcom/b/a/c/b/g$e;

    iput-object p1, p0, Lcom/b/a/c/b/g;->d:Lcom/b/a/c/b/g$d;

    iput-object p2, p0, Lcom/b/a/c/b/g;->e:Landroid/support/v4/e/l$a;

    return-void
.end method

.method private a(Lcom/b/a/c/b/g$g;)Lcom/b/a/c/b/g$g;
    .locals 3

    sget-object v0, Lcom/b/a/c/b/g$1;->b:[I

    invoke-virtual {p1}, Lcom/b/a/c/b/g$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/b/a/c/b/g;->n:Lcom/b/a/c/b/i;

    invoke-virtual {v0}, Lcom/b/a/c/b/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/b/a/c/b/g$g;->b:Lcom/b/a/c/b/g$g;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/b/a/c/b/g$g;->b:Lcom/b/a/c/b/g$g;

    invoke-direct {p0, v0}, Lcom/b/a/c/b/g;->a(Lcom/b/a/c/b/g$g;)Lcom/b/a/c/b/g$g;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/b/a/c/b/g;->n:Lcom/b/a/c/b/i;

    invoke-virtual {v0}, Lcom/b/a/c/b/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/b/a/c/b/g$g;->c:Lcom/b/a/c/b/g$g;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/b/a/c/b/g$g;->c:Lcom/b/a/c/b/g$g;

    invoke-direct {p0, v0}, Lcom/b/a/c/b/g;->a(Lcom/b/a/c/b/g$g;)Lcom/b/a/c/b/g$g;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/b/a/c/b/g;->u:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/b/a/c/b/g$g;->f:Lcom/b/a/c/b/g$g;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/b/a/c/b/g$g;->d:Lcom/b/a/c/b/g$g;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/b/a/c/b/g$g;->f:Lcom/b/a/c/b/g$g;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/b/a/c/a/d;Ljava/lang/Object;Lcom/b/a/c/a;)Lcom/b/a/c/b/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/c/a/d",
            "<*>;TData;",
            "Lcom/b/a/c/a;",
            ")",
            "Lcom/b/a/c/b/u",
            "<TR;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/b/a/c/a/d;->b()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/b/a/i/e;->a()J

    move-result-wide v2

    invoke-direct {p0, p2, p3}, Lcom/b/a/c/b/g;->a(Ljava/lang/Object;Lcom/b/a/c/a;)Lcom/b/a/c/b/u;

    move-result-object v0

    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoded result "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Lcom/b/a/c/b/g;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Lcom/b/a/c/a/d;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/b/a/c/a/d;->b()V

    throw v0
.end method

.method private a(Ljava/lang/Object;Lcom/b/a/c/a;)Lcom/b/a/c/b/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/b/a/c/a;",
            ")",
            "Lcom/b/a/c/b/u",
            "<TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/c/b/f;->b(Ljava/lang/Class;)Lcom/b/a/c/b/s;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/c/b/g;->a(Ljava/lang/Object;Lcom/b/a/c/a;Lcom/b/a/c/b/s;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Lcom/b/a/c/a;Lcom/b/a/c/b/s;)Lcom/b/a/c/b/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/b/a/c/a;",
            "Lcom/b/a/c/b/s",
            "<TData;TResourceType;TR;>;)",
            "Lcom/b/a/c/b/u",
            "<TR;>;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/b/a/c/b/g;->a(Lcom/b/a/c/a;)Lcom/b/a/c/j;

    move-result-object v2

    iget-object v0, p0, Lcom/b/a/c/b/g;->h:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->c()Lcom/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/h;->b(Ljava/lang/Object;)Lcom/b/a/c/a/e;

    move-result-object v1

    :try_start_0
    iget v3, p0, Lcom/b/a/c/b/g;->l:I

    iget v4, p0, Lcom/b/a/c/b/g;->m:I

    new-instance v5, Lcom/b/a/c/b/g$b;

    invoke-direct {v5, p0, p2}, Lcom/b/a/c/b/g$b;-><init>(Lcom/b/a/c/b/g;Lcom/b/a/c/a;)V

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/c/b/s;->a(Lcom/b/a/c/a/e;Lcom/b/a/c/j;IILcom/b/a/c/b/h$a;)Lcom/b/a/c/b/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Lcom/b/a/c/a/e;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/b/a/c/a/e;->b()V

    throw v0
.end method

.method private a(Lcom/b/a/c/a;)Lcom/b/a/c/j;
    .locals 3

    iget-object v2, p0, Lcom/b/a/c/b/g;->o:Lcom/b/a/c/j;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/b/a/c/a;->d:Lcom/b/a/c/a;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v0}, Lcom/b/a/c/b/f;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    sget-object v0, Lcom/b/a/c/d/a/k;->d:Lcom/b/a/c/i;

    invoke-virtual {v2, v0}, Lcom/b/a/c/j;->a(Lcom/b/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/b/a/c/j;

    invoke-direct {v0}, Lcom/b/a/c/j;-><init>()V

    iget-object v2, p0, Lcom/b/a/c/b/g;->o:Lcom/b/a/c/j;

    invoke-virtual {v0, v2}, Lcom/b/a/c/j;->a(Lcom/b/a/c/j;)V

    sget-object v2, Lcom/b/a/c/d/a/k;->d:Lcom/b/a/c/i;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/b/a/c/j;->a(Lcom/b/a/c/i;Ljava/lang/Object;)Lcom/b/a/c/j;

    goto :goto_0
.end method

.method private a(Lcom/b/a/c/b/u;Lcom/b/a/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<TR;>;",
            "Lcom/b/a/c/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/b/a/c/b/g;->m()V

    iget-object v0, p0, Lcom/b/a/c/b/g;->p:Lcom/b/a/c/b/g$a;

    invoke-interface {v0, p1, p2}, Lcom/b/a/c/b/g$a;->a(Lcom/b/a/c/b/u;Lcom/b/a/c/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/b/a/c/b/g;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    const-string v1, "DecodeJob"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/b/a/i/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", load key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/c/b/g;->k:Lcom/b/a/c/b/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private b(Lcom/b/a/c/b/u;Lcom/b/a/c/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<TR;>;",
            "Lcom/b/a/c/a;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/b/a/c/b/q;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/b/a/c/b/q;

    invoke-interface {v0}, Lcom/b/a/c/b/q;->a()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/c/b/g;->f:Lcom/b/a/c/b/g$c;

    invoke-virtual {v1}, Lcom/b/a/c/b/g$c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/b/a/c/b/t;->a(Lcom/b/a/c/b/u;)Lcom/b/a/c/b/t;

    move-result-object v1

    move-object v0, v1

    move-object p1, v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/b/a/c/b/g;->a(Lcom/b/a/c/b/u;Lcom/b/a/c/a;)V

    sget-object v1, Lcom/b/a/c/b/g$g;->e:Lcom/b/a/c/b/g$g;

    iput-object v1, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    :try_start_0
    iget-object v1, p0, Lcom/b/a/c/b/g;->f:Lcom/b/a/c/b/g$c;

    invoke-virtual {v1}, Lcom/b/a/c/b/g$c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/b/a/c/b/g;->f:Lcom/b/a/c/b/g$c;

    iget-object v2, p0, Lcom/b/a/c/b/g;->d:Lcom/b/a/c/b/g$d;

    iget-object v3, p0, Lcom/b/a/c/b/g;->o:Lcom/b/a/c/j;

    invoke-virtual {v1, v2, v3}, Lcom/b/a/c/b/g$c;->a(Lcom/b/a/c/b/g$d;Lcom/b/a/c/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/b/a/c/b/t;->a()V

    :cond_3
    invoke-direct {p0}, Lcom/b/a/c/b/g;->e()V

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/b/a/c/b/t;->a()V

    :cond_4
    throw v1
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/g;->g:Lcom/b/a/c/b/g$e;

    invoke-virtual {v0}, Lcom/b/a/c/b/g$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/c/b/g;->g()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/g;->g:Lcom/b/a/c/b/g$e;

    invoke-virtual {v0}, Lcom/b/a/c/b/g$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/c/b/g;->g()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/c/b/g;->g:Lcom/b/a/c/b/g$e;

    invoke-virtual {v0}, Lcom/b/a/c/b/g$e;->c()V

    iget-object v0, p0, Lcom/b/a/c/b/g;->f:Lcom/b/a/c/b/g$c;

    invoke-virtual {v0}, Lcom/b/a/c/b/g$c;->b()V

    iget-object v0, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v0}, Lcom/b/a/c/b/f;->a()V

    iput-boolean v3, p0, Lcom/b/a/c/b/g;->D:Z

    iput-object v2, p0, Lcom/b/a/c/b/g;->h:Lcom/b/a/e;

    iput-object v2, p0, Lcom/b/a/c/b/g;->i:Lcom/b/a/c/h;

    iput-object v2, p0, Lcom/b/a/c/b/g;->o:Lcom/b/a/c/j;

    iput-object v2, p0, Lcom/b/a/c/b/g;->j:Lcom/b/a/g;

    iput-object v2, p0, Lcom/b/a/c/b/g;->k:Lcom/b/a/c/b/m;

    iput-object v2, p0, Lcom/b/a/c/b/g;->p:Lcom/b/a/c/b/g$a;

    iput-object v2, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    iput-object v2, p0, Lcom/b/a/c/b/g;->C:Lcom/b/a/c/b/e;

    iput-object v2, p0, Lcom/b/a/c/b/g;->w:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/b/a/c/b/g;->x:Lcom/b/a/c/h;

    iput-object v2, p0, Lcom/b/a/c/b/g;->z:Ljava/lang/Object;

    iput-object v2, p0, Lcom/b/a/c/b/g;->A:Lcom/b/a/c/a;

    iput-object v2, p0, Lcom/b/a/c/b/g;->B:Lcom/b/a/c/a/d;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/c/b/g;->t:J

    iput-boolean v3, p0, Lcom/b/a/c/b/g;->E:Z

    iput-object v2, p0, Lcom/b/a/c/b/g;->v:Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/c/b/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/b/a/c/b/g;->e:Landroid/support/v4/e/l$a;

    invoke-interface {v0, p0}, Landroid/support/v4/e/l$a;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method private h()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/g;->j:Lcom/b/a/g;

    invoke-virtual {v0}, Lcom/b/a/g;->ordinal()I

    move-result v0

    return v0
.end method

.method private i()V
    .locals 3

    sget-object v0, Lcom/b/a/c/b/g$1;->a:[I

    iget-object v1, p0, Lcom/b/a/c/b/g;->s:Lcom/b/a/c/b/g$f;

    invoke-virtual {v1}, Lcom/b/a/c/b/g$f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/c/b/g;->s:Lcom/b/a/c/b/g$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/b/a/c/b/g$g;->a:Lcom/b/a/c/b/g$g;

    invoke-direct {p0, v0}, Lcom/b/a/c/b/g;->a(Lcom/b/a/c/b/g$g;)Lcom/b/a/c/b/g$g;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    invoke-direct {p0}, Lcom/b/a/c/b/g;->j()Lcom/b/a/c/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/g;->C:Lcom/b/a/c/b/e;

    invoke-direct {p0}, Lcom/b/a/c/b/g;->k()V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/b/a/c/b/g;->k()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/b/a/c/b/g;->n()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private j()Lcom/b/a/c/b/e;
    .locals 3

    sget-object v0, Lcom/b/a/c/b/g$1;->b:[I

    iget-object v1, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    invoke-virtual {v1}, Lcom/b/a/c/b/g$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/b/a/c/b/v;

    iget-object v1, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    invoke-direct {v0, v1, p0}, Lcom/b/a/c/b/v;-><init>(Lcom/b/a/c/b/f;Lcom/b/a/c/b/e$a;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/b/a/c/b/b;

    iget-object v1, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    invoke-direct {v0, v1, p0}, Lcom/b/a/c/b/b;-><init>(Lcom/b/a/c/b/f;Lcom/b/a/c/b/e$a;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/b/a/c/b/y;

    iget-object v1, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    invoke-direct {v0, v1, p0}, Lcom/b/a/c/b/y;-><init>(Lcom/b/a/c/b/f;Lcom/b/a/c/b/e$a;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private k()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/g;->w:Ljava/lang/Thread;

    invoke-static {}, Lcom/b/a/i/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/c/b/g;->t:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/b/a/c/b/g;->E:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/b/a/c/b/g;->C:Lcom/b/a/c/b/e;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/b/a/c/b/g;->C:Lcom/b/a/c/b/e;

    invoke-interface {v0}, Lcom/b/a/c/b/e;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    invoke-direct {p0, v1}, Lcom/b/a/c/b/g;->a(Lcom/b/a/c/b/g$g;)Lcom/b/a/c/b/g$g;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    invoke-direct {p0}, Lcom/b/a/c/b/g;->j()Lcom/b/a/c/b/e;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/c/b/g;->C:Lcom/b/a/c/b/e;

    iget-object v1, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    sget-object v2, Lcom/b/a/c/b/g$g;->d:Lcom/b/a/c/b/g$g;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/b/a/c/b/g;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    sget-object v2, Lcom/b/a/c/b/g$g;->f:Lcom/b/a/c/b/g$g;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/b/a/c/b/g;->E:Z

    if-eqz v1, :cond_1

    :cond_3
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/b/a/c/b/g;->l()V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    invoke-direct {p0}, Lcom/b/a/c/b/g;->m()V

    new-instance v0, Lcom/b/a/c/b/p;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/b/a/c/b/g;->b:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/b/a/c/b/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/b/a/c/b/g;->p:Lcom/b/a/c/b/g$a;

    invoke-interface {v1, v0}, Lcom/b/a/c/b/g$a;->a(Lcom/b/a/c/b/p;)V

    invoke-direct {p0}, Lcom/b/a/c/b/g;->f()V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/b/g;->c:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    iget-boolean v0, p0, Lcom/b/a/c/b/g;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/b/g;->D:Z

    return-void
.end method

.method private n()V
    .locals 5

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    iget-wide v2, p0, Lcom/b/a/c/b/g;->t:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/b/a/c/b/g;->z:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", cache key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/b/a/c/b/g;->x:Lcom/b/a/c/h;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", fetcher: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/b/a/c/b/g;->B:Lcom/b/a/c/a/d;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/b/a/c/b/g;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/b/g;->B:Lcom/b/a/c/a/d;

    iget-object v2, p0, Lcom/b/a/c/b/g;->z:Ljava/lang/Object;

    iget-object v3, p0, Lcom/b/a/c/b/g;->A:Lcom/b/a/c/a;

    invoke-direct {p0, v0, v2, v3}, Lcom/b/a/c/b/g;->a(Lcom/b/a/c/a/d;Ljava/lang/Object;Lcom/b/a/c/a;)Lcom/b/a/c/b/u;
    :try_end_0
    .catch Lcom/b/a/c/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/b/a/c/b/g;->A:Lcom/b/a/c/a;

    invoke-direct {p0, v0, v1}, Lcom/b/a/c/b/g;->b(Lcom/b/a/c/b/u;Lcom/b/a/c/a;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/b/a/c/b/g;->y:Lcom/b/a/c/h;

    iget-object v3, p0, Lcom/b/a/c/b/g;->A:Lcom/b/a/c/a;

    invoke-virtual {v0, v2, v3}, Lcom/b/a/c/b/p;->a(Lcom/b/a/c/h;Lcom/b/a/c/a;)V

    iget-object v2, p0, Lcom/b/a/c/b/g;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/c/b/g;->k()V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/b/a/c/b/g;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/g",
            "<*>;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/b/a/c/b/g;->h()I

    move-result v0

    invoke-direct {p1}, Lcom/b/a/c/b/g;->h()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/b/a/c/b/g;->q:I

    iget v1, p1, Lcom/b/a/c/b/g;->q:I

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method a(Lcom/b/a/e;Ljava/lang/Object;Lcom/b/a/c/b/m;Lcom/b/a/c/h;IILjava/lang/Class;Ljava/lang/Class;Lcom/b/a/g;Lcom/b/a/c/b/i;Ljava/util/Map;ZZZLcom/b/a/c/j;Lcom/b/a/c/b/g$a;I)Lcom/b/a/c/b/g;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/e;",
            "Ljava/lang/Object;",
            "Lcom/b/a/c/b/m;",
            "Lcom/b/a/c/h;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/b/a/g;",
            "Lcom/b/a/c/b/i;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/c/m",
            "<*>;>;ZZZ",
            "Lcom/b/a/c/j;",
            "Lcom/b/a/c/b/g$a",
            "<TR;>;I)",
            "Lcom/b/a/c/b/g",
            "<TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/c/b/g;->d:Lcom/b/a/c/b/g$d;

    move-object/from16 v16, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p10

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p15

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-virtual/range {v2 .. v16}, Lcom/b/a/c/b/f;->a(Lcom/b/a/e;Ljava/lang/Object;Lcom/b/a/c/h;IILcom/b/a/c/b/i;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/g;Lcom/b/a/c/j;Ljava/util/Map;ZZLcom/b/a/c/b/g$d;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c/b/g;->h:Lcom/b/a/e;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c/b/g;->i:Lcom/b/a/c/h;

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c/b/g;->j:Lcom/b/a/g;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c/b/g;->k:Lcom/b/a/c/b/m;

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/b/a/c/b/g;->l:I

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/b/a/c/b/g;->m:I

    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c/b/g;->n:Lcom/b/a/c/b/i;

    move/from16 v0, p14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/b/a/c/b/g;->u:Z

    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c/b/g;->o:Lcom/b/a/c/j;

    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c/b/g;->p:Lcom/b/a/c/b/g$a;

    move/from16 v0, p17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/b/a/c/b/g;->q:I

    sget-object v2, Lcom/b/a/c/b/g$f;->a:Lcom/b/a/c/b/g$f;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/b/a/c/b/g;->s:Lcom/b/a/c/b/g$f;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c/b/g;->v:Ljava/lang/Object;

    return-object p0
.end method

.method a(Lcom/b/a/c/a;Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/c/a;",
            "Lcom/b/a/c/b/u",
            "<TZ;>;)",
            "Lcom/b/a/c/b/u",
            "<TZ;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v0, Lcom/b/a/c/a;->d:Lcom/b/a/c/a;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v0, v7}, Lcom/b/a/c/b/f;->c(Ljava/lang/Class;)Lcom/b/a/c/m;

    move-result-object v6

    iget-object v0, p0, Lcom/b/a/c/b/g;->h:Lcom/b/a/e;

    iget v2, p0, Lcom/b/a/c/b/g;->l:I

    iget v3, p0, Lcom/b/a/c/b/g;->m:I

    invoke-interface {v6, v0, p2, v2, v3}, Lcom/b/a/c/m;->a(Landroid/content/Context;Lcom/b/a/c/b/u;II)Lcom/b/a/c/b/u;

    move-result-object v0

    move-object v9, v0

    :goto_0
    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/b/a/c/b/u;->f()V

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v0, v9}, Lcom/b/a/c/b/f;->a(Lcom/b/a/c/b/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v0, v9}, Lcom/b/a/c/b/f;->b(Lcom/b/a/c/b/u;)Lcom/b/a/c/l;

    move-result-object v1

    iget-object v0, p0, Lcom/b/a/c/b/g;->o:Lcom/b/a/c/j;

    invoke-interface {v1, v0}, Lcom/b/a/c/l;->a(Lcom/b/a/c/j;)Lcom/b/a/c/c;

    move-result-object v0

    move-object v10, v1

    :goto_1
    iget-object v1, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    iget-object v2, p0, Lcom/b/a/c/b/g;->x:Lcom/b/a/c/h;

    invoke-virtual {v1, v2}, Lcom/b/a/c/b/f;->a(Lcom/b/a/c/h;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iget-object v2, p0, Lcom/b/a/c/b/g;->n:Lcom/b/a/c/b/i;

    invoke-virtual {v2, v1, p1, v0}, Lcom/b/a/c/b/i;->a(ZLcom/b/a/c/a;Lcom/b/a/c/c;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v10, :cond_3

    new-instance v0, Lcom/b/a/h$d;

    invoke-interface {v9}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/h$d;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/b/a/c/c;->c:Lcom/b/a/c/c;

    move-object v10, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/b/a/c/b/g$1;->c:[I

    invoke-virtual {v0}, Lcom/b/a/c/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/b/a/c/b/c;

    iget-object v1, p0, Lcom/b/a/c/b/g;->x:Lcom/b/a/c/h;

    iget-object v2, p0, Lcom/b/a/c/b/g;->i:Lcom/b/a/c/h;

    invoke-direct {v0, v1, v2}, Lcom/b/a/c/b/c;-><init>(Lcom/b/a/c/h;Lcom/b/a/c/h;)V

    :goto_3
    invoke-static {v9}, Lcom/b/a/c/b/t;->a(Lcom/b/a/c/b/u;)Lcom/b/a/c/b/t;

    move-result-object v9

    iget-object v1, p0, Lcom/b/a/c/b/g;->f:Lcom/b/a/c/b/g$c;

    invoke-virtual {v1, v0, v10, v9}, Lcom/b/a/c/b/g$c;->a(Lcom/b/a/c/h;Lcom/b/a/c/l;Lcom/b/a/c/b/t;)V

    :cond_4
    return-object v9

    :pswitch_1
    new-instance v0, Lcom/b/a/c/b/w;

    iget-object v1, p0, Lcom/b/a/c/b/g;->a:Lcom/b/a/c/b/f;

    invoke-virtual {v1}, Lcom/b/a/c/b/f;->i()Lcom/b/a/c/b/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/c/b/g;->x:Lcom/b/a/c/h;

    iget-object v3, p0, Lcom/b/a/c/b/g;->i:Lcom/b/a/c/h;

    iget v4, p0, Lcom/b/a/c/b/g;->l:I

    iget v5, p0, Lcom/b/a/c/b/g;->m:I

    iget-object v8, p0, Lcom/b/a/c/b/g;->o:Lcom/b/a/c/j;

    invoke-direct/range {v0 .. v8}, Lcom/b/a/c/b/w;-><init>(Lcom/b/a/c/b/a/b;Lcom/b/a/c/h;Lcom/b/a/c/h;IILcom/b/a/c/m;Ljava/lang/Class;Lcom/b/a/c/j;)V

    goto :goto_3

    :cond_5
    move-object v9, p2

    move-object v6, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/b/a/c/h;Ljava/lang/Exception;Lcom/b/a/c/a/d;Lcom/b/a/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/h;",
            "Ljava/lang/Exception;",
            "Lcom/b/a/c/a/d",
            "<*>;",
            "Lcom/b/a/c/a;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lcom/b/a/c/a/d;->b()V

    new-instance v0, Lcom/b/a/c/b/p;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/b/a/c/b/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Lcom/b/a/c/a/d;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lcom/b/a/c/b/p;->a(Lcom/b/a/c/h;Lcom/b/a/c/a;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/b/a/c/b/g;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/g;->w:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/b/a/c/b/g$f;->b:Lcom/b/a/c/b/g$f;

    iput-object v0, p0, Lcom/b/a/c/b/g;->s:Lcom/b/a/c/b/g$f;

    iget-object v0, p0, Lcom/b/a/c/b/g;->p:Lcom/b/a/c/b/g$a;

    invoke-interface {v0, p0}, Lcom/b/a/c/b/g$a;->a(Lcom/b/a/c/b/g;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/b/a/c/b/g;->k()V

    goto :goto_0
.end method

.method public a(Lcom/b/a/c/h;Ljava/lang/Object;Lcom/b/a/c/a/d;Lcom/b/a/c/a;Lcom/b/a/c/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/h;",
            "Ljava/lang/Object;",
            "Lcom/b/a/c/a/d",
            "<*>;",
            "Lcom/b/a/c/a;",
            "Lcom/b/a/c/h;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/c/b/g;->x:Lcom/b/a/c/h;

    iput-object p2, p0, Lcom/b/a/c/b/g;->z:Ljava/lang/Object;

    iput-object p3, p0, Lcom/b/a/c/b/g;->B:Lcom/b/a/c/a/d;

    iput-object p4, p0, Lcom/b/a/c/b/g;->A:Lcom/b/a/c/a;

    iput-object p5, p0, Lcom/b/a/c/b/g;->y:Lcom/b/a/c/h;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/g;->w:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/b/a/c/b/g$f;->c:Lcom/b/a/c/b/g$f;

    iput-object v0, p0, Lcom/b/a/c/b/g;->s:Lcom/b/a/c/b/g$f;

    iget-object v0, p0, Lcom/b/a/c/b/g;->p:Lcom/b/a/c/b/g$a;

    invoke-interface {v0, p0}, Lcom/b/a/c/b/g$a;->a(Lcom/b/a/c/b/g;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DecodeJob.decodeFromRetrievedData"

    invoke-static {v0}, Lcom/b/a/i/a/b;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/b/a/c/b/g;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/b/a/i/a/b;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/b/a/i/a/b;->a()V

    throw v0
.end method

.method a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/g;->g:Lcom/b/a/c/b/g$e;

    invoke-virtual {v0, p1}, Lcom/b/a/c/b/g$e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/c/b/g;->g()V

    :cond_0
    return-void
.end method

.method a()Z
    .locals 2

    sget-object v0, Lcom/b/a/c/b/g$g;->a:Lcom/b/a/c/b/g$g;

    invoke-direct {p0, v0}, Lcom/b/a/c/b/g;->a(Lcom/b/a/c/b/g$g;)Lcom/b/a/c/b/g$g;

    move-result-object v0

    sget-object v1, Lcom/b/a/c/b/g$g;->b:Lcom/b/a/c/b/g$g;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/b/a/c/b/g$g;->c:Lcom/b/a/c/b/g$g;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/b/g;->E:Z

    iget-object v0, p0, Lcom/b/a/c/b/g;->C:Lcom/b/a/c/b/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/b/a/c/b/e;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/b/a/c/b/g$f;->b:Lcom/b/a/c/b/g$f;

    iput-object v0, p0, Lcom/b/a/c/b/g;->s:Lcom/b/a/c/b/g$f;

    iget-object v0, p0, Lcom/b/a/c/b/g;->p:Lcom/b/a/c/b/g$a;

    invoke-interface {v0, p0}, Lcom/b/a/c/b/g$a;->a(Lcom/b/a/c/b/g;)V

    return-void
.end method

.method public c_()Lcom/b/a/i/a/c;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/g;->c:Lcom/b/a/i/a/c;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/b/a/c/b/g;

    invoke-virtual {p0, p1}, Lcom/b/a/c/b/g;->a(Lcom/b/a/c/b/g;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    const-string v0, "DecodeJob#run(model=%s)"

    iget-object v1, p0, Lcom/b/a/c/b/g;->v:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/i/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/b/a/c/b/g;->B:Lcom/b/a/c/a/d;

    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/c/b/g;->E:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/b/a/c/b/g;->l()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/b/a/c/a/d;->b()V

    :cond_0
    invoke-static {}, Lcom/b/a/i/a/b;->a()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/b/a/c/b/g;->i()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/b/a/c/a/d;->b()V

    :cond_2
    invoke-static {}, Lcom/b/a/i/a/b;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "DecodeJob"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "DecodeJob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/b/a/c/b/g;->E:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v2, p0, Lcom/b/a/c/b/g;->r:Lcom/b/a/c/b/g$g;

    sget-object v3, Lcom/b/a/c/b/g$g;->e:Lcom/b/a/c/b/g$g;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/b/a/c/b/g;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/b/a/c/b/g;->l()V

    :cond_4
    iget-boolean v2, p0, Lcom/b/a/c/b/g;->E:Z

    if-nez v2, :cond_6

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/b/a/c/a/d;->b()V

    :cond_5
    invoke-static {}, Lcom/b/a/i/a/b;->a()V

    throw v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/b/a/c/a/d;->b()V

    :cond_7
    invoke-static {}, Lcom/b/a/i/a/b;->a()V

    goto :goto_0
.end method

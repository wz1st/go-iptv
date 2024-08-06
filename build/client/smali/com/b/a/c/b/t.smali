.class final Lcom/b/a/c/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/u;
.implements Lcom/b/a/i/a/a$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/b/u",
        "<TZ;>;",
        "Lcom/b/a/i/a/a$c;"
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/e/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l$a",
            "<",
            "Lcom/b/a/c/b/t",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/b/a/i/a/c;

.field private c:Lcom/b/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/u",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-instance v1, Lcom/b/a/c/b/t$1;

    invoke-direct {v1}, Lcom/b/a/c/b/t$1;-><init>()V

    invoke-static {v0, v1}, Lcom/b/a/i/a/a;->b(ILcom/b/a/i/a/a$a;)Landroid/support/v4/e/l$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/c/b/t;->a:Landroid/support/v4/e/l$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/b/a/i/a/c;->a()Lcom/b/a/i/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/t;->b:Lcom/b/a/i/a/c;

    return-void
.end method

.method static a(Lcom/b/a/c/b/u;)Lcom/b/a/c/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/c/b/u",
            "<TZ;>;)",
            "Lcom/b/a/c/b/t",
            "<TZ;>;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/c/b/t;->a:Landroid/support/v4/e/l$a;

    invoke-interface {v0}, Landroid/support/v4/e/l$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/t;

    invoke-static {v0}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/t;

    invoke-direct {v0, p0}, Lcom/b/a/c/b/t;->b(Lcom/b/a/c/b/u;)V

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/c/b/t;->c:Lcom/b/a/c/b/u;

    sget-object v0, Lcom/b/a/c/b/t;->a:Landroid/support/v4/e/l$a;

    invoke-interface {v0, p0}, Landroid/support/v4/e/l$a;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/b/a/c/b/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/c/b/t;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/b/t;->d:Z

    iput-object p1, p0, Lcom/b/a/c/b/t;->c:Lcom/b/a/c/b/u;

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/b/t;->b:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    iget-boolean v0, p0, Lcom/b/a/c/b/t;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/b/a/c/b/t;->d:Z

    iget-boolean v0, p0, Lcom/b/a/c/b/t;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/c/b/t;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
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

    iget-object v0, p0, Lcom/b/a/c/b/t;->c:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public c_()Lcom/b/a/i/a/c;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/t;->b:Lcom/b/a/i/a/c;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/t;->c:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/t;->c:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->e()I

    move-result v0

    return v0
.end method

.method public declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c/b/t;->b:Lcom/b/a/i/a/c;

    invoke-virtual {v0}, Lcom/b/a/i/a/c;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/c/b/t;->e:Z

    iget-boolean v0, p0, Lcom/b/a/c/b/t;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/t;->c:Lcom/b/a/c/b/u;

    invoke-interface {v0}, Lcom/b/a/c/b/u;->f()V

    invoke-direct {p0}, Lcom/b/a/c/b/t;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class Lcom/b/a/c/b/g$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/b/a/c/h;

.field private b:Lcom/b/a/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/l",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private c:Lcom/b/a/c/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/b/t",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/b/a/c/b/g$d;Lcom/b/a/c/j;)V
    .locals 5

    const-string v0, "DecodeJob.encode"

    invoke-static {v0}, Lcom/b/a/i/a/b;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/b/a/c/b/g$d;->a()Lcom/b/a/c/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/g$c;->a:Lcom/b/a/c/h;

    new-instance v2, Lcom/b/a/c/b/d;

    iget-object v3, p0, Lcom/b/a/c/b/g$c;->b:Lcom/b/a/c/l;

    iget-object v4, p0, Lcom/b/a/c/b/g$c;->c:Lcom/b/a/c/b/t;

    invoke-direct {v2, v3, v4, p2}, Lcom/b/a/c/b/d;-><init>(Lcom/b/a/c/d;Ljava/lang/Object;Lcom/b/a/c/j;)V

    invoke-interface {v0, v1, v2}, Lcom/b/a/c/b/b/a;->a(Lcom/b/a/c/h;Lcom/b/a/c/b/b/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/b/a/c/b/g$c;->c:Lcom/b/a/c/b/t;

    invoke-virtual {v0}, Lcom/b/a/c/b/t;->a()V

    invoke-static {}, Lcom/b/a/i/a/b;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/a/c/b/g$c;->c:Lcom/b/a/c/b/t;

    invoke-virtual {v1}, Lcom/b/a/c/b/t;->a()V

    invoke-static {}, Lcom/b/a/i/a/b;->a()V

    throw v0
.end method

.method a(Lcom/b/a/c/h;Lcom/b/a/c/l;Lcom/b/a/c/b/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/c/h;",
            "Lcom/b/a/c/l",
            "<TX;>;",
            "Lcom/b/a/c/b/t",
            "<TX;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/c/b/g$c;->a:Lcom/b/a/c/h;

    iput-object p2, p0, Lcom/b/a/c/b/g$c;->b:Lcom/b/a/c/l;

    iput-object p3, p0, Lcom/b/a/c/b/g$c;->c:Lcom/b/a/c/b/t;

    return-void
.end method

.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/g$c;->c:Lcom/b/a/c/b/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/c/b/g$c;->a:Lcom/b/a/c/h;

    iput-object v0, p0, Lcom/b/a/c/b/g$c;->b:Lcom/b/a/c/l;

    iput-object v0, p0, Lcom/b/a/c/b/g$c;->c:Lcom/b/a/c/b/t;

    return-void
.end method

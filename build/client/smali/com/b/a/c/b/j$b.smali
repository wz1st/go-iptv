.class Lcom/b/a/c/b/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/b/a/c/b/c/a;

.field final b:Lcom/b/a/c/b/c/a;

.field final c:Lcom/b/a/c/b/c/a;

.field final d:Lcom/b/a/c/b/c/a;

.field final e:Lcom/b/a/c/b/l;

.field final f:Landroid/support/v4/e/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/l$a",
            "<",
            "Lcom/b/a/c/b/k",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/c/a;Lcom/b/a/c/b/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x96

    new-instance v1, Lcom/b/a/c/b/j$b$1;

    invoke-direct {v1, p0}, Lcom/b/a/c/b/j$b$1;-><init>(Lcom/b/a/c/b/j$b;)V

    invoke-static {v0, v1}, Lcom/b/a/i/a/a;->a(ILcom/b/a/i/a/a$a;)Landroid/support/v4/e/l$a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/j$b;->f:Landroid/support/v4/e/l$a;

    iput-object p1, p0, Lcom/b/a/c/b/j$b;->a:Lcom/b/a/c/b/c/a;

    iput-object p2, p0, Lcom/b/a/c/b/j$b;->b:Lcom/b/a/c/b/c/a;

    iput-object p3, p0, Lcom/b/a/c/b/j$b;->c:Lcom/b/a/c/b/c/a;

    iput-object p4, p0, Lcom/b/a/c/b/j$b;->d:Lcom/b/a/c/b/c/a;

    iput-object p5, p0, Lcom/b/a/c/b/j$b;->e:Lcom/b/a/c/b/l;

    return-void
.end method


# virtual methods
.method a(Lcom/b/a/c/h;ZZZZ)Lcom/b/a/c/b/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/c/h;",
            "ZZZZ)",
            "Lcom/b/a/c/b/k",
            "<TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/b/j$b;->f:Landroid/support/v4/e/l$a;

    invoke-interface {v0}, Landroid/support/v4/e/l$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/k;

    invoke-static {v0}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/b/k;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/c/b/k;->a(Lcom/b/a/c/h;ZZZZ)Lcom/b/a/c/b/k;

    move-result-object v0

    return-object v0
.end method

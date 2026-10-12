.class final Lcom/g/a/c/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/a/a;


# instance fields
.field final synthetic a:Lcom/g/a/c/c/k;


# direct methods
.method constructor <init>(Lcom/g/a/c/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/c/l;->a:Lcom/g/a/c/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/g/a/c/c/l;->a:Lcom/g/a/c/c/k;

    invoke-virtual {v0}, Lcom/g/a/c/c/k;->m()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/g/a/c/c/l;->a:Lcom/g/a/c/c/k;

    invoke-static {v0, p1}, Lcom/g/a/c/c/k;->a(Lcom/g/a/c/c/k;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/g/a/c/c/l;->a:Lcom/g/a/c/c/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/g/a/c/c/k;->o:Z

    iget-object v0, p0, Lcom/g/a/c/c/l;->a:Lcom/g/a/c/c/k;

    invoke-virtual {v0}, Lcom/g/a/c/c/k;->h()V

    goto :goto_0
.end method

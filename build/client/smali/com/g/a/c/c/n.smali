.class final Lcom/g/a/c/c/n;
.super Lcom/g/a/a/c$a;


# instance fields
.field final synthetic a:Lcom/g/a/c/c/k;


# direct methods
.method constructor <init>(Lcom/g/a/c/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/c/n;->a:Lcom/g/a/c/c/k;

    invoke-direct {p0}, Lcom/g/a/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/g/a/i;Lcom/g/a/h;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/g/a/a/c$a;->a(Lcom/g/a/i;Lcom/g/a/h;)V

    iget-object v0, p0, Lcom/g/a/c/c/n;->a:Lcom/g/a/c/c/k;

    iget-object v0, v0, Lcom/g/a/c/c/k;->d:Lcom/g/a/f;

    invoke-interface {v0}, Lcom/g/a/f;->c()V

    return-void
.end method

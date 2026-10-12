.class final Lcom/g/a/d/d;
.super Lcom/g/a/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/g/a/b/g",
        "<",
        "Lcom/g/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/g/a/i;

.field final synthetic b:Lcom/g/a/d/a;


# direct methods
.method constructor <init>(Lcom/g/a/d/a;Lcom/g/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/d/d;->b:Lcom/g/a/d/a;

    iput-object p2, p0, Lcom/g/a/d/d;->a:Lcom/g/a/i;

    invoke-direct {p0}, Lcom/g/a/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/g/a/d/d;->a:Lcom/g/a/i;

    invoke-interface {v0}, Lcom/g/a/i;->c()V

    return-void
.end method

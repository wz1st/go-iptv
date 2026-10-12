.class final Lcom/g/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/g/a/h;

.field final synthetic b:Z

.field final synthetic c:Lcom/g/a/g;


# direct methods
.method constructor <init>(Lcom/g/a/g;Lcom/g/a/h;Z)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/w;->c:Lcom/g/a/g;

    iput-object p2, p0, Lcom/g/a/w;->a:Lcom/g/a/h;

    iput-boolean p3, p0, Lcom/g/a/w;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/g/a/w;->c:Lcom/g/a/g;

    iget-object v1, p0, Lcom/g/a/w;->a:Lcom/g/a/h;

    iget-boolean v2, p0, Lcom/g/a/w;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/g/a/g;->a(Lcom/g/a/h;Z)V

    return-void
.end method

.class final Lcom/g/a/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/g/a/h;

.field final synthetic b:Lcom/g/a/b;


# direct methods
.method constructor <init>(Lcom/g/a/b;Lcom/g/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/al;->b:Lcom/g/a/b;

    iput-object p2, p0, Lcom/g/a/al;->a:Lcom/g/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/g/a/al;->b:Lcom/g/a/b;

    iget-object v1, p0, Lcom/g/a/al;->a:Lcom/g/a/h;

    invoke-virtual {v0, v1}, Lcom/g/a/b;->a(Lcom/g/a/h;)V

    return-void
.end method

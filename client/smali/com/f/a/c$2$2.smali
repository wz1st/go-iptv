.class Lcom/f/a/c$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/f/a/c$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/f/a/c$2;


# direct methods
.method constructor <init>(Lcom/f/a/c$2;)V
    .locals 0

    iput-object p1, p0, Lcom/f/a/c$2$2;->a:Lcom/f/a/c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/f/a/c$2$2;->a:Lcom/f/a/c$2;

    iget-object v0, v0, Lcom/f/a/c$2;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/f/a/c$2$2;->a:Lcom/f/a/c$2;

    iget-object v0, v0, Lcom/f/a/c$2;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/f/a/c$2$2;->a:Lcom/f/a/c$2;

    iget-object v1, v1, Lcom/f/a/c$2;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

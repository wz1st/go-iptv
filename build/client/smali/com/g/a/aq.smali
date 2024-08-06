.class final Lcom/g/a/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ljava/util/concurrent/Semaphore;

.field final synthetic c:Lcom/g/a/d;


# direct methods
.method constructor <init>(Lcom/g/a/d;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/aq;->c:Lcom/g/a/d;

    iput-object p2, p0, Lcom/g/a/aq;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/g/a/aq;->b:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/g/a/aq;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/g/a/aq;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.class final La/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, La/a/e;->a:Ljava/lang/String;

    iput-boolean p2, p0, La/a/e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, La/a/e;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-boolean v1, p0, La/a/e;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

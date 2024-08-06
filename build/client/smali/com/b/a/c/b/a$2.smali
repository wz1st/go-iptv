.class Lcom/b/a/c/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/c/b/a;->b()Ljava/lang/ref/ReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/b/a;


# direct methods
.method constructor <init>(Lcom/b/a/c/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/c/b/a$2;->a:Lcom/b/a/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/b/a/c/b/a$2;->a:Lcom/b/a/c/b/a;

    invoke-virtual {v0}, Lcom/b/a/c/b/a;->a()V

    return-void
.end method

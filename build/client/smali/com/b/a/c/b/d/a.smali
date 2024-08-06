.class public final Lcom/b/a/c/b/d/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/b/a/c/b/b/h;

.field private final b:Lcom/b/a/c/b/a/e;

.field private final c:Lcom/b/a/c/b;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/b/a/c/b/b/h;Lcom/b/a/c/b/a/e;Lcom/b/a/c/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/b/a/c/b/d/a;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/b/a/c/b/d/a;->a:Lcom/b/a/c/b/b/h;

    iput-object p2, p0, Lcom/b/a/c/b/d/a;->b:Lcom/b/a/c/b/a/e;

    iput-object p3, p0, Lcom/b/a/c/b/d/a;->c:Lcom/b/a/c/b;

    return-void
.end method

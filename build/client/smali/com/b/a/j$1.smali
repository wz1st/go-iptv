.class Lcom/b/a/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/j;


# direct methods
.method constructor <init>(Lcom/b/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/j$1;->a:Lcom/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/j$1;->a:Lcom/b/a/j;

    iget-object v0, v0, Lcom/b/a/j;->c:Lcom/b/a/d/h;

    iget-object v1, p0, Lcom/b/a/j$1;->a:Lcom/b/a/j;

    invoke-interface {v0, v1}, Lcom/b/a/d/h;->a(Lcom/b/a/d/i;)V

    return-void
.end method

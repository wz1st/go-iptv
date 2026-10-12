.class Lcom/b/a/c/d/a/t$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/d/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/d/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/d/a/r;

.field private final b:Lcom/b/a/i/d;


# direct methods
.method constructor <init>(Lcom/b/a/c/d/a/r;Lcom/b/a/i/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/d/a/t$a;->a:Lcom/b/a/c/d/a/r;

    iput-object p2, p0, Lcom/b/a/c/d/a/t$a;->b:Lcom/b/a/i/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/a/t$a;->a:Lcom/b/a/c/d/a/r;

    invoke-virtual {v0}, Lcom/b/a/c/d/a/r;->a()V

    return-void
.end method

.method public a(Lcom/b/a/c/b/a/e;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/d/a/t$a;->b:Lcom/b/a/i/d;

    invoke-virtual {v0}, Lcom/b/a/i/d;->a()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lcom/b/a/c/b/a/e;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.class public final Lcom/b/a/c/d/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/d/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/d/f/e",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/b/a/e;

.field private final b:Lcom/b/a/c/d/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/d/f/e",
            "<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/c/d/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/d/f/e",
            "<",
            "Lcom/b/a/c/d/e/c;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/c/b/a/e;Lcom/b/a/c/d/f/e;Lcom/b/a/c/d/f/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/a/e;",
            "Lcom/b/a/c/d/f/e",
            "<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lcom/b/a/c/d/f/e",
            "<",
            "Lcom/b/a/c/d/e/c;",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/d/f/c;->a:Lcom/b/a/c/b/a/e;

    iput-object p2, p0, Lcom/b/a/c/d/f/c;->b:Lcom/b/a/c/d/f/e;

    iput-object p3, p0, Lcom/b/a/c/d/f/c;->c:Lcom/b/a/c/d/f/e;

    return-void
.end method

.method private static a(Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/b/a/c/b/u",
            "<",
            "Lcom/b/a/c/d/e/c;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public a(Lcom/b/a/c/b/u;Lcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/b/u",
            "<[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/b/a/c/b/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/d/f/c;->b:Lcom/b/a/c/d/f/e;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/c/d/f/c;->a:Lcom/b/a/c/b/a/e;

    invoke-static {v0, v2}, Lcom/b/a/c/d/a/d;->a(Landroid/graphics/Bitmap;Lcom/b/a/c/b/a/e;)Lcom/b/a/c/d/a/d;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/b/a/c/d/f/e;->a(Lcom/b/a/c/b/u;Lcom/b/a/c/j;)Lcom/b/a/c/b/u;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, v0, Lcom/b/a/c/d/e/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c/d/f/c;->c:Lcom/b/a/c/d/f/e;

    invoke-static {p1}, Lcom/b/a/c/d/f/c;->a(Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/b/a/c/d/f/e;->a(Lcom/b/a/c/b/u;Lcom/b/a/c/j;)Lcom/b/a/c/b/u;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

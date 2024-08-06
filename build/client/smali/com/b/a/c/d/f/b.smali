.class public Lcom/b/a/c/d/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/d/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/d/f/e",
        "<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/b/a/c/d/f/b;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b/u;Lcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/d/f/b;->a:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/b/a/c/d/a/q;->a(Landroid/content/res/Resources;Lcom/b/a/c/b/u;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
.end method
